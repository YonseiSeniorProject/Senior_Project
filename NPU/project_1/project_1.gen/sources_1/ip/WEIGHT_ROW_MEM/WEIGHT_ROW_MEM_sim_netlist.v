// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Oct 11 00:47:55 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/minsung/senior_project/git_works/Back_Up_1011/project_1/project_1.gen/sources_1/ip/WEIGHT_ROW_MEM/WEIGHT_ROW_MEM_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23440)
`pragma protect data_block
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
y8ZMGjzB5n6cE9L56A==
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
