// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 16:27:45 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/minsung/senior_project/VIVADO/project_1/project_1.gen/sources_1/ip/WEIGHT_ROW_MEM/WEIGHT_ROW_MEM_sim_netlist.v
// Design      : WEIGHT_ROW_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "WEIGHT_ROW_MEM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module WEIGHT_ROW_MEM
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
  WEIGHT_ROW_MEM_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23376)
`pragma protect data_block
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
/UX67rW5
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
