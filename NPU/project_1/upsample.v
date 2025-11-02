`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/30 13:47:14
// Design Name: 
// Module Name: upsampling
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


module upsampling #(
    parameter INPUT_BW      = 8,
    parameter ADDR_IN       = 20,           // 2^20 = 1,048,576 > 34x34x512 = 591,872 (HWC)
    parameter ADDR_OUT      = 15            // 2^15 = 32,768 > 32x32x32 = 32,768
    )(
    input  wire                   clk,
    input  wire                   resetn,
    input  wire                   start,
    output wire                   done,

    // input mem (read-only)
    output wire                   in_en,
    output wire [ADDR_IN-1:0]     in_addr,
    input  wire [INPUT_BW-1:0]    din,

    input wire [9:0]               IC,          // total input/output channel (MAX: 256) 
    input wire [5:0]               IMG_W,       // output IMG_W
    input wire [5:0]               IMG_H,       // output IMG_H

    // output mem (write-only)
    output wire                   out_en,
    output wire                   out_we,
    output wire [ADDR_OUT-1:0]    out_addr,
    output wire [INPUT_BW-1:0]    dout
    );
    
    // ------------------------------------------------------------
    // Derived constants
    // ------------------------------------------------------------
    
    // OUT_SIZExChannel must be smaller than 32x32x256 
    wire [5:0] INPUT_W = (IMG_W >> 1);
    wire [5:0] INPUT_H = (IMG_H >> 1);

    wire [10:0] IN_SIZE  = INPUT_H  * INPUT_W;       // per-channel elements
    wire [10:0] OUT_SIZE = IMG_W * IMG_H;            // per-channel elements, MAX: 32x32

    // ------------------------------------------------------------
    // FSM Definition
    // ------------------------------------------------------------ 
    localparam IDLE     = 3'd0;
    localparam READ     = 3'd1;
    localparam WRITE    = 3'd2;
    localparam NEXT     = 3'd3;
    localparam DONE     = 3'd4;
    
    reg [2:0] state, n_state; 
    
    reg [1:0]           subpix_cnt;     // 0, 1, 2, 3 
    reg [INPUT_BW-1:0]  pix_value;            // latched input pixel 
    
    reg [5:0] c;          // input col
    reg [5:0] r;          // input row
    reg [9:0] ch;         // input ch

    // out_base = (2r)*(2W) + (2c) (without channel offset)
    wire [ADDR_OUT-1:0] out_base =  ((r << 1) * (IMG_W) + (c << 1));

    // channel offsets
    wire [ADDR_IN-1:0]  ch_in_base  = ch * IN_SIZE;
    wire [ADDR_OUT-1:0] ch_out_base = ch * OUT_SIZE;

    // ------------------------------------------------------------
    // Main FSM
    // ------------------------------------------------------------
    always @(posedge clk or negedge resetn) begin
        if(~resetn) state <= IDLE;
        else state <= n_state;
    end
    
    always @(*) begin
        case(state)
            IDLE: begin 
                if(start) begin
                                                                    n_state = READ;
                end
            end
            READ: begin 
                                                                    n_state = WRITE;
            end
            WRITE: begin
                if(subpix_cnt==2'd3)                                n_state = NEXT;
                else                                                n_state = WRITE;
            end
            NEXT: begin
                if(c == INPUT_W-1 && r == INPUT_H-1 && ch == IC-1)  n_state = DONE;
                else                                                n_state = READ;
            end
            DONE: begin
                                                                    n_state = IDLE;
            end
            default :                                              n_state = IDLE;
        endcase
     end
    
    
    // ------------------------------------------------------------
    // Read from current in_addr & Write to 4 other output pixels
    // it is fixed to scaling factor of 2
    // ------------------------------------------------------------
    reg                 in_en_reg;
    reg [ADDR_IN-1:0]   in_addr_reg;

    reg                 out_en_reg;
    reg                 out_we_reg;
    reg [ADDR_OUT-1:0]  out_addr_reg;
    reg [INPUT_BW-1:0]  dout_reg;
    
    always @(posedge clk or negedge resetn) begin
        if(!resetn) begin
            r               <= 0; 
            c               <= 0; 
            ch              <= 0;
            subpix_cnt      <= 0;
            pix_value       <= 0; 
            
            in_en_reg       <= 0;
            in_addr_reg     <= 0 ;
            
            out_en_reg      <= 0; 
            out_we_reg      <= 0; 
            out_addr_reg    <= 0; 
            dout_reg        <= 0; 
        end 
        else begin
            case(state)
                READ: begin
                    in_en_reg   <= 1'b1;
                    in_addr_reg <= ch_in_base + r*INPUT_W + c;
                    subpix_cnt  <= 0;
                end
                
                WRITE: begin
                    out_en_reg  <= 1'b1;
                    out_we_reg  <= 1'b1;
                
                    case(subpix_cnt) // address for each of the 4 writes (2x2)
                        2'd0: out_addr_reg <= ch_out_base + out_base;                   // (2r,2c)
                        2'd1: out_addr_reg <= ch_out_base + out_base + 1;               // (2r,2c+1)
                        2'd2: out_addr_reg <= ch_out_base + out_base + (IMG_W);         // (2r+1,2c)
                        2'd3: out_addr_reg <= ch_out_base + out_base + (IMG_W) + 1;     // (2r+1,2c+1)
                    endcase
        
                    if (subpix_cnt == 2'd0) begin
                        pix_value   <= din;   // latch
                        dout_reg    <= din;   // first write uses current din
                    end 
                    else begin
                        dout_reg    <= pix_value;   // reuse latched pixel for remaining 3 writes
                    end
                    
                    subpix_cnt <= subpix_cnt + 2'd1;
                end
            
                NEXT: begin
                    // compute proper c , r , ch values for next pixel value
                    if (c == IMG_W-1) begin
                        c <= 0;
                        if (r == IMG_H-1) begin
                            r <= 0;
                            if (ch == IC-1) ch <= 0;
                            else            ch <= ch + 1;
                        end 
                        else                r <= r + 1;
                    end 
                    else                    c <= c + 1;
                end
                default : begin
                    r <= 0; 
                    c <= 0; 
                    ch <= 0;
                    
                    in_en_reg   <= 0; 
                    out_en_reg  <= 0; 
                    out_we_reg  <= 0;
                    
                    subpix_cnt  <= 0; 
                end
            endcase
        end
    end
    
    assign done = (state==IDLE || state==DONE);
endmodule