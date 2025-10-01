// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 16:27:30 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ IA_ROW_MEM_sim_netlist.v
// Design      : IA_ROW_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IA_ROW_MEM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23312)
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
