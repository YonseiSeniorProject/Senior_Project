
`timescale 1ns / 1ps

module mac#(
    // SRAM address widths (enough to cover depth)
    parameter INPUT_BW              = 8,            // 8bit Data comes from AXI interface
    parameter PSUM_BW               = 32,           // 8bit Data goes to AXI interface (after Quantization)
    parameter IA_ROW_MEM_ADDR       = 7,
    parameter WEIGHT_ROW_MEM_ADDR   = 7,
    parameter PSUM_ROW_MEM_ADDR     = 12            // 2^12 > IMG_W x OC = 32 x 64 = 2048
    )(
    input wire clk,
    input wire resetn,
    // ------------------------------------------------------------------------
    // Configurable Data
    // ------------------------------------------------------------------------
    input  wire start,
    input  wire [2:0] K,        // Max: 3
    input  wire [5:0] IMG_W,    // Tile_Size_oc_W = 32
    input  wire [7:0] OC,       // Tile_Size_oc = 64
    input  wire [2:0] STRIDE,
    output wire done,
    // ------------------------------------------------------------------------
    // ia_row_mem inputs & need
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]    ia_row_mem_data,
    input wire                          ia_row_mem_en,
    output wire                         ia_need,
    // ------------------------------------------------------------------------
    // weight_row_mem inputs & need
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]       weight_row_mem_data,
    output wire                            weight_need,
    // ------------------------------------------------------------------------
    // psum from core 32bit x 32rows (2-D shape array like wire or reg ports is not supported in verilog)
    // ------------------------------------------------------------------------
    output wire [PSUM_BW-1:0]           psum_data,
    output wire [PSUM_ROW_MEM_ADDR-1:0] psum_addr
    );
    // ------------------------------------------------------------------------
    // OFFSET for psum address -> since, when reusing ia data, weights from different oc are multiplied  
    // ------------------------------------------------------------------------
    wire [7:0] PSUM_OC_OFFSET = OC;
    
    // ------------------------------------------------------------------------
    // ia_row_mem_en_delay for whether current ia_row_mem_data is available
    // ------------------------------------------------------------------------
    reg ia_row_mem_en_delay;
    always @(posedge clk or negedge resetn) begin
        if(~resetn)     ia_row_mem_en_delay <= 0;
        else            ia_row_mem_en_delay <= ia_row_mem_en;
    end
    
    // ------------------------------------------------------------------------
    // local registers for storing IA & Weight & Psum
    // ------------------------------------------------------------------------
    reg [INPUT_BW-1:0]              ia_reg0,     ia_reg1,     ia_reg2;
    reg [INPUT_BW-1:0]              weight_reg0, weight_reg1, weight_reg2;
    
    reg [PSUM_BW-1:0]               mult_data_reg;
    reg [PSUM_ROW_MEM_ADDR-1:0]     mult_addr_reg;
    
    // ------------------------------------------------------------------------
    // FSM
    // ------------------------------------------------------------------------
    reg [2:0] state, n_state;
    
    localparam IDLE     = 3'd0;
    localparam PREPARE  = 3'd1;
    localparam COMPUTE  = 3'd2;
    
    assign done = (state==IDLE);
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) state <= IDLE;
        else state <= n_state;
    end
    
     always @(*) begin
        case (state)
            IDLE : begin 
                if(start) begin
                    n_state = PREPARE;
                end               
                else n_state = IDLE;
            end
            PREPARE : begin 
                n_state = PREPARE;
            end
            COMPUTE : begin 
                n_state = COMPUTE;
            end
            default :  n_state = IDLE;
        endcase
    end
    
    // ------------------------------------------------------------------------
    // Storing data in ia_regs & weight_regs
    // ------------------------------------------------------------------------
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            ia_reg0     <= 0;
            ia_reg1     <= 0;
            ia_reg2     <= 0;
            weight_reg0 <= 0;
            weight_reg1 <= 0;
            weight_reg2 <= 0;
        end
        else begin
            case (state)
                PREPARE : begin
                    if(ia_row_mem_en_delay) begin   // in PREPARE state en signal for ia & weight are synchronized
                        ia_reg0 <= ia_reg1;
                        ia_reg1 <= ia_reg2;
                        ia_reg2 <= ia_row_mem_data;
                        
                        weight_reg0 <= weight_reg1;
                        weight_reg1 <= weight_reg2;
                        weight_reg2 <= weight_row_mem_data;
                    end
                end
                COMPUTE : begin
                    if(ia_row_mem_en_delay) begin
                        ia_reg0 <= ia_reg1;
                        ia_reg1 <= ia_reg2;
                        ia_reg2 <= ia_row_mem_data;
                    end
                    
//                    if() begin
//                    end
                end
                default :  begin

                end
            endcase
        end
    end
    
    
    
    
    
    
    
    
    endmodule