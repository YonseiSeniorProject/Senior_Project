// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 16:27:44 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top IA_ROW_MEM -prefix
//               IA_ROW_MEM_ WEIGHT_ROW_MEM_sim_netlist.v
// Design      : WEIGHT_ROW_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "WEIGHT_ROW_MEM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_INIT_FILE = "WEIGHT_ROW_MEM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23040)
`pragma protect data_block
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
S/Y6Khd0FyB4SS2U
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
