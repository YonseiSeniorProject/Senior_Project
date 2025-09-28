
`timescale 1ns / 1ps

module data_2_row_mem #(
    // SRAM address widths
    parameter ACT_PER_CORE          = 11,
    parameter WEIGHT_PER_CORE       = 9,
    parameter INPUT_BW              = 8,
    parameter IA_ROW_MEM_ADDR       = 6,
    parameter WEIGHT_ROW_MEM_ADDR   = 7,
    parameter NUM_IA_ROW_MEM        = 96,
    parameter NUM_WEIGHT_ROW_MEM    = 3
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
    input  wire [5:0] OC,
    input  wire [5:0] IMG_H,
    input  wire [5:0] IMG_W,
    input  wire [2:0] K,
    // ------------------------------------------------------------------------
    // activation inputs from act_n_weight_ctrlr
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]   act_row_mem_data,
    input wire [ACT_PER_CORE-1:0]      act_row_mem_addr,
    // ------------------------------------------------------------------------
    // weight inputs from act_n_weight_ctrlr
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]       weight_row_mem_data,
    input wire [WEIGHT_PER_CORE-1:0]       weight_row_mem_addr,
    // ------------------------------------------------------------------------
    // act_row_mem outputs & write
    // ------------------------------------------------------------------------
    output wire signed [INPUT_BW-1:0]   act_row_mem_each_data,
    output wire [IA_ROW_MEM_ADDR-1:0]   act_row_mem_each_addr,
    output wire [NUM_IA_ROW_MEM-1:0]    which_act_row_mem_en,
    output wire [NUM_IA_ROW_MEM-1:0]    which_act_row_mem_we,
    // ------------------------------------------------------------------------
    // weight_row_mem outputs & write
    // ------------------------------------------------------------------------
    output wire signed [INPUT_BW-1:0]       weight_row_mem_each_data,
    output wire [WEIGHT_ROW_MEM_ADDR-1:0]   weight_row_mem_each_addr,
    output wire [NUM_WEIGHT_ROW_MEM-1:0]    which_weight_row_mem_en,
    output wire [NUM_WEIGHT_ROW_MEM-1:0]    which_weight_row_mem_we,
    // ------------------------------------------------------------------------
    // activation signals for each row_mems
    // ------------------------------------------------------------------------
    output wire [NUM_IA_ROW_MEM-1:0]        which_act_row_mem_activate,
    output wire [NUM_WEIGHT_ROW_MEM-1:0]    which_weight_row_mem_activate
    );
    
    /***** MAX Elems of each Global memory *****/
    wire [5:0] input_img_h        = IMG_H + K - 1;
    wire [5:0] input_img_w        = IMG_W + K - 1;
    
    wire [10:0] act_per_core       = (input_img_h * input_img_w); // strictly, it's per FSM iteration, not per core.
    wire [8:0]  weight_per_core    = (K * K * OC);                // strictly, it's per FSM iteration, not per core.
    
    /***** OFFSET since in case of K=3, ia_row_mems should be partially activated *****/
    localparam OFFSET = 32; // number of PEs in 1 row = number of columns
    
    /***** register for counting which row_mem is enabled *****/
    localparam LOG2_NUM_IA_ROW_MEM      = $clog2(NUM_IA_ROW_MEM);
    localparam LOG2_NUM_WEIGHT_ROW_MEM  = $clog2(NUM_WEIGHT_ROW_MEM);
    reg [LOG2_NUM_IA_ROW_MEM-1:0]       ia_row_mem_cnt;
    reg [LOG2_NUM_WEIGHT_ROW_MEM-1:0]   weight_row_mem_cnt;
    
    /***** IC iteration Count *****/
    reg [1:0] ic_iter_cnt;
    
    /***** FSM *****/
    reg [2:0] state, n_state;
    
    localparam IDLE         = 3'd0;
    localparam LOAD_DATA    = 3'd1;
    localparam DONE         = 3'd2;
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) state <= IDLE;
        else state <= n_state;
    end
    
     always @(*) begin
        case (state)
        IDLE : begin 
            if(start) begin
                n_state = LOAD_DATA;
            end               
            else n_state = IDLE;
        end
        LOAD_DATA : begin
            if(K!=3) begin
                if((ic_iter_cnt >= 2) && (act_row_mem_addr>=act_per_core) && (weight_row_mem_addr>=weight_per_core)) begin
                    n_state = DONE;
                end
                else begin
                    n_state = LOAD_DATA;
                end
            end
            else begin
                if((act_row_mem_addr>=act_per_core) && (weight_row_mem_addr>=weight_per_core)) begin
                    n_state = DONE;
                end
                else begin
                    n_state = LOAD_DATA;
                end
            end
        end
        DONE : begin
            n_state = IDLE;
        end
        default :  n_state = IDLE;
        endcase
    end

    /***** reg insertion *****/
    reg signed [INPUT_BW-1:0]   act_row_mem_data_reg;
    reg [ACT_PER_CORE-1:0]      act_row_mem_addr_reg;
    reg signed [INPUT_BW-1:0]   weight_row_mem_data_reg;
    reg [WEIGHT_PER_CORE-1:0]   weight_row_mem_addr_reg;
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            act_row_mem_data_reg        <= 0;
            act_row_mem_addr_reg        <= 0;
            weight_row_mem_data_reg     <= 0;
            weight_row_mem_addr_reg     <= 0;
        end
        else begin
            act_row_mem_data_reg    <= act_row_mem_data;
            act_row_mem_addr_reg    <= act_row_mem_addr;
            weight_row_mem_data_reg <= weight_row_mem_data;
            weight_row_mem_addr_reg <= weight_row_mem_addr;
        end
    end

    /***** IA transfer *****/
    reg [LOG2_NUM_IA_ROW_MEM-1:0]       ia_row_mem_cnt_delay;
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            ia_row_mem_cnt_delay <= 0;
        end
        else begin
            ia_row_mem_cnt_delay <= ia_row_mem_cnt;
        end
    end
    
    reg signed [INPUT_BW-1:0]   act_row_mem_each_data_reg;
    reg [IA_ROW_MEM_ADDR-1:0]   act_row_mem_each_addr_reg;
    reg [NUM_IA_ROW_MEM-1:0]    which_act_row_mem_en_reg;
    reg [NUM_IA_ROW_MEM-1:0]    which_act_row_mem_we_reg;
    reg [1:0]                   offset_cnt;
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            act_row_mem_each_data_reg   <= 0;
            act_row_mem_each_addr_reg   <= 0;
            which_act_row_mem_en_reg    <= 0;
            which_act_row_mem_we_reg    <= 0;
            ia_row_mem_cnt              <= 0;
            offset_cnt                  <= 0;
            ic_iter_cnt                 <= 0;
        end
        else begin
            case (state)
                LOAD_DATA : begin
                    // restore previous enable signal to zero
                    if(ia_row_mem_cnt_delay != ia_row_mem_cnt) begin 
                        which_act_row_mem_en_reg[ia_row_mem_cnt_delay] <= 0;
                        which_act_row_mem_we_reg[ia_row_mem_cnt_delay] <= 0;
                    end
                    
                    act_row_mem_each_data_reg <= act_row_mem_data_reg;
                    act_row_mem_each_addr_reg <= act_row_mem_addr_reg % input_img_w;
                    which_act_row_mem_en_reg[ia_row_mem_cnt] <= 1;
                    which_act_row_mem_we_reg[ia_row_mem_cnt] <= 1;
  
                    if ((act_row_mem_addr_reg % input_img_w) == input_img_w - 1) begin
                        if (K==3) begin
                            if (offset_cnt < 2) begin
                                offset_cnt <= offset_cnt + 1;
                                ia_row_mem_cnt <= ia_row_mem_cnt + OFFSET;
                            end
                            else begin 
                                offset_cnt <= offset_cnt;
                                ia_row_mem_cnt <= ia_row_mem_cnt + 1;
                            end
                        end
                        else begin
                            ia_row_mem_cnt <= ia_row_mem_cnt + 1;
                            if(act_row_mem_addr_reg >= act_per_core - 1) begin
                                ic_iter_cnt <= ic_iter_cnt + 1;
                            end
                        end
                    end
                end
                default :  begin
                    act_row_mem_each_data_reg   <= 0;
                    act_row_mem_each_addr_reg   <= 0;
                    which_act_row_mem_en_reg    <= 0;
                    which_act_row_mem_we_reg    <= 0;
                    ia_row_mem_cnt              <= 0;
                    offset_cnt                  <= 0;
                    ic_iter_cnt                 <= 0;
                end
            endcase
        end
    end

    /***** Weight transfer *****/
    reg [LOG2_NUM_WEIGHT_ROW_MEM-1:0]   weight_row_mem_cnt_delay;
    reg [WEIGHT_PER_CORE-1:0]           weight_row_mem_addr_reg_delay;
    reg [1:0] ic_iter_cnt_delay;
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            weight_row_mem_cnt_delay        <= 0;
            weight_row_mem_addr_reg_delay   <= 0;
            ic_iter_cnt_delay               <= 0;
        end
        else begin
            weight_row_mem_cnt_delay        <= weight_row_mem_cnt;
            weight_row_mem_addr_reg_delay   <= weight_row_mem_addr_reg;
            ic_iter_cnt_delay               <= ic_iter_cnt;
        end
    end
    
    reg signed [INPUT_BW-1:0]       weight_row_mem_each_data_reg;
    reg [WEIGHT_ROW_MEM_ADDR-1:0]   weight_row_mem_each_addr_reg;
    reg [NUM_WEIGHT_ROW_MEM-1:0]    which_weight_row_mem_en_reg;
    reg [NUM_WEIGHT_ROW_MEM-1:0]    which_weight_row_mem_we_reg;
    reg [5:0]                       weight_oc_iter;
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            weight_row_mem_cnt           <= 0;
            weight_row_mem_each_data_reg <= 0;
            weight_row_mem_each_addr_reg <= 0;
            which_weight_row_mem_en_reg  <= 0;
            which_weight_row_mem_we_reg  <= 0;
            weight_oc_iter               <= 0;
        end
        else begin
            case (state)
                LOAD_DATA : begin
                    // restore previous enable signal to zero
                    if(weight_row_mem_cnt_delay != weight_row_mem_cnt || ic_iter_cnt != ic_iter_cnt_delay) begin
                        which_weight_row_mem_en_reg[weight_row_mem_cnt_delay+ic_iter_cnt_delay] <= 0;
                        which_weight_row_mem_we_reg[weight_row_mem_cnt_delay+ic_iter_cnt_delay] <= 0;
                    end
                    
                    weight_row_mem_each_data_reg                    <= weight_row_mem_data_reg;
                    weight_row_mem_each_addr_reg                    <= ((weight_row_mem_addr_reg % K) + weight_oc_iter*K);
                    which_weight_row_mem_en_reg[weight_row_mem_cnt+ic_iter_cnt] <= 1;
                    which_weight_row_mem_we_reg[weight_row_mem_cnt+ic_iter_cnt] <= 1;
                    
                    if(weight_row_mem_addr_reg % K == (K-1)) begin
                        if(weight_row_mem_cnt == K-1)  weight_row_mem_cnt <= 0;
                        else                           weight_row_mem_cnt <= weight_row_mem_cnt + 1;
                    end
                    
                    if(weight_row_mem_addr_reg % (K*K) == (K*K-1)) begin
                        if((weight_row_mem_addr_reg >= weight_per_core-1))            weight_oc_iter <= 0;
                        else if ((weight_row_mem_addr != weight_row_mem_addr_reg))    weight_oc_iter <= weight_oc_iter + 1;
                        else                                                          weight_oc_iter <= weight_oc_iter;
                    end
                end
                default :  begin
                    weight_row_mem_cnt           <= 0;
                    weight_row_mem_each_data_reg <= 0;
                    weight_row_mem_each_addr_reg <= 0;
                    which_weight_row_mem_en_reg  <= 0;
                    which_weight_row_mem_we_reg  <= 0;
                    weight_oc_iter               <= 0;
                end
            endcase
        end
    end

endmodule 
