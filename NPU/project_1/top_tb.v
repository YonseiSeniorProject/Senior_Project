//`timescale 1ns / 1ps

//module top_tb;

//    localparam OUT_BW = 8;
//    localparam NUM_COLS = 32;

//    reg clk;
//    initial clk = 1'b0;
//    always #5 clk <= ~clk;

//    reg resetn;
//    reg start;
//    wire done;
//    reg [2:0] K;
//    reg [13:0] IC;
//    reg [5:0] IMG_H;
//    reg [5:0] IMG_W;
//    reg [7:0] OC;
//    reg [2:0] stride;
//    reg [3:0] shift_n;
    
//    reg input_ena;
//    reg tot_weight_ena;
    
////    wire real_done;
////    wire conv_done;

//    reg             out_mem_ena;
//    reg     [15:0]  out_mem_addra, out_mem_addra_buf;
//    wire    [OUT_BW*NUM_COLS-1:0]  out_mem_douta;
//    reg     [OUT_BW*NUM_COLS-1:0]  out_mem_douta_buf;
//    reg             out_mem_wea;
    
//    reg     [OUT_BW*NUM_COLS-1:0]    answer_mem [0:600];
////    reg     [OUT_BW*NUM_COLS-1:0]   answer_mem_concat;
    
//    initial begin
//        $display("Welcom EE3551_Practice12!");
//        resetn <= 1'b1;
//        start <= 1'b0;
//        out_mem_ena <= 1'b0;
//        out_mem_wea <= 1'b0;
//        out_mem_addra <= 14'd0;
//        out_mem_addra_buf <= 14'd0;
//        out_mem_douta_buf <= 7'd0;
        
////////////////////////////////
////        IC <= 14'd16;
////        K <= 3'd1;
////        IMG_H <= 6'd32;
////        IMG_W <= 6'd32;
////        OC <= 8'd32;
////        stride <= 3'd1;
////        shift_n <= 4'd8;
////////////////////////////////
////        K <= 3'd3;        
////        IC <= 14'd8;
////        IMG_H <= 6'd32;
////        IMG_W <= 6'd32;
////        OC <= 8'd16;
////        stride <= 3'd1;
////        shift_n <= 4'd8;

///**** simul causing error ****/
////        K <= 3'd3;        
////        IC <= 14'd32;
////        IMG_W <= 6'd32;
////        IMG_H <= 6'd16;
////        OC <= 8'd8;
////        shift_n <= 4'd1;
////        stride <= 3'd0;
///****************************/      
////////////////////////////////    
////        IC <= 14'd8;
////        K <= 3'd3;
////        IMG_H <= 6'd32;
////        IMG_W <= 6'd32;
////        OC <= 8'd16;
////        stride <= 3'd2;
////        shift_n <= 4'd8;    
////////////////////////////////
////        IC <= 14'd16;
////        K <= 3'd3;
////        IMG_H <= 6'd20;
////        IMG_W <= 6'd16;
////        OC <= 8'd64;
////        stride <= 3'd1;
////        shift_n <= 4'd8;
////////////////////////////////
//        #200
//        start <= 1'b1;
//        #10
//        start <= 1'b0;
        
//        #302
//        resetn <= 1'b0;
//        #50
//        resetn <= 1'b1;
        
//        #200
//        input_ena       <= 1;
//        tot_weight_ena  <= 1;
//        #200
//        input_ena       <= 0;
//        tot_weight_ena  <= 0;
        
//        #50
//        start <= 1'b1;
//        #10
//        start <= 1'b0;
        
//        @(posedge done) begin
//            #200
//            input_ena       <= 1;
//            tot_weight_ena  <= 1;
//            #200
//            input_ena       <= 0;
//            tot_weight_ena  <= 0;
            
////            #55
//            #200
//            start <= 1'b1;
//            #10
//            start <= 1'b0;
            
//            $display("Done Done Done Start Start Start");
//            $display("DUT Finishs Operation!");
//            #10
//            compare_memory();
            
////            #100
////            $finish();
//        end
//    end

//    initial begin
//      #3000000
//        $display("Error: Hit safety net @ %8dns", $time);
//        $finish();
//    end
    
