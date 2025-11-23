// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov 23 13:45:54 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BIAS_MEM_sim_netlist.v
// Design      : BIAS_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BIAS_MEM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.800873 mW" *) 
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
  (* C_INIT_FILE = "BIAS_MEM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
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
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23456)
`pragma protect data_block
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
3qrW1jFAGKgoDBfr167QC+j3QKac3TINbgV8j+k=
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
