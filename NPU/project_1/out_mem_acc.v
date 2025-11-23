
//`timescale 1ns / 1ps

//module out_mem_acc#(
//    // SRAM address widths (enough to cover depth)
//    parameter NUM_CORE      = 4,
//    parameter NUM_COLS      = 32,
//    parameter ADDR_IN       = 20,           // 2^20 = 1,048,576 > 34x34x512 = 591,872 (HWC)
//    parameter ADDR_W        = 18,           // 2^18 = 262,144 > 3x3x512x32 = 147,456 (KH, KW, IC, OC_tile)
//    parameter ADDR_OUT      = 15,           // 2^15 = 32,768 > 32x32x32 = 32,768
//    parameter ADDR_PSUM     = 12,
//    parameter INPUT_BW      = 8,            // 8bit Data comes from AXI interface
//    parameter OUTPUT_BW     = 8             // 8bit Data goes to AXI interface (after Fixed point Quantization)
//    )(
//    input wire clk,
//    input wire resetn,
//    // ------------------------------------------------------------------------
//    // Configurable Data
//    // ------------------------------------------------------------------------
//    input  wire start,
////    input  wire which_GLB,
//    input  wire [2:0] K,        // Max: 3
//    input  wire [9:0] IC,       // Max: 512
//    input  wire [5:0] IMG_H,    // Tile_Size_oc_H = 32
//    input  wire [5:0] IMG_W,    // Tile_Size_oc_W = 32
//    input  wire [7:0] OC,       // Tile_Size_oc = 64
//    input  wire [3:0] shift_n,  // Max: 7 or 8
//    input  wire [2:0] STRIDE,
////    output wire ready,
//    output wire done,
//    // ------------------------------------------------------------------------
//    // input image memory [port A (PS writes image in advance), port B (PL reads)]
//    // ------------------------------------------------------------------------
//    input wire                          input_clka_top,
//    input wire                          input_ena_top,
//    input wire                          input_wea_top,
//    input wire [ADDR_IN-1:0]            input_addra_top, 
//    input wire signed [INPUT_BW-1:0]    input_dina_top,
//    output wire signed [INPUT_BW-1:0]   input_douta_top,
//    // ------------------------------------------------------------------------
//    // Store Total Weights
//    // ------------------------------------------------------------------------
//    input  wire                             weight_clka_top,
//    input  wire                             weight_ena_top,
//    input  wire                             weight_wea_top,
//    input  wire [ADDR_W-1:0]                weight_addra_top,
//    input  wire signed [INPUT_BW-1:0]       weight_dina_top,
//    output wire signed [INPUT_BW-1:0]       weight_douta_top,
//    // ------------------------------------------------------------------------
//    // Store Output Logits
//    // ------------------------------------------------------------------------
//    input  wire                             output_clkb,
//    input  wire                             output_enb,
//    input  wire                             output_web,
//    input  wire [ADDR_PSUM-1:0]             output_addrb,
//    input  wire [NUM_COLS*OUTPUT_BW-1:0]    output_dinb,
//    output wire [NUM_COLS*OUTPUT_BW-1:0]    output_doutb
////    input  wire                             out_mem_clkb_top,
////    input  wire                             out_mem_enb_top,
////    input  wire                             out_mem_web_top,
////    input  wire [ADDR_OUT-1:0]              out_mem_addrb_top,
////    input  wire signed [OUTPUT_BW-1:0]      out_mem_dinb_top,
////    output wire signed [OUTPUT_BW-1:0]      out_mem_doutb_top
//    );
    
//    reg [NUM_COLS-1:0]         psum_row_mem_en_in_reg  [NUM_CORE-1:0];
//    reg [NUM_COLS-1:0]         psum_row_mem_en_in_reg_delay;
//    reg [NUM_COLS-1:0]         psum_row_mem_en_in_reg_delay2;
    
