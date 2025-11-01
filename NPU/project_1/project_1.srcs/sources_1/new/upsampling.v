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
    parameter INPUT_BW = 8, 
    parameter IN_W = 20,
    parameter IN_H = 20,
    parameter IC = 512,
    parameter ADDR_IN = $clog2(IN_W*IN_H*IC),
    parameter  ADDR_OUT = $clog2(2*IN_W*2*IN_H*IC)
    )(
    input  wire                   clk,
    input  wire                   resetn,
    input  wire                   start,
    output reg                    done,

    // 입력 메모리 (read-only)
    output reg                    in_en,
    output reg  [ADDR_IN-1:0]     in_addr,
    input  wire [INPUT_BW-1:0]    din,

    // 출력 메모리 (write-only)
    output reg                    out_en,
    output reg                    out_we,
    output reg  [ADDR_OUT-1:0]    out_addr,
    output reg  [INPUT_BW-1:0]    dout
   
    );
    
    // ------------------------------------------------------------
    // Derived constants
    // ------------------------------------------------------------
    localparam OUT_W = (IN_W << 1);
    localparam OUT_H = (IN_H << 1);
    localparam IN_SIZE  = IN_W  * IN_H;         // per-channel elements
    localparam OUT_SIZE = OUT_W * OUT_H;        // per-channel elements

    // ------------------------------------------------------------
    // FSM Definition
    // ------------------------------------------------------------ 
    localparam IDLE= 3'd0; 
    localparam READ= 3'd1; 
    localparam WRITE= 3'd2;
    localparam NEXT= 3'd3;
    localparam DONE= 3'd4;
    
    reg [2:0] state;
    
    reg [1:0] subpix_cnt;              // 0, 1, 2, 3 
    reg [INPUT_BW-1:0] pix;            // latched input pixel 
        
    reg [$clog2(IN_W)-1:0] c;       // 입력 col
    reg [$clog2(IN_H)-1:0] r;       // 입력 row
    reg [$clog2(IC)-1:0] ch;        // 입력 ch
    

    // 선형주소 헬퍼: out_base = (2r)*(2W) + (2c) (without channel offset)
    wire [ADDR_OUT-1:0] out_base =  ( ( (r << 1) * (IN_W << 1) ) + (c << 1) );
   
      // channel offsets
    wire [ADDR_IN-1:0]  ch_in_base  = ch * IN_SIZE;
    wire [ADDR_OUT-1:0] ch_out_base = ch * OUT_SIZE;
   
    // ------------------------------------------------------------
    // Main FSM
    // ------------------------------------------------------------
    always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
        state <= IDLE; 
        r<=0; 
        c<=0; 
        ch<=0;
        subpix_cnt<=0;
        pix <= 0; 
        
        in_en<=0;  
        in_addr <= 0 ; 
        
        out_en<=0; 
        out_we<=0; 
        out_addr <= 0; 
        dout <= 0; 
        
        done<=0;
    end else begin
        in_en<=0; 
        out_en<=0; 
        out_we<=0; 
        done<=0;

    case(state)
      IDLE: begin  
        if(start) begin
            state<=READ;
            r <= 0 ; c <= 0; ch <= 0; 
        end
      end
        
      READ: begin
        // 동기 BRAM 가정: 주소 제시 → 다음 클럭에 데이터 유효
        in_en   <= 1'b1;
        in_addr <= ch_in_base + r*IN_W + c;
        subpix_cnt <= 0;
        state   <= WRITE;
      end

      WRITE: begin
        out_en  <= 1'b1;
        out_we <= 1'b1;
        
        
        case(subpix_cnt) // address for each of the 4 writes (2x2)
          2'd0: out_addr <= ch_out_base + out_base;                       // (2r,2c)
          2'd1: out_addr <= ch_out_base+ out_base + 1;                   // (2r,2c+1)
          2'd2: out_addr <= ch_out_base + out_base + (IN_W<<1);           // (2r+1,2c)
          2'd3: out_addr <= ch_out_base + out_base + (IN_W<<1) + 1;       // (2r+1,2c+1)
        endcase
       
         if (subpix_cnt == 2'd0) begin
                pix  <= din;   // latch
                dout <= din;   // first write uses current din
          end else begin
                dout <= pix;   // reuse latched pixel for remaining 3 writes
           end

        if(subpix_cnt==2'd3) begin
            state<=NEXT;
         end else begin  
            subpix_cnt <= subpix_cnt + 2'd1;
         end 
      end

      NEXT: begin
        // c , r , ch
            if (c == IN_W-1) begin
                        c <= 0;
                        if (r == IN_H-1) begin
                            r <= 0;
                            if (ch == IC-1) begin
                                state <= DONE;
                            end else begin
                                ch    <= ch + 1;
                                state <= READ;
                            end
                        end else begin
                            r     <= r + 1;
                            state <= READ;
                        end
                    end else begin
                        c     <= c + 1;
                        state <= READ;
                    end
                end

      DONE: begin 
            done<=1'b1; 
            state<=IDLE; 
      end
      
      default : state <= IDLE; 
      
      
      
    endcase
  end
end

endmodule
