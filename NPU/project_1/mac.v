
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
    // Configurable Data within CORE
    // ------------------------------------------------------------------------
    input  wire is_bottom,
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
    
    input wire signed [PSUM_BW-1:0]        psum_data_in,
    input wire [PSUM_ROW_MEM_ADDR-1:0]     psum_addr_in,
    // ------------------------------------------------------------------------
    // psum from core 32bit x 32rows (2-D shape array like wire or reg ports is not supported in verilog)
    // ------------------------------------------------------------------------
    output wire signed [PSUM_BW-1:0]    psum_data_out,
    output wire [PSUM_ROW_MEM_ADDR-1:0] psum_addr_out,
    output wire                         psum_valid
    );
    // ------------------------------------------------------------------------
    // OFFSET for weight address -> since, when multiplying weights from different oc, address of row mem has OFFSET
    // OFFSET for psum address -> since, when reusing ia data, weights from different oc are multiplied
    // ------------------------------------------------------------------------
    wire [2:0] WEIGHT_OC_OFFSET = K;
    wire [5:0] PSUM_OC_OFFSET   = IMG_W;
    wire [PSUM_ROW_MEM_ADDR-1:0] PSUM_ADDR_MAX = OC * IMG_W; 

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
    reg signed [INPUT_BW-1:0]      ia_reg0,     ia_reg1,     ia_reg2;
    reg signed [INPUT_BW-1:0]      weight_reg0, weight_reg1, weight_reg2;

    reg signed [PSUM_BW-1:0]        mult_data_reg;
    reg [PSUM_ROW_MEM_ADDR-1:0]     mult_addr_reg;

    reg [5:0] mult_column_cnt;  // multiply is done by ia reuse, when 1 filter width reuse is done, this column cnt increases by 1 

    // ------------------------------------------------------------------------
    // FSM
    // ------------------------------------------------------------------------
    reg [2:0] state, n_state;

    reg [1:0] prepare_cnt;

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
                if(prepare_cnt == 2)    n_state = COMPUTE;
                else                    n_state = PREPARE;
            end
            COMPUTE : begin 
                if(mult_column_cnt == IMG_W)    n_state = IDLE;
                else                            n_state = COMPUTE;
            end
            default :  n_state = IDLE;
        endcase
    end
    
    // ------------------------------------------------------------------------
    // Storing data in ia_regs & weight_regs
    // ------------------------------------------------------------------------
    reg ia_need_reg_delay, ia_need_reg_delay2;
    reg weight_need_reg_delay, weight_need_reg_delay2;
    reg [7:0] ia_reuse_cnt_delay, ia_reuse_cnt_delay2, ia_reuse_cnt_delay3;
//    reg [2:0] ia_kernel_cnt_delay, ia_kernel_cnt_delay2, ia_kernel_cnt_delay3;

    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            ia_reg0     <= 0;
            ia_reg1     <= 0;
            ia_reg2     <= 0;
            
            weight_reg0 <= 0;
            weight_reg1 <= 0;
            weight_reg2 <= 0;
            
            prepare_cnt <= 0;
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
                        
                        prepare_cnt <= prepare_cnt + 1;
                    end
                end
                COMPUTE : begin
                    if(ia_need_reg_delay2) begin
                        ia_reg0 <= ia_reg1;
                        ia_reg1 <= ia_reg2;
                        ia_reg2 <= ia_row_mem_data;
                    end
                    if(weight_need_reg_delay2) begin
                        weight_reg0 <= weight_reg1;
                        weight_reg1 <= weight_reg2;
                        weight_reg2 <= weight_row_mem_data;
                    end
                end
                default :  begin
                    ia_reg0     <= 0;
                    ia_reg1     <= 0;
                    ia_reg2     <= 0;
                    
                    weight_reg0 <= 0;
                    weight_reg1 <= 0;
                    weight_reg2 <= 0;

                    prepare_cnt <= 0;
                end
            endcase
        end
    end

    // ------------------------------------------------------------------------
    // fetch ia & weight
    // ------------------------------------------------------------------------
    reg weight_need_reg, ia_need_reg;

    reg [7:0] ia_reuse_cnt;
    reg [2:0] ia_kernel_cnt;

    assign weight_need  = weight_need_reg;
    assign ia_need      = ia_need_reg;

    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            weight_need_reg <= 0;

            ia_reuse_cnt    <= 0;
            ia_kernel_cnt   <= 0;
        end
        else begin
            case (state)
                COMPUTE : begin
                    weight_need_reg <= 1;
                    ia_reuse_cnt    <= ia_reuse_cnt + 1;

                    if(ia_reuse_cnt==OC-2 && STRIDE==2 && ia_kernel_cnt == K-1) begin
                        ia_need_reg     <= 1;
                    end
                    else if(ia_reuse_cnt==OC-1) begin
                        ia_reuse_cnt    <= 0;
                        
                        if(ia_kernel_cnt == K-1) begin
                            ia_kernel_cnt   <= 0;
                            ia_need_reg     <= 1;                   
                        end
                        else begin 
                            ia_kernel_cnt   <= ia_kernel_cnt + 1; 
                        end
                    end
                    else begin
                        ia_need_reg     <= 0;
                    end
                end
                default :  begin
                    ia_reuse_cnt    <= 0;
                    ia_need_reg     <= 0;
                end
            endcase
        end
    end

    /***** Delay to consider SRAM Read Delay (2cycle = 1 cylce for updating en signal in pe.v + 1 cycle for reading SRAM)*****/
    // ia_reuse has delay of 3 because ia_reg0,ia_reg1,ia_reg2 gets data when (ia_need_reg_delay2 == 1)
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            weight_need_reg_delay   <= 0;
            weight_need_reg_delay2  <= 0;
            
            ia_need_reg_delay       <= 0;
            ia_need_reg_delay2      <= 0;
            
            ia_reuse_cnt_delay      <= 0;
            ia_reuse_cnt_delay2     <= 0;
            ia_reuse_cnt_delay3     <= 0;
            