//    reg [ADDR_PSUM-1:0]        psum_row_mem_addr_in_reg[NUM_CORE-1:0];
//    reg [ADDR_PSUM-1:0]        psum_row_mem_addr_in_reg_delay[NUM_CORE-1:0];
//    reg [ADDR_PSUM-1:0]        psum_row_mem_addr_in_reg_delay2;
//    reg [ADDR_PSUM-1:0]        psum_row_mem_addr_in_reg_delay3;
    
//    generate
//        for (i = 0; i < NUM_CORE; i = i + 1) begin : gen_psum_row_mem_en
//            assign psum_row_mem_en_in[i] = psum_row_mem_en_in_reg[i];
//        end
//    endgenerate
//    generate
//        for (i = 0; i < NUM_CORE; i = i + 1) begin : gen_psum_row_mem_addr
//            assign psum_row_mem_addr_in[i] = psum_row_mem_addr_in_reg_delay[i];
//        end
//    endgenerate
    
    
//    wire signed [PSUM_BW-1:0]     out_row_data_in_b_quantize [NUM_COLS-1:0];
//    reg  signed [PSUM_BW-1:0]     out_row_data_in_b_quantize_reg [NUM_COLS-1:0];
    
//    wire signed [PSUM_BW-1:0]     psum_row_data_out_each   [NUM_CORE-1:0][NUM_COLS-1:0];
    
//    genvar r, c;
//    generate
//        for (r = 0; r < NUM_CORE; r = r + 1) begin : gen_psum_core
//            for (c = 0; c < NUM_COLS; c = c + 1) begin : gen_psum_cols
//                assign  psum_row_data_out_each[r][c] = psum_row_data_out[r][PSUM_BW*(c+1) - 1 : PSUM_BW*(c)];
//            end
//        end
//    endgenerate
    
//    genvar col, rr;
//    generate
//        for (col = 0; col < NUM_COLS; col = col + 1) begin : gen_col_sums
//            wire signed [PSUM_BW-1:0] partial [NUM_CORE-1:0];  // 부분 합 배열 (각 col마다 독립)
            
//            assign partial[0] = psum_row_data_out_each[0][col];
            
//            for (rr = 1; rr < NUM_CORE; rr = rr + 1) begin : gen_accum_add
//                assign partial[rr] = partial[rr-1] + psum_row_data_out_each[rr][col];
//            end
            
//            assign out_row_data_in_b_quantize[col] = partial[NUM_CORE-1];
//        end
//    endgenerate
    
//    integer k, m;
//    always @(posedge clk or negedge resetn) begin
//        if(~resetn) begin
//            for (k = 0; k < NUM_CORE; k = k + 1) begin
//                psum_row_mem_en_in_reg[k]   <= 0;
//                psum_row_mem_addr_in_reg[k] <= 0;
//            end
//            for (m = 0; m < NUM_COLS; m = m + 1) begin
//                out_row_data_in_b_quantize_reg[m] <= 0;
//            end
//        end
//        else begin
//            if(compute_done) begin
//                for (k = 0; k < NUM_CORE; k = k + 1) begin
//                    psum_row_mem_en_in_reg[k]   <= {NUM_COLS{1'b1}};
//                    psum_row_mem_addr_in_reg[k] <= psum_row_mem_addr_in_reg[k] + 1;
//                end
//                for (m = 0; m < NUM_COLS; m = m + 1) begin
//                    out_row_data_in_b_quantize_reg[m] <= out_row_data_in_b_quantize[m];
//                end
//            end
//            else begin
//                for (k = 0; k < NUM_CORE; k = k + 1) begin
//                    psum_row_mem_en_in_reg[k]   <= 0;
//                    psum_row_mem_addr_in_reg[k] <= 0;
//                end
//                for (m = 0; m < NUM_COLS; m = m + 1) begin
//                    out_row_data_in_b_quantize_reg[m] <= 0;
//                end
//            end
//        end 
//    end
    