//    integer i;
//    task compare_memory;
//        begin
//            $readmemh("C:/minsung/senior_project/git_works/Back_Up_1030/project_1/3x3_s1_out_8bit_cols32.hex", answer_mem);
//            out_mem_ena <= 1'b1;
//            #20
//            for(i=0; i<600; i=i+1) begin // 0 ~ 10404
//                out_mem_addra <= i;
//                out_mem_addra_buf <= out_mem_addra;
//                #10
////                if(i%100 == 0)  $display ("By 100th: [%d] IIDEAL : %h DUT : %h", out_mem_addra_buf, answer_mem[out_mem_addra_buf],out_mem_douta);
//                if(i >= 0) begin
//                    if(answer_mem[out_mem_addra] != out_mem_douta) begin   
//                        $display("Error: memory comparison failed @ %8dns", $time);
//                        $display ("[%d] IIDEAL : %h DUT : %h", out_mem_addra, answer_mem[out_mem_addra],out_mem_douta );    // $display ("[%d] IIDEAL : %h DUT : %h", out_mem_addra_buf, answer_mem[out_mem_addra_buf],out_mem_douta );
//                        $finish;
//                    end
//                end
//            end
//            $display("PASS: memory comparison succeed @ %8dns", $time);
//        end
//    endtask
    
//    top uut (
//        .clk(clk), .resetn(resetn), .start(start),
//        .done(done),
        
//        .K(K),
//        .IC(IC),
//        .IMG_H(IMG_H),
//        .IMG_W(IMG_W),
//        .OC(OC),
//        .shift_n(shift_n),
//        .STRIDE(stride),

//        // INPUT A-port
//        .input_clka_top(clk), .input_ena_top(input_ena), .input_wea_top(input_wea),
//        .input_addra_top(input_addra), 
//        .input_dina_top(input_dina), 

//        // WEIGHT A-port
//        .weight_clka_top(clk), .weight_ena_top(tot_weight_ena), .weight_wea_top(tot_weight_wea),
//        .weight_addra_top(tot_weight_addra), 
//        .weight_dina_top(tot_weight_dina), 
        
//        // OUTPUT B-port
//        .output_clkb(clk), .output_enb(out_mem_ena), .output_web(out_mem_wea),
//        .output_addrb(out_mem_addra),
//        .output_dinb(),
//        .output_doutb(out_mem_douta)
////        .out_mem_clkb_top(clk), .out_mem_enb_top(out_mem_ena), .out_mem_web_top(out_mem_wea),
////        .out_mem_addrb_top(out_mem_addra), 
////        .out_mem_doutb_top(out_mem_douta)
        
//    );

//endmodule

