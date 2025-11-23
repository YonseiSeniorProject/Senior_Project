// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Oct 31 06:16:38 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/minsung/senior_project/git_works/Back_Up_1031/project_1/project_1.gen/sources_1/ip/IA_ROW_MEM/IA_ROW_MEM_sim_netlist.v
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
