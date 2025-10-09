
`timescale 1ns / 1ps

module top#(
    // SRAM address widths (enough to cover depth)
    parameter ADDR_IN       = 20,           // 2^20 = 1,048,576 > 34x34x512 = 591,872 (HWC)
    parameter ADDR_W        = 18,           // 2^18 = 262,144 > 3x3x512x32 = 147,456 (KH, KW, IC, OC_tile)
    parameter ADDR_OUT      = 15,           // 2^15 = 32,768 > 32x32x32 = 32,768
    parameter INPUT_BW      = 8,            // 8bit Data comes from AXI interface
    parameter OUTPUT_BW     = 8             // 8bit Data goes to AXI interface (after Fixed point Quantization)
    )(
    input wire clk,
    input wire resetn,
    // ------------------------------------------------------------------------
    // Configurable Data
    // ------------------------------------------------------------------------
    input  wire start,
//    input  wire which_GLB,
    input  wire [2:0] K,        // Max: 3
    input  wire [9:0] IC,       // Max: 512
    input  wire [5:0] IMG_H,    // Tile_Size_oc_H = 32
    input  wire [5:0] IMG_W,    // Tile_Size_oc_W = 32
    input  wire [7:0] OC,       // Tile_Size_oc = 32
    input  wire [3:0] shift_n,  // Max: 7 or 8
    input  wire [2:0] STRIDE,
//    output wire ready,
    output wire done,
    // ------------------------------------------------------------------------
    // input image memory [port A (PS writes image in advance), port B (PL reads)]
    // ------------------------------------------------------------------------
    input wire                          input_clka_top,
    input wire                          input_ena_top,
    input wire                          input_wea_top,
    input wire [ADDR_IN-1:0]            input_addra_top, 
    input wire signed [INPUT_BW-1:0]    input_dina_top,
    output wire signed [INPUT_BW-1:0]   input_douta_top,
    // ------------------------------------------------------------------------
    // Store Total Weights
    // ------------------------------------------------------------------------
    input  wire                             weight_clka_top,
    input  wire                             weight_ena_top,
    input  wire                             weight_wea_top,
    input  wire [ADDR_W-1:0]                weight_addra_top,
    input  wire signed [INPUT_BW-1:0]       weight_dina_top,
    output wire signed [INPUT_BW-1:0]       weight_douta_top,
    // ------------------------------------------------------------------------
    // Store Output Logits
    // ------------------------------------------------------------------------
    input  wire                             out_mem_clkb_top,
    input  wire                             out_mem_enb_top,
    input  wire                             out_mem_web_top,
    input  wire [ADDR_OUT-1:0]              out_mem_addrb_top,
    input  wire signed [OUTPUT_BW-1:0]      out_mem_dinb_top,
    output wire signed [OUTPUT_BW-1:0]      out_mem_doutb_top
    );
    // ------------------------------------------------------------------------
    // IF MAP & TOTAL WEIGHT MEM B-ports (READ), OUT MEM A-ports (WRITE)
    // ------------------------------------------------------------------------
    wire                            input_enb_top;
    wire                            input_web_top;
    wire [ADDR_IN-1:0]              input_addrb_top;
    wire signed [INPUT_BW-1:0]      input_dinb_top;
    wire signed [INPUT_BW-1:0]      input_doutb_top;
    
    wire                            weight_enb_top;
    wire                            weight_web_top;
    wire [ADDR_W-1:0]               weight_addrb_top;
    wire signed [INPUT_BW-1:0]      weight_dinb_top;
    wire signed [INPUT_BW-1:0]      weight_doutb_top;
    
    wire                            out_mem_ena_top;
    wire                            out_mem_wea_top;
    wire [ADDR_OUT-1:0]             out_mem_addra_top;
    wire signed [OUTPUT_BW-1:0]     out_mem_dina_top;
    wire signed [OUTPUT_BW-1:0]     out_mem_douta_top;
    
    /***** FSM for top.v state *****/
    reg [2:0] state, n_state;
    
    localparam IDLE     = 3'd0;
    localparam WORKING  = 3'd1;
    localparam DONE     = 3'd2;
    
    // ------------------------------------------------------------------------
    // double_buf_ctrl 
    // ------------------------------------------------------------------------
    // counter for PL to find the idx of GLB
    wire    double_buf_cnt_for_ps;
    reg     double_buf_cnt;
    
    reg done_delay;
    always @(posedge clk or negedge resetn) begin
        if(~resetn) done_delay <= 0;
        else        done_delay <= done;
    end
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) double_buf_cnt <= 0;
        else begin
            if(done!=done_delay)    double_buf_cnt <= ~double_buf_cnt;
            else                    double_buf_cnt <= double_buf_cnt;
        end
    end
    
    assign double_buf_cnt_for_ps = (state == WORKING) ? ~double_buf_cnt : double_buf_cnt;
    
    wire                            input_ena_0;
    wire                            input_wea_0;
    wire [ADDR_IN-1:0]              input_addra_0; 
    wire signed [INPUT_BW-1:0]      input_dina_0;
    wire signed [INPUT_BW-1:0]      input_douta_0;
    wire                            input_enb_0;
    wire                            input_web_0;
    wire [ADDR_IN-1:0]              input_addrb_0;
    wire signed [INPUT_BW-1:0]      input_dinb_0;
    wire signed [INPUT_BW-1:0]      input_doutb_0;
    
    wire                            input_ena_1;
    wire                            input_wea_1;
    wire [ADDR_IN-1:0]              input_addra_1; 
    wire signed [INPUT_BW-1:0]      input_dina_1;
    wire signed [INPUT_BW-1:0]      input_douta_1;
    wire                            input_enb_1;
    wire                            input_web_1;
    wire [ADDR_IN-1:0]              input_addrb_1;
    wire signed [INPUT_BW-1:0]      input_dinb_1;
    wire signed [INPUT_BW-1:0]      input_doutb_1;
    
    wire                            weight_ena_0;
    wire                            weight_wea_0;
    wire [ADDR_W-1:0]               weight_addra_0;
    wire signed [INPUT_BW-1:0]      weight_dina_0;
    wire signed [INPUT_BW-1:0]      weight_douta_0;
    wire                            weight_enb_0;
    wire                            weight_web_0;
    wire [ADDR_W-1:0]               weight_addrb_0;
    wire signed [INPUT_BW-1:0]      weight_dinb_0;
    wire signed [INPUT_BW-1:0]      weight_doutb_0;
    
    wire                            weight_ena_1;
    wire                            weight_wea_1;
    wire [ADDR_W-1:0]               weight_addra_1;
    wire signed [INPUT_BW-1:0]      weight_dina_1;
    wire signed [INPUT_BW-1:0]      weight_douta_1;
    wire                            weight_enb_1;
    wire                            weight_web_1;
    wire [ADDR_W-1:0]               weight_addrb_1;
    wire signed [INPUT_BW-1:0]      weight_dinb_1;
    wire signed [INPUT_BW-1:0]      weight_doutb_1;
  
    // Writing to GLB by PS(IA & Weight)
    assign input_ena_0      = (double_buf_cnt_for_ps==0) ? input_ena_top : 0;
    assign input_ena_1      = (double_buf_cnt_for_ps!=0) ? input_ena_top : 0;
    assign input_wea_0      = (double_buf_cnt_for_ps==0) ? input_wea_top : 0;
    assign input_wea_1      = (double_buf_cnt_for_ps!=0) ? input_wea_top : 0;
    assign input_addra_0    = (double_buf_cnt_for_ps==0) ? input_addra_top : 0;
    assign input_addra_1    = (double_buf_cnt_for_ps!=0) ? input_addra_top : 0;
    assign input_dina_0     = (double_buf_cnt_for_ps==0) ? input_dina_top : 0;
    assign input_dina_1     = (double_buf_cnt_for_ps!=0) ? input_dina_top : 0;
    
    assign weight_ena_0      = (double_buf_cnt_for_ps==0) ? weight_ena_top : 0;
    assign weight_ena_1      = (double_buf_cnt_for_ps!=0) ? weight_ena_top : 0;
    assign weight_wea_0      = (double_buf_cnt_for_ps==0) ? weight_wea_top : 0;
    assign weight_wea_1      = (double_buf_cnt_for_ps!=0) ? weight_wea_top : 0;
    assign weight_addra_0    = (double_buf_cnt_for_ps==0) ? weight_addra_top : 0;
    assign weight_addra_1    = (double_buf_cnt_for_ps!=0) ? weight_addra_top : 0;
    assign weight_dina_0     = (double_buf_cnt_for_ps==0) ? weight_dina_top : 0;
    assign weight_dina_1     = (double_buf_cnt_for_ps!=0) ? weight_dina_top : 0;
    
    // Reading From GLB(IA & Weight)
    assign input_enb_0      = (double_buf_cnt==0) ? input_enb_top : 0;
    assign input_enb_1      = (double_buf_cnt!=0) ? input_enb_top : 0;
    assign input_web_0      = 0;
    assign input_web_1      = 0;
    assign input_addrb_0    = (double_buf_cnt==0) ? input_addrb_top : 0;
    assign input_addrb_1    = (double_buf_cnt!=0) ? input_addrb_top : 0;
    assign input_dinb_0     = (double_buf_cnt==0) ? input_dinb_top : 0;
    assign input_dinb_1     = (double_buf_cnt!=0) ? input_dinb_top : 0;
    assign input_doutb_top  = (double_buf_cnt==0) ? input_doutb_0 : input_doutb_1;
    
    assign weight_enb_0      = (double_buf_cnt==0) ? weight_enb_top : 0;
    assign weight_enb_1      = (double_buf_cnt!=0) ? weight_enb_top : 0;
    assign weight_web_0      = 0;
    assign weight_web_1      = 0;
    assign weight_addrb_0    = (double_buf_cnt==0) ? weight_addrb_top : 0;
    assign weight_addrb_1    = (double_buf_cnt!=0) ? weight_addrb_top : 0;
    assign weight_dinb_0     = (double_buf_cnt==0) ? weight_dinb_top : 0;
    assign weight_dinb_1     = (double_buf_cnt!=0) ? weight_dinb_top : 0;
    assign weight_doutb_top  = (double_buf_cnt==0) ? weight_doutb_0 : weight_doutb_1;
    
    // ------------------------------------------------------------------------
    // act_n_weight_ctrlr Module : locate activations & weights to appropriate core
    // ------------------------------------------------------------------------
    localparam  ACT_PER_CORE      = 13;
    localparam  WEIGHT_PER_CORE   = 9;
    localparam  NUM_DENSE_CORE    = 8;
    localparam  NUM_SPARSE_CORE   = 4;
    
    wire [INPUT_BW-1:0]  input_mem_data;
    wire [ADDR_IN-1:0]   input_mem_addr;
    wire                 input_mem_en;
    assign input_mem_data       = input_doutb_top;
    assign input_addrb_top      = input_mem_addr;
    assign input_enb_top        = input_mem_en;
    
    wire [INPUT_BW-1:0]  weight_mem_data;
    wire [ADDR_W-1:0]    weight_mem_addr;
    wire                 weight_mem_en;
    assign weight_mem_data      = weight_doutb_top;
    assign weight_addrb_top     = weight_mem_addr;
    assign weight_enb_top       = weight_mem_en;
    
    wire signed [INPUT_BW-1:0]      ia_row_mem_data;
    wire [ACT_PER_CORE-1:0]         ia_row_mem_addr;

    wire signed [INPUT_BW-1:0]      weight_row_mem_data;
    wire [WEIGHT_PER_CORE-1:0]      weight_row_mem_addr;
    
    wire [NUM_DENSE_CORE-1:0]     which_dense_core_done;
    wire [NUM_SPARSE_CORE-1:0]    which_sparse_core_done;
    
    wire [NUM_DENSE_CORE-1:0]     which_dense_core_start;
    wire [NUM_SPARSE_CORE-1:0]    which_sparse_core_start;
    
    wire act_n_weight_ctrlr_done;
    
    act_n_weight_ctrlr act_n_weight_ctrlr (   .clk(clk), .resetn(resetn),
                                              .start(start), .done(act_n_weight_ctrlr_done),
                                              .TOTAL_IC(IC), .OC(OC), .IMG_H(IMG_H), .IMG_W(IMG_W), .K(K),. STRIDE(STRIDE),
                                              
                                              .input_mem_data(input_mem_data), .input_mem_addr(input_mem_addr), .input_mem_en(input_mem_en),
                                              .weight_mem_data(weight_mem_data), .weight_mem_addr(weight_mem_addr), .weight_mem_en(weight_mem_en),
                                              
                                              .act_row_mem_data(ia_row_mem_data), .act_row_mem_addr(ia_row_mem_addr),
                                              .weight_row_mem_data(weight_row_mem_data), .weight_row_mem_addr(weight_row_mem_addr),
                                              
                                              .which_dense_core_done(which_dense_core_done), .which_sparse_core_done(which_sparse_core_done),
                                              .which_dense_core_start(which_dense_core_start), .which_sparse_core_start(which_sparse_core_start)
                                          );

    // ------------------------------------------------------------------------
    // activations & weights from act_n_weight_ctrlr Module goes equally to Total COREs
    // fan out = Num of COREs = (8+4) -> "may need register insertions to avoid Timing violation"
    // ------------------------------------------------------------------------
    // signals for total dense_core x8
    wire signed [INPUT_BW-1:0]  core_ia_row_mem_data;
    wire [ACT_PER_CORE-1:0]     core_ia_row_mem_addr;
    
    assign core_ia_row_mem_data    = ia_row_mem_data;
    assign core_ia_row_mem_addr    = ia_row_mem_addr;
    
    wire signed [INPUT_BW-1:0]  core_weight_row_mem_data;
    wire [WEIGHT_PER_CORE-1:0]  core_weight_row_mem_addr;
    
    assign core_weight_row_mem_data = weight_row_mem_data;
    assign core_weight_row_mem_addr = weight_row_mem_addr;
    // ------------------------------------------------------------------------
    // total 8 dense_core Module (doesn't support Zero-Skip): 
    // 1) get IA & Weight Data of corresponding IC (K=3: 1 IC / K=1: 3 IC)
    // 2) transfer datas to corresponding IA_ROW_MEMs & WEIGHT_ROW_MEMs
    // 3) compute MAC operation (need pe control & pe net control)
    // 4) PSUMs are accumulated and goes to 32 different output psum ports (in implementation psums ports are flattened)
    // ------------------------------------------------------------------------
    localparam PSUM_BW           = 32;
    localparam NUM_ROWS          = 32;
    
    wire [PSUM_BW*NUM_ROWS-1:0] dense_core_psum_rows [NUM_DENSE_CORE-1:0];
    
    wire [NUM_DENSE_CORE-1:0] dense_core_done;
    wire [NUM_DENSE_CORE-1:0] dense_core_start;
    assign which_dense_core_done    = dense_core_done;
    assign dense_core_start         = which_dense_core_start;
    
    genvar i;
    generate
        for (i = 0; i < NUM_DENSE_CORE; i = i + 1) begin : gen_dense_core
            dense_core dense_core_inst (
                .clk(clk),
                .resetn(resetn),
                
                .core_start(dense_core_start[i]),
                .core_done(dense_core_done[i]),
                
                .TOTAL_IC(IC),
                .OC(OC),
                .IMG_H(IMG_H),
                .IMG_W(IMG_W),
                .K(K),
                .STRIDE(STRIDE),
                
                .ia_row_mem_data(core_ia_row_mem_data),
                .ia_row_mem_addr(core_ia_row_mem_addr),
                .weight_row_mem_data(core_weight_row_mem_data),
                .weight_row_mem_addr(core_weight_row_mem_addr),
                
                .psum_rows(dense_core_psum_rows[i])
            );
        end
    endgenerate   

    // ------------------------------------------------------------------------
    // sparse_core Module (support Zero-Skip): 
    // 1) get IA & Weight Data of corresponding IC (K=3: 1 IC / K=1: 3 IC)
    // 2) transfer datas to corresponding IA_ROW_MEMs & WEIGHT_ROW_MEMs
    // 3) compute MAC operation (need pe control & pe net control & zero-skip control)
    // 4) PSUMs are accumulated and goes to 32 different output psum ports (in implementation psums ports are flattened)
    // ------------------------------------------------------------------------



    
    // ------------------------------------------------------------------------
    // PSUM MEM & PSUM_MEM_ACC Ports A-ports (WRITE), B-ports (READ)
    // ------------------------------------------------------------------------
//    wire                            psum_mem_ena;
//    wire                            psum_mem_wea;
//    wire [ADDR_OUT-1:0]             psum_mem_addra;
//    wire signed [INPUT_BW-1:0]      psum_mem_dina;
 
//    wire                            psum_mem_enb;
//    wire [ADDR_OUT-1:0]             psum_mem_addrb;
//    wire signed [INPUT_BW-1:0]      psum_mem_doutb;
    
//    wire                            psum_mem_acc_ena;
//    wire                            psum_mem_acc_wea;
//    wire [ADDR_OUT-1:0]             psum_mem_acc_addra;
//    wire signed [INPUT_BW-1:0]      psum_mem_acc_dina;
 
//    wire                            psum_mem_acc_enb;
//    wire [ADDR_OUT-1:0]             psum_mem_acc_addrb;
//    wire signed [INPUT_BW-1:0]      psum_mem_acc_doutb;
    
    // ------------------------------------------------------------------------
    // psum_acc.v
    // ------------------------------------------------------------------------
    wire psum_acc_done;


    // ------------------------------------------------------------------------
    // out_mem_acc.v
    // ------------------------------------------------------------------------
    wire out_mem_acc_done;
    
    // ------------------------------------------------------------------------
    // FSM for top.v 
    // ------------------------------------------------------------------------
//    reg [2:0] state, n_state;
    
//    localparam IDLE     = 3'd0;
//    localparam WORKING  = 3'd1;
//    localparam DONE     = 3'd2;
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) state <= IDLE;
        else state <= n_state;
    end
    
     always @(*) begin
        case (state)
            IDLE : begin 
                if(start) begin
                    n_state = WORKING;
                end               
                else n_state = IDLE;
            end
            WORKING : begin
                if(out_mem_acc_done == 1)begin
                    n_state = DONE;
                end
                else n_state = WORKING;
            end
            DONE : begin
                n_state = IDLE;
            end
            default :  n_state = IDLE;
        endcase
    end
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    INPUT_MEM INPUT_MEM_0 (
      .clka (input_clka_top),
      .ena  (input_ena_0),
      .wea  (input_wea_0),
      .addra(input_addra_0),
      .dina (input_dina_0),
      .douta(input_douta_0),
      .clkb (clk),
      .enb  (input_enb_0),
      .web  (input_web_0),
      .addrb(input_addrb_0),
      .dinb (input_dinb_0),
      .doutb(input_doutb_0)
    );
    
    INPUT_MEM INPUT_MEM_1 (
      .clka (input_clka_top),
      .ena  (input_ena_1),
      .wea  (input_wea_1),
      .addra(input_addra_1),
      .dina (input_dina_1),
      .douta(input_douta_1),
      .clkb (clk),
      .enb  (input_enb_1),
      .web  (input_web_1),
      .addrb(input_addrb_1),
      .dinb (input_dinb_1),
      .doutb(input_doutb_1)
    );
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    WEIGHT_MEM WEIGHT_MEM_0 (
      .clka (weight_clka_top),
      .ena  (weight_ena_0),
      .wea  (weight_wea_0),
      .addra(weight_addra_0), 
      .dina (weight_dina_0),
      .douta(weight_douta_0), 
      .clkb (clk),
      .enb  (weight_enb_0),
      .web  (weight_web_0),         
      .addrb(weight_addrb_0),     
      .dinb (weight_dinb_0),        
      .doutb(weight_doutb_0)   
    );
    
    WEIGHT_MEM WEIGHT_MEM_1 (
      .clka (weight_clka_top),
      .ena  (weight_ena_1),
      .wea  (weight_wea_1),
      .addra(weight_addra_1), 
      .dina (weight_dina_1),
      .douta(weight_douta_1), 
      .clkb (clk),
      .enb  (weight_enb_1),
      .web  (weight_web_1),         
      .addrb(weight_addrb_1),     
      .dinb (weight_dinb_1),        
      .doutb(weight_doutb_1)   
    );
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
endmodule







////////////////////////////////////////////////////////////////////////////////
//    wire signed [INPUT_BW-1:0]   core_0_ia_row_mem_data;
//    wire [ACT_PER_CORE-1:0]      core_0_ia_row_mem_addr;

//    wire signed [INPUT_BW-1:0]   core_0_weight_row_mem_data;
//    wire [WEIGHT_PER_CORE-1:0]   core_0_weight_row_mem_addr;

//    wire [PSUM_BW*NUM_ROWS-1:0] core_0_psum_rows;

//    wire core_0_done;
//    wire core_0_start;
    
//    dense_core dense_core_0 (   .clk(clk), .resetn(resetn),
//                                .core_start(), .core_done(),
//                                .TOTAL_IC(IC), .OC(OC), .IMG_H(IMG_H), .IMG_W(IMG_W), .K(K), .STRIDE(STRIDE),
                              
//                                .ia_row_mem_data(), .ia_row_mem_addr(),
                                
//                                .weight_row_mem_data(), .weight_row_mem_addr(),
                                
//                                .psum_rows()
//                            );
////////////////////////////////////////////////////////////////////////////////