`timescale 1ns / 1ps

module top_tb;

    // ================================
    // Parameters from top.v
    // ================================
    localparam NUM_COLS     = 32;
    localparam INPUT_BW     = 8;
    localparam OUTPUT_BW    = 8;
    localparam ADDR_IN      = 20;
    localparam ADDR_W       = 18;
    localparam ADDR_PSUM    = 12;  // 실제 출력 메모리 주소 비트
    localparam ADDR_OUT     = 15;  // 참고용 (사용 안 함)

    // 메모리 깊이 계산
//    localparam INPUT_MEM_DEPTH  = 1 << ADDR_IN;  // 2^20
//    localparam WEIGHT_MEM_DEPTH = 1 << ADDR_W;   // 2^18
//    localparam OUTPUT_MEM_DEPTH = 1 << ADDR_PSUM; // 2^12 = 4096

    localparam INPUT_MEM_DEPTH  = 1 << 16;      // 2^14
    localparam WEIGHT_MEM_DEPTH = 1 << 16;      // 2^14
    localparam OUTPUT_MEM_DEPTH = 1 << 15;      // 2^12 = 4096

    // ================================
    // Clock & Reset
    // ================================
    reg clk;
    initial clk = 1'b0;
    always #5 clk <= ~clk;

    reg resetn;
    reg start;
    wire done;

    // Configurable Parameters
    reg [2:0] K;
    reg [9:0] IC;        // Max: 512 → 10비트
    reg [5:0] IMG_H;
    reg [5:0] IMG_W;
    reg [7:0] OC;        // Max: 64 → 8비트
    reg [3:0] shift_n;
    reg [2:0] STRIDE;

    // ================================
    // Input Memory (Port A: PS Write)
    // ================================
    reg                     input_clka_top;
    reg                     input_ena_top;
    reg                     input_wea_top;
    reg  [ADDR_IN-1:0]      input_addra_top;
    reg  signed [INPUT_BW-1:0] input_dina_top;
    wire signed [INPUT_BW-1:0] input_douta_top;

    // ================================
    // Weight Memory (Port A: PS Write)
    // ================================
    reg                     weight_clka_top;
    reg                     weight_ena_top;
    reg                     weight_wea_top;
    reg  [ADDR_W-1:0]       weight_addra_top;
    reg  signed [INPUT_BW-1:0] weight_dina_top;
    wire signed [INPUT_BW-1:0] weight_douta_top;

    // ================================
    // Output Memory (Port B: PL Read)
    // ================================
    reg                     output_clkb;
    reg                     output_enb;
    reg                     output_web;
    reg  [ADDR_PSUM-1:0]    output_addrb;
    reg  [NUM_COLS*OUTPUT_BW-1:0] output_dinb;
    wire [NUM_COLS*OUTPUT_BW-1:0] output_doutb;

    // ================================
    // Data Arrays for .hex loading
    // ================================
    reg signed [INPUT_BW-1:0] input_data  [0:INPUT_MEM_DEPTH-1];
    reg signed [INPUT_BW-1:0] weight_data [0:WEIGHT_MEM_DEPTH-1];
    reg [NUM_COLS*OUTPUT_BW-1:0] answer_mem [0:OUTPUT_MEM_DEPTH-1];

    // Loop variable (모듈 레벨 선언 필수!)
    integer i, j, k;

    // ================================
    // DUT Instance
    // ================================
    top #(
        .NUM_COLS(NUM_COLS),
        .ADDR_IN(ADDR_IN),
        .ADDR_W(ADDR_W),
        .ADDR_OUT(ADDR_OUT),
        .ADDR_PSUM(ADDR_PSUM),
        .INPUT_BW(INPUT_BW),
        .OUTPUT_BW(OUTPUT_BW)
    ) uut (
        .clk(clk),
        .resetn(resetn),
        .start(start),
        .done(done),

        .K(K),
        .IC(IC),
        .IMG_H(IMG_H),
        .IMG_W(IMG_W),
        .OC(OC),
        .shift_n(shift_n),
        .STRIDE(STRIDE),

        // Input Memory Port A
        .input_clka_top(clk),
        .input_ena_top(input_ena_top),
        .input_wea_top(input_wea_top),
        .input_addra_top(input_addra_top),
        .input_dina_top(input_dina_top),
        .input_douta_top(input_douta_top),

        // Weight Memory Port A
        .weight_clka_top(clk),
        .weight_ena_top(weight_ena_top),
        .weight_wea_top(weight_wea_top),
        .weight_addra_top(weight_addra_top),
        .weight_dina_top(weight_dina_top),
        .weight_douta_top(weight_douta_top),

        // Output Memory Port B
        .output_clkb(clk),
        .output_enb(output_enb),
        .output_web(output_web),
        .output_addrb(output_addrb),
        .output_dinb(output_dinb),
        .output_doutb(output_doutb)
    );

    // ================================
    // 초기 설정
    // ================================
    initial begin
        $display("=== Convolution Accelerator Testbench ===");

        // 파라미터 설정 (예시)
        ////////////////////////////////
//        K <= 3'd3;
//        IC <= 10'd8;
//        IMG_H <= 6'd32;
//        IMG_W <= 6'd32;
//        OC <= 8'd16;
//        STRIDE <= 3'd1;
//        shift_n <= 4'd8;
        ////////////////////////////////
//        IC <= 14'd8;
//        K <= 3'd3;
//        IMG_H <= 6'd32;
//        IMG_W <= 6'd32;
//        OC <= 8'd16;
//        STRIDE <= 3'd2;
//        shift_n <= 4'd8;
        ////////////////////////////////
//        IC <= 14'd16;
//        K <= 3'd1;
//        IMG_H <= 6'd32;
//        IMG_W <= 6'd32;
//        OC <= 8'd32;
//        STRIDE <= 3'd1;
//        shift_n <= 4'd8;
        ////////////////////////////////
//        K <= 3'd3;
//        IC <= 10'd16;
//        IMG_H <= 6'd20;
//        IMG_W <= 6'd16;
//        OC <= 8'd64;
//        STRIDE <= 3'd1;
//        shift_n <= 4'd8;
        ////////////////////////////////
//        K <= 3'd3;
//        IC <= 10'd16;
//        IMG_H <= 6'd16;
//        IMG_W <= 6'd16;
//        OC <= 8'd64;
//        STRIDE <= 3'd2;
//        shift_n <= 4'd8;
        ////////////////////////////////
//        K <= 3'd1;
//        IC <= 10'd16;
//        IMG_H <= 6'd16;
//        IMG_W <= 6'd16;
//        OC <= 8'd64;
//        STRIDE <= 3'd1;
//        shift_n <= 4'd8;
        ////////////////////////////////
//        K <= 3'd1;
//        IC <= 10'd16;
//        IMG_H <= 6'd32;
//        IMG_W <= 6'd16;
//        OC <= 8'd64;
//        STRIDE <= 3'd1;
//        shift_n <= 4'd8;
        ////////////////////////////////
        K <= 3'd3;
        IC <= 10'd16;
        IMG_H <= 6'd32;
        IMG_W <= 6'd16;
        OC <= 8'd64;
        STRIDE <= 3'd2;
        shift_n <= 4'd8;
        
        // 신호 초기화
        resetn <= 1'b0;
        start <= 1'b0;

        input_ena_top <= 0;  input_wea_top <= 0;  input_addra_top <= 0;  input_dina_top <= 0;
        weight_ena_top <= 0; weight_wea_top <= 0; weight_addra_top <= 0; weight_dina_top <= 0;
        output_enb <= 0;     output_web <= 0;     output_addrb <= 0;     output_dinb <= 0;

        #100;
        resetn <= 1'b1;
        #50;
    end

    // ================================
    // 1. .hex 파일 로드
    // ================================
    initial begin
        $readmemh("C:/minsung/senior_project/git_works/Back_Up_1102/project_1/3x3_32_16_input_data.hex", input_data);
        $display("Loaded 3x3_s1_input.hex (%0d entries)", INPUT_MEM_DEPTH);

        $readmemh("C:/minsung/senior_project/git_works/Back_Up_1102/project_1/3x3_32_16_filter_data.hex", weight_data);
        $display("Loaded 3x3_s1_filter.hex (%0d entries)", WEIGHT_MEM_DEPTH);

        $readmemh("C:/minsung/senior_project/git_works/Back_Up_1102/project_1/3x3_s1_out_8bit_cols32.hex", answer_mem);  // ← 정답 파일명 수정 필요
        $display("Loaded answer.hex (%0d entries)", OUTPUT_MEM_DEPTH);
    end

    // ================================
    // 2. Input Memory 쓰기
    // ================================
    initial begin
        #200;
        input_ena_top <= 1;
        input_wea_top <= 1;

        for (i = 0; i < INPUT_MEM_DEPTH; i = i + 1) begin
            if(i < ((IMG_H - 1) * STRIDE + K)*((IMG_W - 1) * STRIDE + K)*IC) begin
                input_addra_top <= i;
                input_dina_top  <= input_data[i];
            end
            else begin
                input_addra_top <= input_addra_top;
                input_dina_top  <= input_dina_top;
            end
            #10;
        end

        input_wea_top <= 0;
        input_ena_top <= 0;
        $display("Input memory write done");
        
        @(posedge start) begin
            #200
            $readmemh("C:/minsung/senior_project/git_works/Back_Up_1102/project_1/3x3_32_16_input_data_2.hex", input_data);
            $display("Loaded 3x3_s1_input.hex (%0d entries)", INPUT_MEM_DEPTH);
        
            #200;
            input_ena_top <= 1;
            input_wea_top <= 1;
    
            for (i = 0; i < INPUT_MEM_DEPTH; i = i + 1) begin
                if(i < ((IMG_H - 1) * STRIDE + K)*((IMG_W - 1) * STRIDE + K)*IC) begin
                    input_addra_top <= i;
                    input_dina_top  <= input_data[i];
                end
                else begin
                    input_addra_top <= input_addra_top;
                    input_dina_top  <= input_dina_top;
                end
                #10;
            end
    
            input_wea_top <= 0;
            input_ena_top <= 0;
            $display("2nd Input memory write done");
        end
    end

    // ================================
    // 3. Weight Memory 쓰기
    // ================================
    initial begin
        #200;
        weight_ena_top <= 1;
        weight_wea_top <= 1;

        for (j = 0; j < WEIGHT_MEM_DEPTH; j = j + 1) begin
            if(i < (K * K * IC * OC)) begin
                weight_addra_top <= j;
                weight_dina_top  <= weight_data[j];
            end
            #10;
        end

        weight_wea_top <= 0;
        weight_ena_top <= 0;
        $display("Weight memory write done");
        
        @(posedge start) begin
            #200
            $readmemh("C:/minsung/senior_project/git_works/Back_Up_1102/project_1/3x3_32_16_filter_data_2.hex", weight_data);
            $display("Loaded 3x3_s1_filter.hex (%0d entries)", WEIGHT_MEM_DEPTH);
            
            #200;
            weight_ena_top <= 1;
            weight_wea_top <= 1;
    
            for (j = 0; j < WEIGHT_MEM_DEPTH; j = j + 1) begin
                if(i < (K * K * IC * OC)) begin
                    weight_addra_top <= j;
                    weight_dina_top  <= weight_data[j];
                end
                #10;
            end
    
            weight_wea_top <= 0;
            weight_ena_top <= 0;
            $display("2nd Weight memory write done");
        end
    end

    // ================================
    // 4. Start 신호 발생
    // ================================
    initial begin
        // 메모리 쓰기 완료 대기
        # (200 + 10 * (INPUT_MEM_DEPTH > WEIGHT_MEM_DEPTH ? INPUT_MEM_DEPTH : WEIGHT_MEM_DEPTH) + 200);
        
        #200
        input_ena_top <= 1;
        weight_ena_top <= 1;
        #200
        input_ena_top <= 0;
        weight_ena_top <= 0;
        #200
        
        $display("Asserting start signal...");
        start <= 1'b1;
        #10;
        start <= 1'b0;
        
//        #200
//        input_ena_top <= 1;
//        weight_ena_top <= 1;
//        #200
//        input_ena_top <= 0;
//        weight_ena_top <= 0;
    end

    // ================================
    // 5. done 대기 후 출력 비교
    // ================================
    initial begin
        #2000
        @(posedge done) begin
            $display("DUT finished at %0t", $time);
            #200
            input_ena_top <= 1;
            weight_ena_top <= 1;
            #200
            input_ena_top <= 0;
            weight_ena_top <= 0;
            #200

            #200
            $display("Asserting 2nd start signal...");
            start <= 1'b1;
            #10;
            start <= 1'b0;
    
            #200;
//            compare_output();

        end
    end

    // ================================
    // 출력 메모리 비교 태스크
    // ================================
    task compare_output;
        begin
            output_enb <= 1'b1;
            #20;

//            for (k = 0; k < OUTPUT_MEM_DEPTH; k = k + 1) begin
            for (k = 0; k < 512; k = k + 1) begin
                output_addrb <= k;
                #10;

                if (answer_mem[k] !== output_doutb) begin
                    $display("ERROR at address [%0d]", k);
                    $display("  EXPECT: %h", answer_mem[k]);
                    $display("  GOT   : %h", output_doutb);
                    $finish;
                end
            end

            $display("PASS: All %0d output words matched!", OUTPUT_MEM_DEPTH);
            $display("Simulation SUCCESS at %0t", $time);
            #100;
            $finish;
        end
    endtask

    // ================================
    // 안전망 (타임아웃)
    // ================================
    initial begin
        #3_000_000;
        $display("ERROR: Simulation timeout!");
        $finish;
    end

endmodule