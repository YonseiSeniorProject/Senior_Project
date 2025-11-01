// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 16:27:44 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top IA_ROW_MEM -prefix
//               IA_ROW_MEM_ WEIGHT_ROW_MEM_stub.v
// Design      : WEIGHT_ROW_MEM
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module IA_ROW_MEM(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[6:0],dina[7:0],clkb,enb,addrb[6:0],doutb[7:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [6:0]addra;
  input [7:0]dina;
  input clkb;
  input enb;
  input [6:0]addrb;
  output [7:0]doutb;
endmodule