//            ia_kernel_cnt_delay     <= 0;
//            ia_kernel_cnt_delay2    <= 0;
//            ia_kernel_cnt_delay3    <= 0;
        end
        else begin
            weight_need_reg_delay   <= weight_need_reg;
            weight_need_reg_delay2  <= weight_need_reg_delay;
            
            ia_need_reg_delay       <= ia_need_reg;
            ia_need_reg_delay2      <= ia_need_reg_delay;
            
            ia_reuse_cnt_delay      <= ia_reuse_cnt;
            ia_reuse_cnt_delay2     <= ia_reuse_cnt_delay;
            ia_reuse_cnt_delay3     <= ia_reuse_cnt_delay2;
            
//            ia_kernel_cnt_delay     <= ia_kernel_cnt;
//            ia_kernel_cnt_delay2    <= ia_kernel_cnt_delay;
//            ia_kernel_cnt_delay3    <= ia_kernel_cnt_delay2;
        end
    end

    // ------------------------------------------------------------------------
    // Prepare data in COMPUTE state (ia_data x weight_data to be computed)
    // ------------------------------------------------------------------------
    reg signed [INPUT_BW-1:0]     ia_compute_reg;
    reg signed [INPUT_BW-1:0]     weight_compute_reg;
    
    reg  mult_start;
    wire mult_end;
    assign mult_end = (mult_column_cnt == IMG_W);
    
    wire mult_valid;
    assign mult_valid = (mult_start - mult_end);

    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            ia_compute_reg      <= 0;
            weight_compute_reg  <= 0;
        end
        else begin
            case (state)
                COMPUTE : begin
                    if(ia_reuse_cnt_delay3==0) begin
                        if (ia_kernel_cnt==0)           ia_compute_reg <= ia_reg0;
                        else if (ia_kernel_cnt==1)      ia_compute_reg <= ia_reg1;
                        else if (ia_kernel_cnt==2)      ia_compute_reg <= ia_reg2; 
                    end
                    weight_compute_reg  <= weight_reg0;
                end
                default :  begin
                    ia_compute_reg      <= 0;
                    weight_compute_reg  <= 0;
                end
            endcase
        end
    end

    // multiply should be valid when ia_reuse has been acheived
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            mult_start  <= 0;
        end
        else begin
            case (state)
                COMPUTE : begin
                    if(ia_reuse_cnt_delay3==1) mult_start   <= 1;
                end
                default :  begin
                    mult_start  <= 0;
                end
            endcase
        end
    end          

    // ------------------------------------------------------------------------
    // Compute data (ia_data x weight_data) -> Should Upgrade for Zero Skipping Feature
    // ------------------------------------------------------------------------
//    reg [PSUM_BW-1:0]               mult_data_reg;
//    reg [PSUM_ROW_MEM_ADDR-1:0]     mult_addr_reg;

//    reg [5:0] mult_column_cnt;  // multiply is done by ia reuse, when 1 filter width reuse is done, this column cnt increases by 1 

    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            mult_data_reg       <= 0;
            mult_addr_reg       <= 0;
            mult_column_cnt     <= 0;
        end
        else begin
            case (state)
                COMPUTE : begin
                    mult_data_reg       <= ia_compute_reg * weight_compute_reg;
                    if(mult_start) begin
                        if(mult_addr_reg + PSUM_OC_OFFSET < PSUM_ADDR_MAX) begin
                            mult_addr_reg       <= mult_addr_reg + PSUM_OC_OFFSET;
                        end
                        else if (ia_kernel_cnt == 0) begin
                            mult_addr_reg       <= mult_column_cnt + 1;
                            mult_column_cnt     <= mult_column_cnt + 1;
                        end
                        else begin 
                            mult_addr_reg       <= mult_column_cnt;
                        end
                    end
                end
                default :  begin
                    mult_data_reg       <= 0;
                    mult_addr_reg       <= 0;
                    mult_column_cnt     <= 0;
                end
            endcase
        end
    end

    // ------------------------------------------------------------------------
    // Accumulate PSUM data (ia_data x weight_data + psum_from_other_pe) -> Should Upgrade for Zero Skipping Feature
    // ------------------------------------------------------------------------
//    output wire signed [PSUM_BW-1:0]    psum_data_out,
//    output wire [PSUM_ROW_MEM_ADDR-1:0] psum_addr_out
    wire signed [PSUM_BW-1:0]        mult_data = mult_data_reg;
    wire [PSUM_ROW_MEM_ADDR-1:0]     mult_addr = mult_addr_reg;
    wire is_psum_addr_equal;
    
    assign psum_valid           = mult_valid;

    assign is_psum_addr_equal   = is_bottom ? 1'b1 : (psum_addr_in == mult_addr);    
    assign psum_data_out        = (is_psum_addr_equal) ? psum_data_in + mult_data : psum_data_in;
    assign psum_addr_out        = is_bottom ? mult_addr : psum_addr_in;


    endmodule