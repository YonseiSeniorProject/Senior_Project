
`timescale 1ns / 1ps

module pe_array#(
    // SRAM address widths (enough to cover depth)
    parameter ADDR_PSUM             = 12,           // 2^12 = 4096 > 32x64 = 2048
    parameter INPUT_BW              = 8,            // 8bit Data comes from AXI interface
    parameter PSUM_BW               = 32,           // 8bit Data goes to AXI interface (after Quantization)
    parameter IA_ROW_MEM_ADDR       = 7,
    parameter WEIGHT_ROW_MEM_ADDR   = 8,
    parameter NUM_ROWS              = 32,
    parameter NUM_IA_ROW_MEM        = 96,
    parameter NUM_COLS              = 32,           // PE �� ��
    parameter NUM_PE_ROWS           = 3,            // PE �� ��
    parameter NUM_WEIGHT_ROW_MEM    = 3
    )(
    input wire clk,
    input wire resetn,
    // ------------------------------------------------------------------------
    // Configurable Data
    // ------------------------------------------------------------------------
    input wire start,
    input  wire [2:0] K,        // Max: 3
    input  wire [5:0] IMG_H,    // Tile_Size_oc_H = 32
    input  wire [5:0] IMG_W,    // Tile_Size_oc_W = 32
    input  wire [7:0] OC,       // Tile_Size_oc = 64
    input  wire [2:0] STRIDE,
    output wire done,
    // ------------------------------------------------------------------------
    // ia_row_mem outputs & read
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW*NUM_IA_ROW_MEM-1:0]     ia_row_mem_data,
//    input wire [NUM_IA_ROW_MEM-1:0]                     which_ia_row_mem_activate,
    output wire [IA_ROW_MEM_ADDR*NUM_IA_ROW_MEM-1:0]    ia_row_mem_addr,
    output wire [NUM_IA_ROW_MEM-1:0]                    which_ia_row_mem_en,
    // ------------------------------------------------------------------------
    // weight_row_mem outputs & read
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW*NUM_WEIGHT_ROW_MEM-1:0]         weight_row_mem_data,
    output wire [WEIGHT_ROW_MEM_ADDR*NUM_WEIGHT_ROW_MEM-1:0]    weight_row_mem_addr,
    output wire [NUM_WEIGHT_ROW_MEM-1:0]                        which_weight_row_mem_en,
    // ------------------------------------------------------------------------
    // psum from core 32bit x 32rows (2-D shape array like wire or reg ports is not supported in verilog)
    // ------------------------------------------------------------------------
    output wire [PSUM_BW*NUM_ROWS-1:0]      psum_rows,
    output wire [ADDR_PSUM*NUM_ROWS-1:0]    psum_addrs
    );
    
    // row_mem�� �ִ� data�� �ʿ��� ��, �� pe�� addr, enable��ȣ�� ���� core.v�κ��� row_mem�� data �޾ƿ�
    // pe_array�� pe.v�� 96�� �����ϰ�, �� pe.v�� ia_row_mem�� weight_row_mem�� ������ wiring����
    // ex. pe[0]�� ia_row_mem[0]�� weight_row_mem[0]�� ����, pe[1]�� ia_row_mem[1]�� ����, pe[1]�� weight_row_mem �Ҵ� X
    // ex. pe[32]�� ia_row_mem[32]�� weight_row_mem[1]�� ����, pe[33]�� ia_row_mem[33]�� ����, pe[33]�� weight_row_mem �Ҵ� X
     
    // pe�� network�� wiring����� ��
    // ------------------------------------------------------------------------
    // FSM
    // ------------------------------------------------------------------------
    reg [2:0] state, n_state;
    
    localparam IDLE     = 3'd0;
    localparam COMPUTE  = 3'd1;
    
    wire all_pe_done;    
    assign done = (state==IDLE);
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) state <= IDLE;
        else state <= n_state;
    end
    
     always @(*) begin
        case (state)
            IDLE : begin 
                if(start) begin
                    n_state = COMPUTE;
                end               
                else n_state = IDLE;
            end
            COMPUTE : begin 
                if(all_pe_done) n_state = IDLE;
                                n_state = COMPUTE;
            end
            default :  n_state = IDLE;
        endcase
    end
    
    /***** within pe network wire (3 rows x 32 cols) *****/
//    wire signed [1:0]           right_stride_out        [0:NUM_PE_ROWS-1][0:NUM_COLS-1];
//    wire signed [INPUT_BW-1:0]  right_ia_data_out       [0:NUM_PE_ROWS-1][0:NUM_COLS-1];
    wire signed [INPUT_BW-1:0]  right_weight_data_out   [0:NUM_PE_ROWS-1][0:NUM_COLS-1];
   
//    wire signed [1:0]               top_y_out           [0:NUM_PE_ROWS-1][0:NUM_COLS-1];
//    wire signed [INPUT_BW-1:0]      top_ia_data_out     [0:NUM_PE_ROWS-1][0:NUM_COLS-1];
    wire signed [PSUM_BW-1:0]       top_psum_data_out   [0:NUM_PE_ROWS-1][0:NUM_COLS-1];
    wire signed [ADDR_PSUM-1:0]     top_psum_addr_out   [0:NUM_PE_ROWS-1][0:NUM_COLS-1];
   
    /***** pe done signals *****/
    wire [NUM_IA_ROW_MEM-1:0] done_pe;
    assign all_pe_done = &done_pe;             // ��� PE done�� 1�� �� all_pe_done=1 (AND ����)
    
    // ------------------------------------------------------------------------
    // Logic for pe start (need to start sequentially / ex. cycle n���� column 0 start -> cycle n+1���� column 1 start)
    // ------------------------------------------------------------------------
    reg [NUM_COLS-1:0] start_array;
    reg [5:0] start_cnt, start_cnt_delay;
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            start_cnt_delay   <= 0;
        end
        else begin
            start_cnt_delay   <= start_cnt;
        end
    end
    
    always @(posedge clk or negedge resetn) begin
        if(~resetn) begin
            start_array <= 0;
            start_cnt   <= 0;
        end
        else begin
            if(state != IDLE) begin
                if(start_cnt == NUM_COLS) begin
                    start_cnt   <= start_cnt;
                    start_array <= 0;
                end
                else begin
                    start_cnt                       <= start_cnt + 1;
                    start_array[start_cnt_delay]    <= 0;
                    start_array[start_cnt]          <= 1;
                end
            end
            else begin
                start_cnt   <= 0;
                start_array <= 0;
            end
        end
    end
    
    /***** PE instancing (NUM_PE_ROWS=3, NUM_COLS=32) *****/
    genvar r, c;
    generate
        for (r = 0; r < NUM_PE_ROWS; r = r + 1) begin : gen_rows
            for (c = 0; c < NUM_COLS; c = c + 1) begin : gen_cols
                localparam idx = r * NUM_COLS + c;
               
                // �� PE�� ia_row_mem_addr�� weight_row_mem_addr�� ���� ���� wire (���� ó��)
                wire [IA_ROW_MEM_ADDR -1:0]     pe_ia_row_mem_addr;
                wire [INPUT_BW-1:0]             pe_weight_row_mem_data;
                wire [WEIGHT_ROW_MEM_ADDR-1:0]  pe_weight_row_mem_addr;
                wire                            pe_weight_row_mem_en;
               
                // ia_addr �迭�� ���� assign (�� PE�� ����)
                assign ia_row_mem_addr[IA_ROW_MEM_ADDR*(idx+1)-1 : IA_ROW_MEM_ADDR*idx] = pe_ia_row_mem_addr;
               
                // weight_addr: ù col(c==0)�� assign (weight�� row���� ù PE�� ����)
                if (c == 0) begin
                    assign pe_weight_row_mem_data                                                   = weight_row_mem_data[INPUT_BW*(r+1)-1 : INPUT_BW*r];
                    assign weight_row_mem_addr[WEIGHT_ROW_MEM_ADDR*(r+1)-1 : WEIGHT_ROW_MEM_ADDR*r] = pe_weight_row_mem_addr;
                    assign which_weight_row_mem_en[r]                                               = pe_weight_row_mem_en;
                end
               
                // �� PE instancing
                pe #(
                    .ADDR_PSUM(ADDR_PSUM),
                    .INPUT_BW(INPUT_BW),
                    .PSUM_BW(PSUM_BW),
                    .IA_ROW_MEM_ADDR(IA_ROW_MEM_ADDR),
                    .WEIGHT_ROW_MEM_ADDR(WEIGHT_ROW_MEM_ADDR)
                ) pe_inst (
                    .clk(clk),
                    .resetn(resetn),
                   
                    .start(start_array[c]),
                    .K(K),
                    .IMG_W(IMG_W),
                    .OC(OC),
                    .STRIDE(STRIDE),
                    .done(done_pe[idx]),
                   
                    // ia_row_mem: data�� addr�� �� PE�� slice�� ���� ����
                    .ia_row_mem_data(ia_row_mem_data[INPUT_BW*(idx+1)-1 : INPUT_BW*idx]),
//                    .ia_row_mem_activate(which_ia_row_mem_activate[idx]),
                    .ia_row_mem_addr(pe_ia_row_mem_addr),               // ���� wire
                    .ia_row_mem_en(which_ia_row_mem_en[idx]),
                   
                    // weight_row_mem: data�� �ະ slice�� ����, addr�� ���� wire (ù col�� ������ assign)
                    .weight_row_mem_data(pe_weight_row_mem_data),
                    .weight_row_mem_activate(c == 0),                                   // ù col�� activate (���� ����)
                    .weight_row_mem_addr(pe_weight_row_mem_addr),                       // ���� wire
                    .weight_row_mem_en(pe_weight_row_mem_en),                           // ���� wire
                   
                    // left inputs (col=0: 0, else previous col)
//                    .left_stride_in((c == 0)        ? 2'sb0             : right_stride_out[r][c-1]),
//                    .left_ia_data_in((c == 0)       ? {INPUT_BW{1'b0}}  : right_ia_data_out[r][c-1]),
                    .left_weight_data_in((c == 0)   ? {INPUT_BW{1'b0}}  : right_weight_data_out[r][c-1]),
                   
                    // bottom inputs (row=2: 0, else previous row -> [row 2 is most bottom row, IA must be transfered to upper rows by pe net])
//                    .bottom_y_in((r == NUM_PE_ROWS-1)           ? 2'sb0             : top_y_out[r+1][c]),
//                    .bottom_ia_data_in((r == NUM_PE_ROWS-1)     ? {INPUT_BW{1'b0}}  : top_ia_data_out[r+1][c]),
                    .bottom_psum_data_in((r == NUM_PE_ROWS-1)   ? {PSUM_BW{1'b0}}   : top_psum_data_out[r+1][c]),
                    .bottom_psum_addr_in((r == NUM_PE_ROWS-1)   ? {ADDR_PSUM{1'b0}} : top_psum_addr_out[r+1][c]),
                   
                    // right outputs
//                    .right_stride_out(right_stride_out[r][c]),
//                    .right_ia_data_out(right_ia_data_out[r][c]),
                    .right_weight_data_out(right_weight_data_out[r][c]),
                   
                    // top outputs
//                    .top_y_out(top_y_out[r][c]),
//                    .top_ia_data_out(top_ia_data_out[r][c]),
                    .top_psum_data_out(top_psum_data_out[r][c]),
                    .top_psum_addr_out(top_psum_addr_out[r][c])
                );
            end
        end
    endgenerate
   
    // psum_rows�� psum_addrs concatenate (�� �� row�� col0 ~ col31)
    genvar i;
    generate
        for (i = 0; i < NUM_COLS; i = i + 1) begin : gen_psum_out
            assign psum_rows[PSUM_BW*(i+1) - 1 : PSUM_BW*(i)]       = top_psum_data_out[NUM_PE_ROWS-1][i];
            assign psum_addrs[ADDR_PSUM*(i+1) - 1 : ADDR_PSUM*(i)]  = top_psum_addr_out[NUM_PE_ROWS-1][i];
        end
    endgenerate
    
    
    
    endmodule