
`timescale 1ns / 1ps

module dense_pe#(
    // SRAM address widths (enough to cover depth)
    parameter ADDR_PSUM             = 11,           // 2^11 = 2048 > 32x32 = 1024
    parameter INPUT_BW              = 8,            // 8bit Data comes from AXI interface
    parameter PSUM_BW               = 32,           // 8bit Data goes to AXI interface (after Quantization)
    parameter IA_ROW_MEM_ADDR       = 7,
    parameter WEIGHT_ROW_MEM_ADDR   = 7
    )(
    input wire clk,
    input wire resetn,
    // ------------------------------------------------------------------------
    // Configurable Data
    // ------------------------------------------------------------------------
    input wire start,
    input  wire [2:0] K,        // Max: 3
    input  wire [5:0] IMG_W,    // Tile_Size_oc_W = 32
    input  wire [7:0] OC,       // Tile_Size_oc = 32
    input  wire [2:0] STRIDE,
    output wire done,
    // ------------------------------------------------------------------------
    // ia_row_mem outputs & read
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]   ia_row_mem_data,
    input wire                         ia_row_mem_activate,
    output wire [IA_ROW_MEM_ADDR-1:0]  ia_row_mem_addr,
    output wire                        ia_row_mem_en,
    // ------------------------------------------------------------------------
    // weight_row_mem outputs & read
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]       weight_row_mem_data,
    input wire                             weight_row_mem_activate,
    output wire [WEIGHT_ROW_MEM_ADDR-1:0]  weight_row_mem_addr,
    output wire                            weight_row_mem_en,
    // ------------------------------------------------------------------------
    // nework within pe
    // ------------------------------------------------------------------------
    input wire [1:0]                        left_stride_in,
    input wire signed [INPUT_BW-1:0]        left_ia_data_in,
    input wire signed [INPUT_BW-1:0]        left_weight_data_in,
    
    input wire [1:0]                        bottom_y_in,
    input wire signed [INPUT_BW-1:0]        bottom_ia_data_in,
    input wire signed [PSUM_BW-1:0]         bottom_psum_data_in,
    input wire signed [ADDR_PSUM-1:0]       bottom_psum_addr_in,
    
    output wire [1:0]                       right_stride_out,
    output wire signed [INPUT_BW-1:0]       right_ia_data_out,
    output wire signed [INPUT_BW-1:0]       right_weight_data_out,
    
    output wire [1:0]                       top_y_out,
    output wire signed [INPUT_BW-1:0]       top_ia_data_out,
    output wire signed [PSUM_BW-1:0]        top_psum_data_out,
    output wire signed [ADDR_PSUM-1:0]      top_psum_addr_out
    );
    
    // pe.v�� �ڽſ��� �Ҵ�� ia_row_mem�� acitvate�Ǿ����� dense_core.v -> pe_array.v�κ��� ���� 
    // activate�Ǿ�����, row_mem_fetch.v���� ���� enable��ȣ�� pe_array.v�� ���޵Ǿ�, row_mem���� data�� ������
    // activate�� �ƴϸ�, row_mem_fetch.v���� ���� enable��ȣ�� ���õǰ�, row_mem_fetch.v�� ����, �ٸ� pe�� ����� ����
    
    // ------------------------------------------------------------------------
    // FSM
    // ------------------------------------------------------------------------
    reg [2:0] state, n_state;
    
    localparam IDLE     = 3'd0;
    localparam PREPARE  = 3'd1;
    localparam COMPUTE  = 3'd2;
    
    /***** regs or wires for row_mem_fetch *****/
    reg [IA_ROW_MEM_ADDR-1:0]       ia_row_mem_addr_reg;
    reg [IA_ROW_MEM_ADDR-1:0]       ia_row_mem_addr_reg_delay;
    reg                             ia_row_mem_en_reg;
    reg [WEIGHT_ROW_MEM_ADDR-1:0]   weight_row_mem_addr_reg;
    reg [WEIGHT_ROW_MEM_ADDR-1:0]   weight_row_mem_addr_reg_delay;
    reg                             weight_row_mem_en_reg;
    
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
                if(ia_row_mem_addr_reg == 1)      n_state = COMPUTE;
                else                              n_state = PREPARE;
            end
            COMPUTE : begin 
                n_state = COMPUTE;
            end
            default :  n_state = IDLE;
        endcase
    end
    
    // ------------------------------------------------------------------------
    // row_mem_fetch Logic
    // ------------------------------------------------------------------------
    assign ia_row_mem_addr      = ia_row_mem_addr_reg_delay;
    assign ia_row_mem_en        = ia_row_mem_en_reg;
    assign weight_row_mem_addr  = weight_row_mem_addr_reg_delay;
    assign weight_row_mem_en    = weight_row_mem_en_reg;
    
    wire [1:0]                       stride_2_pe_net        = STRIDE;
    wire signed [INPUT_BW-1:0]       ia_data_2_pe_net       = left_ia_data_in;
    wire signed [INPUT_BW-1:0]       weight_data_2_pe_net   = (weight_row_mem_activate) ? weight_row_mem_data: left_weight_data_in;
    
    /***** regs or wires for mac.v *****/
    wire ia_need, weight_need;  // used in COMPUTE state
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            ia_row_mem_addr_reg     <= 0;
            ia_row_mem_en_reg       <= 0;
            weight_row_mem_addr_reg <= 0;
            weight_row_mem_en_reg   <= 0;
        end
        else begin
            case (state)
                PREPARE : begin
                    ia_row_mem_addr_reg     <= ia_row_mem_addr_reg + 1;
                    weight_row_mem_addr_reg <= weight_row_mem_addr_reg + 1;
                    
                    if(ia_row_mem_activate) ia_row_mem_en_reg <= 1;
                    else                    ia_row_mem_en_reg <= 0;
                    
                    if(weight_row_mem_activate) weight_row_mem_en_reg <= 1;
                    else                        weight_row_mem_en_reg <= 0;
                end
                COMPUTE : begin
                    if(ia_need == 1) begin
                        ia_row_mem_addr_reg     <= ia_row_mem_addr_reg + 1;
                        if(ia_row_mem_activate) ia_row_mem_en_reg <= 1;
                        else                    ia_row_mem_en_reg <= 0;
                    end
                    else begin
                        ia_row_mem_addr_reg  <= ia_row_mem_addr_reg;
                        ia_row_mem_en_reg    <= 0;
                    end
                    
                    if(weight_need == 1) begin
                        weight_row_mem_addr_reg     <= weight_row_mem_addr_reg + 1;
                        if(weight_row_mem_activate) weight_row_mem_en_reg <= 1;
                        else                        weight_row_mem_en_reg <= 0;
                    end
                    else begin
                        weight_row_mem_addr_reg  <= weight_row_mem_addr_reg;
                        weight_row_mem_en_reg    <= 0;
                    end
                end
                default :  begin
                    ia_row_mem_addr_reg     <= 0;
                    ia_row_mem_en_reg       <= 0;
                    weight_row_mem_addr_reg <= 0;
                    weight_row_mem_en_reg   <= 0;
                end
            endcase
        end
    end
    
        
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            ia_row_mem_addr_reg_delay     <= 0;
            weight_row_mem_addr_reg_delay <= 0;
        end
        else begin
            ia_row_mem_addr_reg_delay     <= ia_row_mem_addr_reg;
            weight_row_mem_addr_reg_delay <= weight_row_mem_addr_reg;
        end
    end
    
    // ------------------------------------------------------------------------
    // mac.v
    // ------------------------------------------------------------------------
    
    
    
    
    
    
    // ------------------------------------------------------------------------
    // pe_net_ctrlr.v
    // ------------------------------------------------------------------------
    
    
    
    
    
    
    
    
    endmodule

    /****************************** dummy example ******************************/
//    // Internal counters for address generation
//    reg [IA_ROW_MEM_ADDR-1:0]       ia_addr_cnt;
//    reg [WEIGHT_ROW_MEM_ADDR-1:0]   weight_addr_cnt;
    
//    assign ia_row_mem_addr  = ia_addr_cnt;
//    assign ia_row_mem_en    = 1'b1;
    
//    // dummy FSM
//    reg [2:0] state, n_state;
    
//    localparam IDLE         = 3'd0;
//    localparam WORKING      = 3'd1;
    
//    always @(posedge clk or negedge resetn) begin
//        if(~resetn) state <= IDLE;
//        else state <= n_state;
//    end
    
//     always @(*) begin
//        case (state)
//            IDLE : begin 
//                if(start) begin
//                    n_state = WORKING;
//                end               
//                else n_state = IDLE;
//            end
//            WORKING : begin
//                if(ia_row_mem_addr >= IMG_W)    n_state = IDLE;
//                else                            n_state = WORKING;
//            end
//            default :  n_state = IDLE;
//        endcase
//    end

//    // Sequential logic for reading data and systolic flow
//    always @(posedge clk or negedge resetn) begin
//        if (!resetn) begin
//            ia_addr_cnt     <= 0;
//            weight_addr_cnt <= 0;
//        end 
//        else begin
//            if (state==WORKING && ia_row_mem_activate) begin
//                    ia_addr_cnt <= ia_addr_cnt + 1;
//            end
//        end
//    end
    /**************************************************************************/