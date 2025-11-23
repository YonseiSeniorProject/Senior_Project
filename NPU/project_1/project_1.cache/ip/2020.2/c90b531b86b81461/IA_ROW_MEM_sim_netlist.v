// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Oct 31 06:16:38 2025
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
  (* C_INIT_FILE = "IA_ROW_MEM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "72" *) 
  (* C_READ_DEPTH_B = "72" *) 
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
  (* C_WRITE_DEPTH_A = "72" *) 
  (* C_WRITE_DEPTH_B = "72" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23376)
`pragma protect data_block
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
ZYJmDnvb
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
