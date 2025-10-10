
`timescale 1ns / 1ps

module act_n_weight_ctrlr #(
    // SRAM address widths
    parameter ADDR_IN           = 20,           // 2^20 = 1,048,576 > 34x34x512 = 591,872 (HWC)
    parameter ADDR_W            = 18,           // 2^18 = 262,144 > 3x3x512x32 = 147,456 (KH, KW, IC, OC_tile)
    parameter ACT_PER_CORE      = 13,
    parameter WEIGHT_PER_CORE   = 9,
    parameter NUM_CORE          = 4,
    parameter INPUT_BW          = 8,            // 8bit Data comes from AXI interface
    parameter OUTPUT_BW         = 8             // 8bit Data goes to AXI interface (after Quantization)
)(
    input                       clk,
    input                       resetn,
    // ------------------------------------------------------------------------
    // Start & Done Signals
    // ------------------------------------------------------------------------
    input  wire start,          // Start signal for config_ctrlr operation
    output wire done,           // config_ctrlr operation finished
    // ------------------------------------------------------------------------
    // Configurable Data
    // ------------------------------------------------------------------------
    input  wire [9:0] TOTAL_IC,
    input  wire [7:0] OC,
    input  wire [5:0] IMG_H,
    input  wire [5:0] IMG_W,
    input  wire [2:0] K,
    input  wire [2:0] STRIDE,
    // ------------------------------------------------------------------------
    // global input inputs & read
    // ------------------------------------------------------------------------
    input  wire signed [INPUT_BW-1:0]   input_mem_data,
    output wire [ADDR_IN-1:0]           input_mem_addr,
    output                              input_mem_en,
    // ------------------------------------------------------------------------
    // global weight inputs & read
    // ------------------------------------------------------------------------
    input  wire signed [INPUT_BW-1:0]   weight_mem_data,
    output wire [ADDR_W-1:0]            weight_mem_addr,
    output                              weight_mem_en,
    // ------------------------------------------------------------------------
    // act_row_mem outputs & write
    // ------------------------------------------------------------------------
    output wire signed [INPUT_BW-1:0]   act_row_mem_data,
    output wire [ACT_PER_CORE-1:0]      act_row_mem_addr,
    // ------------------------------------------------------------------------
    // weight_row_mem outputs & write
    // ------------------------------------------------------------------------
    output wire signed [INPUT_BW-1:0]       weight_row_mem_data,
    output wire [WEIGHT_PER_CORE-1:0]       weight_row_mem_addr,
    // ------------------------------------------------------------------------
    // done signal from cores
    // ------------------------------------------------------------------------
    input wire [NUM_CORE-1:0]               which_core_done,
    // ------------------------------------------------------------------------
    // start signal to cores
    // ------------------------------------------------------------------------
    output wire [NUM_CORE-1:0]              which_core_start
    );
    
    /***** MAX Elems of each Global memory *****/
    wire [6:0] input_img_h        = (IMG_H - 1) * STRIDE + K;
    wire [6:0] input_img_w        = (IMG_W - 1) * STRIDE + K;
    
    wire [ADDR_IN-1:0] max_elems_input_mem    = input_img_h * input_img_w * TOTAL_IC; 
    wire [ADDR_W-1:0]  max_elems_weight_mem   = K * K * TOTAL_IC * OC; 
    
    /***** Total Elems which will be transfered to CORE *****/
    wire [12:0] weight_ic_offset   = K * K * (TOTAL_IC);
    
    wire [ACT_PER_CORE-1:0] act_per_core       = (input_img_h * input_img_w); // strictly, it's per FSM iteration, not per core.
    wire [8:0]  weight_per_core                = (K * K * OC);                // strictly, it's per FSM iteration, not per core.
    
    /***** K=3: 1 IC per CORE / K=1: 3 IC per CORE *****/
    reg [1:0] ic_per_core_cnt;
    reg       was_core;
    
    /***** CORE checking regs *****/
    localparam LOG2_NUM_CORE  = $clog2(NUM_CORE);
    
    reg [NUM_CORE-1:0]        core_ready;
    reg [LOG2_NUM_CORE-1:0]   core_check_cnt;
    
    reg get_core;
    
    /***** Global Memory address counter *****/
    reg [ADDR_IN-1:0] input_mem_addr_reg;
    reg [ADDR_W-1:0]  weight_mem_addr_reg;
    
    /***** counter to check number of datas send to CORE *****/
    reg [ACT_PER_CORE-1:0]  input_per_core_cnt;
    reg [10:0]              weight_per_core_cnt;
    
    /***** FSM *****/
    reg [2:0] state, n_state;
    
    localparam IDLE                 = 3'd0;
    localparam CORE_CHECK           = 3'd1;
    localparam LOAD_DATA            = 3'd2;
    localparam IS_DONE              = 3'd3;
    localparam DONE                 = 3'd4;
    
    /***** assign ports to appropriate regs *****/
    assign input_mem_addr   = input_mem_addr_reg;
    assign input_mem_en     = (state != IDLE);
    
    reg [8:0]     weight_oc_iter;    // MAX: 512 total IC in yolov8n network
    reg [9:0]     weight_current_ic;
    reg [3:0]     weight_ic_cnt;
    assign weight_mem_addr  = weight_oc_iter * weight_ic_offset + weight_current_ic * K * K + weight_ic_cnt;
    assign weight_mem_en    = (state != IDLE);
    
    ////////////////////////////////////////
    // for address output, synchronized with data out of GLB
    reg [ACT_PER_CORE-1:0]  input_per_core_cnt_delay;
    reg [10:0]              weight_per_core_cnt_delay;
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            input_per_core_cnt_delay    <= 0;
            weight_per_core_cnt_delay   <= 0;
        end
        else begin 
            input_per_core_cnt_delay    <= input_per_core_cnt;
            weight_per_core_cnt_delay   <= weight_per_core_cnt;
        end
    end
    
    ////////////////////////////////////////
    assign act_row_mem_data = input_mem_data;
    assign act_row_mem_addr = input_per_core_cnt_delay;

    assign weight_row_mem_data  = weight_mem_data;
    assign weight_row_mem_addr  = weight_per_core_cnt_delay;
    
    assign done = (state==DONE || state==IDLE);

    always @(posedge clk or negedge resetn) begin
        if(~resetn) state <= IDLE;
        else state <= n_state;
    end
    
     always @(*) begin
        case (state)
        IDLE : begin 
            if(start) begin
                n_state = CORE_CHECK;
            end               
            else n_state = IDLE;
        end
        CORE_CHECK : begin
            if(get_core == 1)                              n_state = LOAD_DATA;
            else                                           n_state = CORE_CHECK;
        end
        LOAD_DATA : begin
            was_core = 1;
            if(input_per_core_cnt >= (act_per_core - 1) && weight_per_core_cnt >= (weight_per_core - 1)) n_state = IS_DONE;
            else n_state = LOAD_DATA;
        end
        IS_DONE : begin
            if(input_mem_addr_reg >= (max_elems_input_mem-1) && weight_mem_addr_reg >=( max_elems_weight_mem-1))    n_state = DONE;
            else                                                                                                    n_state = CORE_CHECK;
        end
        DONE : begin
            n_state = IDLE;
        end
        default :  n_state = IDLE;
        endcase
    end
    
    /***** Update CORE status *****/
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            core_ready        <= 0;
            get_core                <= 0;
        end
        else begin
            case (state)
                IDLE : begin
                    core_ready        <= core_ready;
                    get_core                <= 0;
                end
                CORE_CHECK : begin
                    if(which_core_done[core_check_cnt] == 1) begin
                        core_ready[core_check_cnt] <= 0;
                    end
                    
                    if(core_ready[core_check_cnt] == 0 && get_core == 0) begin
                        get_core    <= 1;
                        core_ready[core_check_cnt] <= 1;
                    end
                    else get_core    <= 0;
                end
                default :  begin
                    core_ready        <= core_ready;
                    get_core          <= 0;
                end
            endcase
        end
    end
    
    /***** Check whether there is available CORE *****/
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
//            dense_core_ready        <= 0;
//            sparse_core_ready       <= 0;
            core_check_cnt    <= 0;
        end
        else begin
            case (state)
                IDLE : begin
                    core_check_cnt    <= 0;      
                end
                CORE_CHECK : begin
                    if(core_check_cnt >= NUM_CORE-1)    core_check_cnt    <= 0;
                    else if (get_core == 1)             core_check_cnt    <= core_check_cnt;
                    else                                core_check_cnt    <= core_check_cnt + 1;
                end
                default :  begin
                    core_check_cnt    <= core_check_cnt;
                end
            endcase
        end
    end
    
    /***** Load Data to available CORE *****/
//    reg [ACT_PER_CORE-1:0]    act_row_mem_addr_reg;
//    reg [WEIGHT_PER_CORE-1:0] weight_row_mem_addr_reg;
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            input_mem_addr_reg    <= 0;
            input_per_core_cnt    <= 0;
        end
        else begin
            case (state)
                IDLE : begin
                    input_mem_addr_reg     <= 0;
                    weight_mem_addr_reg    <= 0;
                    
                    input_per_core_cnt     <= 0;
                    weight_per_core_cnt    <= 0;
                    
                    weight_ic_cnt          <= 0;
                    weight_oc_iter  <= 0;
                end
                LOAD_DATA : begin
                    input_mem_addr_reg   <= input_mem_addr_reg + 1;
                    input_per_core_cnt   <= input_per_core_cnt + 1;
                    
                    if(weight_per_core_cnt == weight_per_core) begin
                        weight_mem_addr_reg  <= weight_mem_addr_reg;
                        weight_per_core_cnt  <= weight_per_core_cnt; 
                    end
                    else begin
                        weight_mem_addr_reg  <= weight_mem_addr_reg + 1;
                        weight_per_core_cnt  <= weight_per_core_cnt + 1;
                        if(weight_ic_cnt == K*K-1) begin
                            weight_ic_cnt           <= 0;
                            weight_oc_iter   <= weight_oc_iter + 1;
                        end
                        else begin
                            weight_ic_cnt <= weight_ic_cnt + 1;
                        end
                    end
                end
                default :  begin
                    input_mem_addr_reg     <= input_mem_addr_reg;
                    input_per_core_cnt     <= 0;
                    
                    weight_mem_addr_reg    <= weight_mem_addr_reg;
                    weight_per_core_cnt    <= 0;
                    
                    weight_ic_cnt          <= 0;
                    weight_oc_iter  <= 0;
                end
            endcase
        end
    end
    
    /***** update current ic *****/
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            weight_current_ic    <= 0;
            ic_per_core_cnt      <= 0;
        end
        else begin
            case (state)
                IDLE : begin
                    weight_current_ic      <= 0;
                    ic_per_core_cnt        <= 0;
                end
                IS_DONE : begin
                    weight_current_ic    <= weight_current_ic + 1;
                    if(K!=3 && (ic_per_core_cnt < 2)) ic_per_core_cnt <= ic_per_core_cnt + 1;
                    else                              ic_per_core_cnt <= 0;
                end
                default :  begin
                    weight_current_ic    <= weight_current_ic;
                    ic_per_core_cnt      <= ic_per_core_cnt;
                end
            endcase
        end
    end
    
    /***** CORE start signal  *****/
    reg [NUM_CORE-1:0]        which_core_start_reg;
    
    assign which_core_start   = which_core_start_reg;
    
    ////////////////////////////////////////
    // get_core_delay & check_cnt_delay to synchronize with was_dense_core flag
    reg get_core_delay;
    reg [LOG2_NUM_CORE-1:0]   core_check_cnt_delay, core_check_cnt_delay2;
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            get_core_delay <= 0;
            core_check_cnt_delay  <= 0; core_check_cnt_delay2  <= 0;
        end
        else begin
            get_core_delay <= get_core;
            core_check_cnt_delay  <= core_check_cnt;  core_check_cnt_delay2  <= core_check_cnt_delay;
        end
    end
    ////////////////////////////////////////
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            which_core_start_reg        <= 0;
        end
        else begin
            if(get_core_delay && was_core) begin
                which_core_start_reg[core_check_cnt_delay2] <= 1;  
            end
            else begin
                which_core_start_reg  <= 0;
            end
        end
    end

endmodule