//    always @(posedge clk or negedge resetn) begin
//        if(~resetn) begin
//            for (k = 0; k < NUM_CORE; k = k + 1) begin
//                psum_row_mem_addr_in_reg_delay[k] <= 0;
//            end
//        end
//        else begin
//            for (k = 0; k < NUM_CORE; k = k + 1) begin
//                psum_row_mem_addr_in_reg_delay[k] <= psum_row_mem_addr_in_reg[k];
//            end
//        end 
//    end
    
//    always @(posedge clk or negedge resetn) begin
//        if(~resetn) begin
//            psum_row_mem_en_in_reg_delay    <= 0;
//            psum_row_mem_en_in_reg_delay2   <= 0;
//            psum_row_mem_addr_in_reg_delay2 <= 0;
//            psum_row_mem_addr_in_reg_delay3 <= 0;
//        end
//        else begin
//            psum_row_mem_en_in_reg_delay    <= psum_row_mem_en_in_reg[0];
//            psum_row_mem_en_in_reg_delay2   <= psum_row_mem_en_in_reg_delay;
//            psum_row_mem_addr_in_reg_delay2 <= psum_row_mem_addr_in_reg_delay[0];
//            psum_row_mem_addr_in_reg_delay3 <= psum_row_mem_addr_in_reg_delay2;
//        end 
//    end
    
//    // ------------------------------------------------------------------------
//    // Clamp & ReLU Logic
//    // ------------------------------------------------------------------------
//    // Truncate 10 LSBs (maintains sign)
//    wire signed [PSUM_BW-1:0]       msb_data [NUM_COLS-1:0];
//    wire signed [OUTPUT_BW-1:0]     out_data [NUM_COLS-1:0];
//    generate
//        for (i = 0; i < NUM_COLS; i = i + 1) begin : gen_shift
//            assign msb_data[i] = out_row_data_in_b_quantize_reg[i] >>> shift_n;
//        end
//    endgenerate
    
//    // Clamp boundaries
//    localparam signed [OUTPUT_BW-1:0] MAX_VAL =  8'sd127;
//    localparam signed [OUTPUT_BW-1:0] MIN_VAL = -8'sd128;

//    // Clamp & ReLU with assign
//    generate
//        for (i = 0; i < NUM_COLS; i = i + 1) begin : gen_clamp
//            assign out_data[i] =   (msb_data[i] > MAX_VAL) ? MAX_VAL :
//                                    (msb_data[i] < 0) ? 0 :
//                                    msb_data[i][OUTPUT_BW-1:0];
//        end
//    endgenerate
    
//    // ------------------------------------------------------------------------
//    // Write to seperate 32 out_row_mems, 1 memory has 1 row of output[OC_0 : OC_MAX]
//    // ------------------------------------------------------------------------
//    wire [NUM_COLS-1:0]         out_row_mem_en;
//    wire [ADDR_PSUM-1:0]        out_row_mem_addr;
//    assign out_row_mem_en   = (out_row_mem_addr < (IMG_W*OC)) ? psum_row_mem_en_in_reg_delay2 : 0;
//    assign out_row_mem_addr = psum_row_mem_addr_in_reg_delay3;

//    wire [31:0] output_ena;
//    wire [31:0] output_wea;
//    wire [ADDR_PSUM-1:0] output_addra [31:0];
//    wire [OUTPUT_BW-1:0] output_dina [31:0];
//    wire [OUTPUT_BW-1:0] output_douta [31:0];
//    assign output_ena = out_row_mem_en;
//    assign output_wea = out_row_mem_en;
//    generate
//        for (i = 0; i < NUM_COLS; i = i + 1) begin : gen_out_addr
//            assign output_addra[i]  = out_row_mem_addr;
//            assign output_dina[i]   = out_data[i];
//        end
//    endgenerate
    
//    wire out_mem_acc_done;
//    assign out_mem_acc_done = (out_row_mem_addr >= IMG_W*OC);
    
//endmodule
