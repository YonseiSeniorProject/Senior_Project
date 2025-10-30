// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Oct 30 22:33:11 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/minsung/senior_project/git_works/Back_Up_1030/project_1/project_1.gen/sources_1/ip/OUT_MEM/OUT_MEM_sim_netlist.v
// Design      : OUT_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "OUT_MEM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module OUT_MEM
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
  OUT_MEM_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22112)
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
