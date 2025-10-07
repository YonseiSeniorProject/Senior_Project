
`timescale 1ns / 1ps

module dense_pe#(
    // SRAM address widths (enough to cover depth)
    parameter ADDR_PSUM             = 11,           // 2^11 = 2048 > 32x32 = 1024
    parameter INPUT_BW              = 8,            // 8bit Data comes from AXI interface
    parameter PSUM_BW               = 32,           // 8bit Data goes to AXI interface (after Quantization)
    parameter IA_ROW_MEM_ADDR       = 6,
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
    input wire signed [1:0]                 left_stride_in,
    input wire signed [INPUT_BW-1:0]        left_ia_data_in,
    input wire signed [INPUT_BW-1:0]        left_weight_data_in,
    
    input wire signed [1:0]                 bottom_y_in,
    input wire signed [INPUT_BW-1:0]        bottom_ia_data_in,
    input wire signed [PSUM_BW-1:0]         bottom_psum_data_in,
    input wire signed [ADDR_PSUM-1:0]       bottom_psum_addr_in,
    
    output wire signed [1:0]                right_stride_out,
    output wire signed [INPUT_BW-1:0]       right_ia_data_out,
    output wire signed [INPUT_BW-1:0]       right_weight_data_out,
    
    output wire signed [1:0]                top_y_out,
    output wire signed [INPUT_BW-1:0]       top_ia_data_out,
    output wire signed [PSUM_BW-1:0]        top_psum_data_out,
    output wire signed [ADDR_PSUM-1:0]      top_psum_addr_out
    );
    
    // pe.v는 자신에게 할당된 ia_row_mem이 acitvate되었는지 dense_core.v -> pe_array.v로부터 받음 
    // activate되었으면, row_mem_fetch.v에서 보낸 enable신호가 pe_array.v에 전달되어, row_mem에서 data를 가져옴
    // activate가 아니면, row_mem_fetch.v에서 보낸 enable신호는 무시되고, row_mem_fetch.v는 그저, 다른 pe간 연결로 사용됨

    /****************************** dummy example ******************************/
    // Internal counters for address generation
    reg [IA_ROW_MEM_ADDR-1:0]       ia_addr_cnt;
    reg [WEIGHT_ROW_MEM_ADDR-1:0]   weight_addr_cnt;
    
    assign ia_row_mem_addr  = ia_addr_cnt;
    assign ia_row_mem_en    = 1'b1;
    
    // dummy FSM
    reg [2:0] state, n_state;
    
    localparam IDLE         = 3'd0;
    localparam WORKING      = 3'd1;
    
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
                if(ia_row_mem_addr >= IMG_W)    n_state = IDLE;
                else                            n_state = WORKING;
            end
            default :  n_state = IDLE;
        endcase
    end

    // Sequential logic for reading data and systolic flow
    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            ia_addr_cnt     <= 0;
            weight_addr_cnt <= 0;
        end 
        else begin
            if (state==WORKING) begin
                    ia_addr_cnt <= ia_addr_cnt + 1;
            end
        end
    end
    /**************************************************************************/
    
    
    endmodule