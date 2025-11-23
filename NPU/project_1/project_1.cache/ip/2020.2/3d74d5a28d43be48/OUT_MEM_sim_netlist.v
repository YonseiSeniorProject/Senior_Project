// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Oct 30 22:33:10 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ OUT_MEM_sim_netlist.v
// Design      : OUT_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "OUT_MEM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.05356 mW" *) 
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
  (* C_INIT_FILE = "OUT_MEM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22192)
`pragma protect data_block
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
lBjqZa81pn6Q5NU6n1WVEWaBPQ==
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
