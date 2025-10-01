// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 16:27:31 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/minsung/senior_project/VIVADO/project_1/project_1.gen/sources_1/ip/IA_ROW_MEM/IA_ROW_MEM_sim_netlist.v
// Design      : IA_ROW_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IA_ROW_MEM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module IA_ROW_MEM
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     0.343777 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "IA_ROW_MEM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  IA_ROW_MEM_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23248)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
