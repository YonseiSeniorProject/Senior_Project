
`timescale 1ns / 1ps

module core#(
    // SRAM address widths (enough to cover depth)
    parameter ADDR_IN           = 20,           // 2^20 = 1,048,576 > 34x34x512 = 591,872 (HWC)
    parameter ADDR_W            = 18,           // 2^18 = 262,144 > 3x3x512x32 = 147,456 (KH, KW, IC, OC_tile)
    parameter ADDR_PSUM         = 12,           // 2^12 = 4096 > 32x64 = 2048
    parameter INPUT_BW          = 8,            // 8bit Data comes from AXI interface
    parameter PSUM_BW           = 32,           // 8bit Data goes to AXI interface (after Quantization)
    parameter ACT_PER_CORE      = 13,
    parameter WEIGHT_PER_CORE   = 9,
    parameter NUM_IA_ROW_MEM    = 96,
    parameter NUM_WEIGHT_ROW_MEM= 3,
    parameter NUM_COLS = 32, // PE 열 수
    parameter NUM_PE_ROWS = 3 // PE 행 수
    )(
    input wire clk,
    input wire resetn,
    // ------------------------------------------------------------------------
    // Configurable Data
    // ------------------------------------------------------------------------
    input wire core_start,
    input  wire [2:0] K,        // Max: 3
    input  wire [9:0] TOTAL_IC, // Max: 512
    input  wire [5:0] IMG_H,    // Tile_Size_oc_H = 32
    input  wire [5:0] IMG_W,    // Tile_Size_oc_W = 32
    input  wire [7:0] OC,       // Tile_Size_oc = 64
    input  wire [2:0] STRIDE,
    output wire core_done,
    // ------------------------------------------------------------------------
    // ia_row_mem outputs & write
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]   ia_row_mem_data,
    input wire [ACT_PER_CORE-1:0]      ia_row_mem_addr,
    // ------------------------------------------------------------------------
    // weight_row_mem outputs & write
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]       weight_row_mem_data,
    input wire [WEIGHT_PER_CORE-1:0]       weight_row_mem_addr
    // ------------------------------------------------------------------------
    // psum from core 32bit x 32rows (2-D shape array like wire or reg ports is not supported in verilog)
    // ------------------------------------------------------------------------
//    output wire [PSUM_BW*NUM_COLS-1:0] psum_rows
    );
    // NOTE: CORE의 동작이 끝나면 계속 CORE_START신호가 들어오기 전까지 DONE = 1이 유지되어야 함
    
    localparam IA_ROW_MEM_ADDR      = 7;
    localparam WEIGHT_ROW_MEM_ADDR  = 7;
    
    // ------------------------------------------------------------------------
    // data_2_row_mem Module : transfer data comes from act_n_weight_ctrlr to corresponding row_mems
    // ------------------------------------------------------------------------ 
    wire data_2_row_mem_start;
    wire data_2_row_mem_done;
    assign data_2_row_mem_start = core_start;
    
    wire signed [INPUT_BW-1:0]   ia_row_mem_each_data;
    wire [IA_ROW_MEM_ADDR-1:0]   ia_row_mem_each_addr;
    wire [NUM_IA_ROW_MEM-1:0]    which_ia_row_mem_en;
    wire [NUM_IA_ROW_MEM-1:0]    which_ia_row_mem_we;

    wire signed [INPUT_BW-1:0]       weight_row_mem_each_data;
    wire [WEIGHT_ROW_MEM_ADDR-1:0]   weight_row_mem_each_addr;
    wire [NUM_WEIGHT_ROW_MEM-1:0]    which_weight_row_mem_en;
    wire [NUM_WEIGHT_ROW_MEM-1:0]    which_weight_row_mem_we;

//    wire [NUM_IA_ROW_MEM-1:0]        which_ia_row_mem_activate;
//    wire [NUM_WEIGHT_ROW_MEM-1:0]    which_weight_row_mem_activate;

    data_2_row_mem data_2_row_mem  (
                .clk(clk),
                .resetn(resetn),
                
                .start(data_2_row_mem_start),
                .done(data_2_row_mem_done),
                
                .OC(OC), .IMG_H(IMG_H), .IMG_W(IMG_W), .K(K),.STRIDE(STRIDE),
                
                .act_row_mem_data(ia_row_mem_data), .act_row_mem_addr(ia_row_mem_addr),
                
                .weight_row_mem_data(weight_row_mem_data), .weight_row_mem_addr(weight_row_mem_addr),
                
                .act_row_mem_each_data(ia_row_mem_each_data), .act_row_mem_each_addr(ia_row_mem_each_addr), 
                .which_act_row_mem_en(which_ia_row_mem_en), .which_act_row_mem_we(which_ia_row_mem_we),

                .weight_row_mem_each_data(weight_row_mem_each_data), .weight_row_mem_each_addr(weight_row_mem_each_addr), 
                .which_weight_row_mem_en(which_weight_row_mem_en), .which_weight_row_mem_we(which_weight_row_mem_we)
//                .which_weight_row_mem_activate(which_weight_row_mem_activate),
//                .which_ia_row_mem_activate(which_ia_row_mem_activate)

            );
    
    // ------------------------------------------------------------------------------------------------------------------------------------------------ 
    /***** IA_ROW_MEMs Signals *****/
    // each row mem contains maximum 34 datas (K=3: 34x8bit / K=1: 32x8bit)
    // PE_ARRAY have total 3x32 PEs -> Thus, total 96 row mems are needed (for K=1, every PE needs row mem)
//    wire [95:0]                             ia_row_mem_ena;         // 0 to 95
//    wire [95:0]                             ia_row_mem_wea;
//    wire [(96 * IA_ROW_MEM_ADDR) - 1:0]     ia_row_mem_addra_flat;  // flattened address
//    wire [(96 * INPUT_BW) - 1:0]            ia_row_mem_dina_flat;   // flattened data
    
//    wire [95:0]                             ia_row_mem_enb;
//    wire [(96 * IA_ROW_MEM_ADDR) - 1:0]     ia_row_mem_addrb_flat;
//    wire [(96 * INPUT_BW) - 1:0]            ia_row_mem_doutb_flat;
    
    wire [NUM_IA_ROW_MEM-1:0]               ia_row_mem_ena;         // 0 to 95
    wire [NUM_IA_ROW_MEM-1:0]               ia_row_mem_wea;
    wire [IA_ROW_MEM_ADDR-1:0]              ia_row_mem_addra;
    wire [INPUT_BW-1:0]                     ia_row_mem_dina;
    
    wire [NUM_IA_ROW_MEM-1:0]               ia_row_mem_enb;
    wire [IA_ROW_MEM_ADDR-1:0]              ia_row_mem_addrb [NUM_IA_ROW_MEM-1:0];
    wire [INPUT_BW-1:0]                     ia_row_mem_doutb [NUM_IA_ROW_MEM-1:0];
   
    /***** Total 96 IA_ROW_MEMs *****/
    genvar i;
    generate
        for (i = 0; i < 96; i = i + 1) begin : gen_ia_row_mem
            IA_ROW_MEM IA_ROW_MEM_inst (
                .clka (clk),
                .ena (ia_row_mem_ena[i]),
                .wea (ia_row_mem_wea[i]),
                .addra(ia_row_mem_addra),
                .dina (ia_row_mem_dina),
                
                .clkb (clk),
                .enb (ia_row_mem_enb[i]),
                .addrb(ia_row_mem_addrb[i]),
                .doutb(ia_row_mem_doutb[i])
            );
        end
    endgenerate
    
    /***** WEIGHT_ROW_MEMs Signals *****/
    wire [2:0]                      weight_row_mem_ena;
    wire [2:0]                      weight_row_mem_wea;
    wire [WEIGHT_ROW_MEM_ADDR-1:0]  weight_row_mem_addra;
    wire [INPUT_BW-1:0]             weight_row_mem_dina;
    
    wire [2:0]                      weight_row_mem_enb;
    wire [WEIGHT_ROW_MEM_ADDR-1:0]  weight_row_mem_addrb [NUM_WEIGHT_ROW_MEM-1:0];
    wire [INPUT_BW-1:0]             weight_row_mem_doutb [NUM_WEIGHT_ROW_MEM-1:0];
    
    /***** Total 3 WEIGHT_ROW_MEMs *****/
    generate
        for (i = 0; i < 3; i = i + 1) begin : gen_weight_row_mem
            WEIGHT_ROW_MEM WEIGHT_ROW_MEM_inst (
                .clka (clk),
                .ena (weight_row_mem_ena[i]),
                .wea (weight_row_mem_wea[i]),
                .addra(weight_row_mem_addra),
                .dina (weight_row_mem_dina),
                
                .clkb (clk),
                .enb (weight_row_mem_enb[i]),
                .addrb(weight_row_mem_addrb[i]),
                .doutb(weight_row_mem_doutb[i])
            );
        end
    endgenerate
    // ------------------------------------------------------------------------------------------------------------------------------------------------  
    
    // ------------------------------------------------------------------------ 
    // wiring data_2_row_mem to each row_mems
    // ------------------------------------------------------------------------
    assign ia_row_mem_ena    = which_ia_row_mem_en;         // 0 to 95
    assign ia_row_mem_wea    = which_ia_row_mem_we;
    assign ia_row_mem_addra  = ia_row_mem_each_addr;
    assign ia_row_mem_dina   = ia_row_mem_each_data;
    
    assign weight_row_mem_ena   = which_weight_row_mem_en;
    assign weight_row_mem_wea   = which_weight_row_mem_we;
    assign weight_row_mem_addra = weight_row_mem_each_addr;
    assign weight_row_mem_dina  = weight_row_mem_each_data;
    
    // ------------------------------------------------------------------------ 
    // pe_array Module
    // ------------------------------------------------------------------------
    wire pe_array_start, pe_array_done;
    assign pe_array_start = data_2_row_mem_done;
    
    wire [IA_ROW_MEM_ADDR*NUM_IA_ROW_MEM-1:0]   pe_array_ia_row_mem_addr;
    wire [NUM_IA_ROW_MEM-1:0]                   pe_array_which_ia_row_mem_en;
    wire [INPUT_BW*NUM_IA_ROW_MEM-1:0]          pe_array_ia_row_mem_data;
    
    wire [WEIGHT_ROW_MEM_ADDR*NUM_WEIGHT_ROW_MEM-1:0]   pe_array_weight_row_mem_addr;
    wire [NUM_WEIGHT_ROW_MEM-1:0]                       pe_array_which_weight_row_mem_en;
    wire [INPUT_BW*NUM_WEIGHT_ROW_MEM-1:0]              pe_array_weight_row_mem_data;
    
    wire [ADDR_PSUM*NUM_COLS-1:0]   pe_array_psum_addrs;
    wire [PSUM_BW*NUM_COLS-1:0]     pe_array_psum_rows;

    // Concatenate IA_ROW_MEM doutb to pe_array ia_row_mem_data
    generate
        for (i = 0; i < NUM_IA_ROW_MEM; i = i + 1) begin : gen_ia_data_concat
            assign pe_array_ia_row_mem_data[INPUT_BW*(i+1)-1 : INPUT_BW*i]  = ia_row_mem_doutb[i];
            assign ia_row_mem_addrb[i]                                      = pe_array_ia_row_mem_addr[IA_ROW_MEM_ADDR*(i+1)-1 : IA_ROW_MEM_ADDR*i];
            assign ia_row_mem_enb[i]                                        = pe_array_which_ia_row_mem_en[i];
        end
    endgenerate

    // Concatenate WEIGHT_ROW_MEM doutb to pe_array weight_row_mem_data
    generate
        for (i = 0; i < NUM_WEIGHT_ROW_MEM; i = i + 1) begin : gen_weight_data_concat
            assign pe_array_weight_row_mem_data[INPUT_BW*(i+1)-1 : INPUT_BW*i]  = weight_row_mem_doutb[i];
            assign weight_row_mem_addrb[i]                                      = pe_array_weight_row_mem_addr[WEIGHT_ROW_MEM_ADDR*(i+1)-1 : WEIGHT_ROW_MEM_ADDR*i];
            assign weight_row_mem_enb[i]                                        = pe_array_which_weight_row_mem_en[i];
        end
    endgenerate

    // pe_array instance
    pe_array #(
        .ADDR_PSUM(ADDR_PSUM),
        .INPUT_BW(INPUT_BW),
        .PSUM_BW(PSUM_BW),
        .IA_ROW_MEM_ADDR(IA_ROW_MEM_ADDR),
        .WEIGHT_ROW_MEM_ADDR(WEIGHT_ROW_MEM_ADDR),
        .NUM_IA_ROW_MEM(NUM_IA_ROW_MEM),
        .NUM_COLS(NUM_COLS),
        .NUM_PE_ROWS(NUM_PE_ROWS),
        .NUM_WEIGHT_ROW_MEM(NUM_WEIGHT_ROW_MEM)
    ) pe_array_inst (
        .clk(clk),
        .resetn(resetn),
        
        .start(pe_array_start),
        .K(K),
        .IMG_H(IMG_H),
        .IMG_W(IMG_W),
        .OC(OC),
        .STRIDE(STRIDE),
        .done(pe_array_done),
        
        .ia_row_mem_data(pe_array_ia_row_mem_data),
//        .which_ia_row_mem_activate(which_ia_row_mem_activate),
        .ia_row_mem_addr(pe_array_ia_row_mem_addr),
        .which_ia_row_mem_en(pe_array_which_ia_row_mem_en),
        
        .weight_row_mem_data(pe_array_weight_row_mem_data),
        .weight_row_mem_addr(pe_array_weight_row_mem_addr),
        .which_weight_row_mem_en(pe_array_which_weight_row_mem_en),
        
        .psum_rows(pe_array_psum_rows),
        .psum_addrs(pe_array_psum_addrs)
    );
    
     
    


endmodule





    
//    IA_ROW_MEM IA_ROW_MEM_0 (
//      .clka (clk),
//      .ena  (ia_row_mem_0_ena),
//      .wea  (ia_row_mem_0_wea),
//      .addra(ia_row_mem_0_addra),
//      .dina (ia_row_mem_0_dina),
 
//      .clkb (clk),
//      .enb  (ia_row_mem_0_enb),
//      .addrb(ia_row_mem_0_addrb),
//      .doutb(ia_row_mem_0_doutb)
//    );