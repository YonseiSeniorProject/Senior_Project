`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/27 15:55:02
// Design Name: 
// Module Name: maxpool
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//  Kernel : 5 , Padding : 2, Stride : 1
module maxpool#(  
    parameter ADDR_IN = 18,         // 20x20x512 = 204,800 > 2^18 (18bit¸é ÃæºÐ) 
    parameter ADDR_OUT = 18,        // ´Ù¸¥ core¶û Æø ¸ÂÃç¾ß ÇÏ³ª..? 
    parameter INPUT_BW = 8
    )(
    input  wire                     clk,
    input  wire                     resetn,
    // ------------------------------------------------------------------------
    // Start & Done Signals
    // ------------------------------------------------------------------------
    input wire                      start, 
    output reg                      done, 
    // ------------------------------------------------------------------------
    // Configurable Data
    // ------------------------------------------------------------------------
     input wire [9:0]               IC,         // total input channel (512) 
     input wire [5:0]               IMG_W,       // IMG_W
     input wire [5:0]               IMG_H,       // IMG_H
  // input wire [2:0]               K,
  // input  wire [2:0]              STRIDE,       // stride 
     
    // Input SRAM Interface 
    output reg                              in_en,
    output reg [ADDR_IN-1:0]                in_addr,
    input  wire signed [INPUT_BW-1:0]       din,
    
    // Output SRAM Interface
    output reg                      out_en,
    output reg                      out_we, 
    output reg [ADDR_OUT-1:0]       out_addr,
    output reg  signed [INPUT_BW-1:0]        dout
);

    // ------------------------------------------------------------
    // FSM Definition
    // ------------------------------------------------------------
    localparam IDLE   = 3'd0;
    localparam LOAD   = 3'd1;   // read 5x5 window
    localparam COMPUTE= 3'd2;   // find max over window
    localparam WRITE  = 3'd3;   // write output pixel
    localparam NEXT   = 3'd4;   // move to next pixel/channel
    localparam DONE   = 3'd5;
    
     reg [2:0] state, n_state; 
    
    always @(posedge clk or negedge resetn) begin
        if(!resetn) state <= IDLE;
        else        state <= n_state;
    end
    
    // ------------------------------------------------------------
    // Position counters
    // ------------------------------------------------------------
    reg [9:0] ch;               // CH = 512         9bit -> 10 bit for margin 
    reg [4:0] row, col;         // W, H = 0~19 
    wire [4:0] kr, kc;          // kernel index (dependent location within kernel) 
    
    //  5x5 window buffer
    reg signed [INPUT_BW-1:0] window [0:4][0:4];
    reg signed [INPUT_BW-1:0] max_val;
    reg [4:0] load_cnt; 
    
    // Address Computation (C H W)
    wire [ADDR_IN-1:0]  base_in  = ch * (IMG_W * IMG_H);
    wire [ADDR_OUT-1:0] base_out = ch * (IMG_W * IMG_H);
  // wire [ADDR_IN-1:0]  pix_addr = base_in + rr * IMG_W + cc;
    wire [ADDR_OUT-1:0] out_idx  = base_out + row * IMG_W + col;
       
    //  ---- 1-cycle delay token for LOAD pipeline ----
    reg        rd_valid_d1;
    reg  [4:0] kr_d1, kc_d1; 

    
    // ------------------------------------------------------------
    // FSM next state logic
    // ------------------------------------------------------------
    always @(*) begin
        n_state = state;
        case(state)
            IDLE:    if(start) n_state = LOAD;
            LOAD:    if(load_cnt == 25 && !rd_valid_d1) n_state = COMPUTE;
            COMPUTE: n_state = WRITE;
            WRITE:   n_state = NEXT;
            NEXT: begin
                if((ch == IC-1) && (row == IMG_H-1) && (col == IMG_W-1))
                    n_state = DONE;
                else
                    n_state = LOAD;
            end
            DONE:    n_state = IDLE;
        endcase
     end
    
    // ------------------------------------------------------------
    // FSM sequential logic
    // ------------------------------------------------------------
    assign  kr = load_cnt / 5;
    assign  kc = load_cnt % 5;
    
    integer i, j;
    wire signed [5:0] rr = $signed({1'b0,row}) + $signed({1'b0,kr}) - 6'sd2;
    wire signed [5:0] cc = $signed({1'b0,col}) + $signed({1'b0,kc}) - 6'sd2; 
    
     
    
    reg signed [INPUT_BW-1:0] temp_max; 
    always @(*) begin
        temp_max = window[0][0];
        for (i = 0; i < 5; i = i + 1) begin
            for (j = 0; j < 5; j = j + 1) begin
                if (window[i][j] > temp_max)
                    temp_max = window[i][j];
            end
        end
    end
    
    
     always @(posedge clk or negedge resetn) begin
        if(!resetn) begin
            in_en <= 0; 
            out_en <= 0; out_we <= 0;
            in_addr <= 0; out_addr <= 0;
            ch <= 0; row <= 0; col <= 0;
            done <= 0;
            load_cnt <= 0;
         end 
         else begin 
            done <= (state == DONE) ;
            case(state)
                IDLE: begin
                    ch <= 0;
                     
                    row <= 0; 
                    col <= 0;
    
                    load_cnt <= 0;
                    in_en <= 0;
                    out_en <= 0; out_we <= 0;
                    in_addr <= 0; 
                    out_addr <= 0;
                    dout <= 0; 
                    rd_valid_d1 <= 0; 
                                  
                end
                // READ 5x5 window sequentially (with padding)
                LOAD: begin
                   in_en <= 0;
                    // if read was pending form last cylce, capture its data into the winddow 
                     if (rd_valid_d1) begin  
                        window[kr_d1][kc_d1] <= din;   // `din` now has data from last cycle's in_addr
                        rd_valid_d1 <= 0;             // Clear the pending read flag
                    end
                    
                    if(load_cnt < 25) begin
                        // Padding check
                        if (rr < 0 || rr >= IMG_H || cc < 0 || cc >= IMG_W) begin                 
                            window[kr][kc] <= 0;
                        end 
                        else begin
                            in_addr <= base_in + rr * IMG_W + cc;
                            rd_valid_d1 <= 1; 
                            kr_d1 <= kr; 
                            kc_d1 <= kc;
                            in_en <= 1; 
                        end
                        load_cnt <= load_cnt + 1;
                    //end else begin
                      //  in_en <= 0;
                    end
                end
                
                // Compute max among 25 values
                COMPUTE: begin        
                      dout <= temp_max; 
                      in_en <= 0 ; 
                end
                // Write output
                WRITE: begin
                    out_en  <= 1;
                    out_we  <= 1;
                    out_addr <= out_idx;        // output address
                    //dout <= max_val;           // output value
                end
                // Move to Next pixel/channel (col -> row -> ch) 
                NEXT: begin
                    out_en <= 0; out_we <= 0;   
                    load_cnt <= 0;
    
                    if(col == IMG_W-1) begin
                        col <= 0;
                        if(row == IMG_H-1) begin
                            row <= 0;
                            if(ch == IC-1) ch <= 0;
                            else           ch <= ch + 1;
                        end else begin
                            row <= row + 1;
                        end
                    end else begin
                        col <= col + 1;
                    end
                end
                DONE: begin
                    out_en <= 0; out_we <= 0;
                end    
            endcase
        end
     end 
     
endmodule