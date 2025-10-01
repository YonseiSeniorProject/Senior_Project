// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 16:27:44 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ WEIGHT_ROW_MEM_sim_netlist.v
// Design      : WEIGHT_ROW_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "WEIGHT_ROW_MEM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23392)
`pragma protect data_block
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
2VeOrIQviBXAiI+YrffPlDJbBeeBmg==
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
