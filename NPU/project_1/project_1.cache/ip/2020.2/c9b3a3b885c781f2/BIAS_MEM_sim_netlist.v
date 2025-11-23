// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Nov  8 23:00:41 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.238151 mW" *) 
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
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30432)
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
