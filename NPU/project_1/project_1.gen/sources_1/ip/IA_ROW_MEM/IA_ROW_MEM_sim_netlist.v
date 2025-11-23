// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov 23 16:06:36 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/minsung/senior_project/git_works/Back_Up_1107/project_1/project_1.gen/sources_1/ip/IA_ROW_MEM/IA_ROW_MEM_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]doutb;
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
  wire [63:0]NLW_U0_douta_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.327111 mW" *) 
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
  (* C_READ_DEPTH_A = "9" *) 
  (* C_READ_DEPTH_B = "9" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "9" *) 
  (* C_WRITE_DEPTH_B = "9" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[63:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32672)
`pragma protect data_block
+bGLBCDmxCNyFhxj5tm6aqn13GoK1I4VI/fCU85EdGiXLfM8ceUD4OZ9vZsJKT8aZbZ6gCPEaerq
I9WzBXtQVW47bHx1Fjv33GdKbVfJyZh00BV/epH7pvEEBDn5zn3NfVJB+c0HB8mUsRBtvzlgx3cn
U8r2BrGQEfZetP8mBpXI7/09pjbVBMOiDdKAgSpfZYUynJtihIY/s6tN8ruWzSPo/sALSKBujbt5
+aNsEaEbI7yJ2RB5dnQIExArQwP+YQmCnQeu+Usgi8crXMe/rtzjbfrKMtOUPIaUVMAyrwsnPCHI
+3RrZSZXtnGbq/lYVZ4JlyKi/Xp6UCnEn+BS+xHVbR3O1uiaJeQV3Fh9MgFyqRGEBZwNUXbSBHNI
gBwelP7/ruGI+Lhoiejn37qBxMGTecGG4p9C4GcMrs+yB2Yi6812sKhsQRLB0ybOjZ8ZbysXdVVZ
Nm8fpE7DEIzGP20WB8wYPSUe6WTo/rgxx6PpMQoLmipQionQW/NQucA4qiVOMrMfcmnQf/D7cxyt
bmxDj9UQ5Dhv+Zi2g8gdsM0R9gACgbp8f0Kc9yQsNMtFzLDmF3mxYD87KNM9XCGr6CY8MMG46WbW
5w+bdZ7sFVKWRtpvBFMeP9M+7dre6AGjCE8kQuiMtqApJN35vOmue5Pn9TFRBJb3FTdc8RGGn4y/
7aPWL74dzqlDrbQaRN4FWM5gkOErinmug/v789uJJugP1v80P8+JJoMqKypv0GG5xZ0Hy0TLYIAL
kChBvOhUDlM9PKLzOTXPRTmV3iRo+coJiTYNzEb7LQZHdJE9iZuIE1XZZtu58rCvaTHiQFg0E524
rQ8K1F+DQgjfuHPo88W5akBzOcjuH03nyybpXFfKuYXBaOrTwCaMwnUYoGOx5cadafFP3vmjm46Z
J5BlYsGQXZLsSF9AbAdvUtkgV6mRHvtpyClFmsEXTwWSlWGa+oTx0NUfr4ztGNXLySZ5sz/n7+Wd
vbovvrVZW+KKC/MgYvTwC7MT38YPJb9aSl4tyx5wwN/0ENUCiPjqzhOeQfguyABcxJ1kf1mVE2qx
GGcyUCuvcG63WD9sSJsPYq9WGMfPlAF4W7czbeiEClHfgGWgnoHWnXLidB8YmOBL5OGINVwivfPS
CZSLZMl4vEcSPz8u6ga0MAA58GDB78KDFOkYBRjL5DD2ARL2d1Q6PP7u7whrvjDJVjgWz31JhyAa
/SSvJ5/kI86Xj+ZkyWKllKMUBPVnKt343anjZI9mbEe77SvsnGvXP9H9ZwpLPWfVg41wEvb/gGTD
u9PQhjCD5TsfEYyFcz3yvOhZuum5kZuVlzoHwEdt44D82JN5MD8jX3Nri9xe5W2EkzUrupqlMkV9
7zYz65N4mDjWxZMS7+Raa3zDl/1XjphiG4Lm+xV9gIrkCPbsRz8pIcrfYSyiuar1ixdH5Cul6cQv
kEvejA5YoYoZqVXzDCZDS4Vd/J1DbusEJ0QoAFUhPS1OyOa8NrdKLaJ5lqgf3Nc5PhSJupYUMkZ5
WdxFJsDBPShyenAl3h0iVyiFFquboQXgfbQnZkYbSn9nLYR+vvytGfuE5CSwkERdAojLgN7KyTjW
IwRc05OnvXDw++AsfKh+77/hJZyQblM+pIxQTqNSUPqtxcHbKZCSqSELeT59461wdV5DTOclP0oR
QKAdE67lYXpe0/WOCTVxi8wrb/FZwyi+V5p6ZdpRh+5OqCPYpejq9ZJNM9s887nB8tz1tyhNyFlp
q+uLkZu0zb4IKxMA41v76r2HJfPY6qErl23v/h0jrgUwIqjg9hCyu0GzRhqWy06iIPyUAOIRiDIL
FjvVLWY42qVpQxPbOvRlMG3Ub6HbvVIJWPPsiidFN7ErtlsIsvoOb2RZ2Hky5fjL7v3F0azZAkix
gSxWvn0ywwkDYl8oIxq4G16p5Fv9YIPqX/1ZQa22Q/gpcXMMwK+oHboo0reoaHV20WXLcV4V66fO
cHIH6h6pQ0iuDfkBDF/eXZLNKqD8hx9WaSG3l6fPF4Tfx8e5kFPBMsBeYECF55C13eyNhasAjVFP
V7U+x4s38SiQTOAW3psagP825eyd73voGCXVKNr/tGdu9PKh9CnEAjqI/F6K/30oH8NFIxbXfTqZ
wYMylX8rof8oU+F0T5YLjPwZKBzFLvzoPbYZY210nY5DAGzzB/7n6SFf1iKkGvHfsNSS0V5tONb0
HWDXna764FccVIObEueKDYro49ySx3Wq1Wuh3XRqM4+YVsRVKBbi6XW8UFEaWK1WogY/rUv32s4i
BnJGT7PfVwkQrCQ2VVw72F5lHHfdtJvVxNJACy/gZU0Hwkutf/bvTJE5sbHtmp/96jaGxs81zR69
cCv6zcmhBuTwtTyh0X0SMF1DhTIy6Ru9klGufxpAgI5VfM3LFI5lmrEnBRJJ1DkOSul2VAN776dF
8NRyQ5OwFq5ZuUF1Du2pVSfxiDmtCS2yAvtYcZX4fvBhzEOHyjuoSushxO+cOendejBvndxHUg4j
sTVfuG+8tFXfw9DYhA/7KWFmEjphC0ns/OFTh1kLwc52O/3WeO2Z0FQETTxrDVDf4wrG6yXHvi93
bKbvpKATFTj6Ni7OQvUt8Ie1ksEjrXxFKzg7BCELLvortmrzXbJMqfKkrZeFteMvuKgRWmCI1UGH
YK4MuNCiet3UDz7Ir5lyoM8S+LIyP/AiZynZlq+JmPgxyWaxWZ8WjHU99uWr+HCJUTxzLHlS7h1R
UFge/xrbRaRWsBN0Njy8cj7snggd4MXXkvL/5W9kJbqETVnjzfHcxqBeR9MNGG3eXduapN0eIqjv
4pYNGuuZn/1CTTEm/nabck0P684aNXjtXIgc5Ao+JiZFnqPR2vbw2phGW2q6Av/AP+atubaFrmjZ
vJm/khWerLspFBCTIWILDkIP7ZOuAtRB1VPWlyoEgsulWS21qtcz2G3rIAIBwR5BybWAFY4iLpTd
ctnvGipCcUyF6/iH0gfRY9KV1NN71PYGyGYbi/h+9JkSzJiBpZ+y8kXvUrChmrFDESdynRwX1yQH
4iLQvfRNzkgDqqGgZdscjpPDnZ7xCqL1kyNk5DoO90OtRlZBH0IRVKZCaCbeCmUFcf1BcsdQs6Pr
GJDX0I/s6YWByp3LFjt4qhokUZYiKf+1ScJTVVLCk7/xyC+UuTtaIpLxxP82zHxQMfw0BylAOLZz
+06UGA8r4Uj7x+Xg4Tqj5+MctUZmUtgnraKsHhBcLGampqByvVnZhDzVc9MlrGBkH/ImQyJDcy3s
MLZ4XkPBgYrmnf05VHR+uf4vQKthAusW24BLevDTdzF9SxAuHVzqzG1lBAURQRZAIHaYsEGuDhAW
YbdoIrWAsZwvhbobXHuLjH+76TadPm9YkP0HkxUOggw3zLfm7hQ1vRaiHF0zNHlI8pCYuggMF8j/
efKLbNw/ToAmXO6OEQuvc5g+9mGgnE0UrHDVdehCYpCj+dAwsVISGoV10M81tKdbAxzuEvcr/Ii/
CDrfabvlDMwAV+kK3rnvSSPUwkVu0acr7ANjEy6XYNl87677+fe/cdAqWVFMv9utRRA7GhajLl6A
1SDJaMTXpp9B1hllNU7Dkyg6R9uVZjWY3w+pAZrOU5KSgIrnrO5GWPqUUfAcTsBCdcwHBsgbkYe1
9cKZyrr+r77JyVGiZqD0RyUWyA1VxKom+zVIEyk3DyJMvsX8y1V/Za1gTh45fi1UHTOHZVLEdKs8
4l2r6iXUXA/sj8unZVMCaRMHI80DIPgKh4nqEvvApjlRS9cWGdHctK6Bwc9CwK3lcwwcWD30s8TY
QtWiTFTuC7mNQtHHbKTiqzAa1JefqDGMyshcsXJTpSNscTlW+xiSGK2o/xC73ceWBtU/R6qdAboC
XckpIsw8G0KPqVofTA9MjVHmb0bWssg/4H86Y+79yjuDarUx7HHaoWPRPMtzRlx27BTVUiaa6dCQ
EMGRNe0QYFzVsrDkFhV676AxTcFKdP6+wtjtc4UffCoXjTJsxDEJDe9VTHuOrf8AIP020HNQJYWK
QpGt0w6yTbL7mzouzMWIAh0mFu3fp7i58Rf0gmF7OzHq/j5HfhEhwBa4TL6jBEim6dMUOoiwo5+q
PPgGidahPS7A82rkzOceXnz/m3Yeo2HUVOLTyH1ZIgxcxvFHH3ID9hMr/EQCvP6a3uixzOmyQJLp
CIlB65LBQ78iF3u7JOtwnafxzLROqsehSLGVoBROVmYzaMq/p8wgkiVWjmVYhTerHWdZl3bJgmv6
pvKa4jpz4pnqFrddqZusljm4v33jthkxi/ocbE/ygYQegRu+zvljjTXxakSrYnJzEp9PbtEsLVNg
MJpj/oJnRy1Y8zR+j0oxEtNrvl2OeXGZQys3BFecSNXkIRUZi73KbBoyFcABe7Fbja1qWN6/WQjd
v3NB4RNz5W4D+1FE17073P2+xpCinL/GPpSvxn+5Iga+HXPanvn7xGi4s1ULgZyFhmRxEd4hTg6Y
3K06J3+lrBPS5Wl41+x7p+6wKZV4m7GjDfqKD3tcTypoDf9v03RAuO+w3GRmd4exPy79miHwuDL4
idJAarReQafAYgodi1DHYz+1og9rmkUVdzwKJzjprozFia2CRL1UYMf3W2HZN8Lr8Ch4/AhxOL0g
Z7y5dL4pzyybTWMPeQsPjWccamjeTcrogIVXJuQu3xPFbOSZKMOh5c2BDyBxAwl3Ire0vdTImzUo
pH7IyXjwnvdy4wikiB74ehVQbbP05n5ur4U3vENZEryXTS3avLdHwKXlPDApZ7jUPdOHCj2EZFFR
/p2X/hLi8ABohkaM1O/AvenJc/wBGyRVwQQFnhbr7Hf0QTrWYQTVs4s9URtAZvcd392qux3HGFxt
K+aAFwIr7ZZB0omM6/uIHXPYm7dyeT4+uCSipoTHFmofGN/Ni0PTb0Pf+uHSa7v7+5a1xppciV9A
uxbqZc/iXpmn+gCXfW+Nr2JkzoQe3F+FStQ7nG2WRWoBFDbSoUXPTcKMUsxpQYDrmdqnGotUsm0l
8FsPUtp/zn9XMvj4xEMNmrqFIxTuIuFDwf95L7K+Zq9BOqtluVvZK/Bn/sA0DekFTgCXGszt4HY5
Gwn3i8rSMEFTu2bAYlL/Wrbrp+boIb4lUmqXNaWjgu1JXTwTJbbkbzEcgt635DL7wpjTD3fKi5Tq
RLJ1zOfO2cVTiViv3JYD3RlfX7dOabr2WfM+swciQXq77B7HVj8+i9UavykagCOMKyNO/Z6TetQi
CG7t1cTAqk/mi933cY/MkYco4muDDJsjCWmiYEBqTkP2JJ7WB/S+fcwlRf5pzdXM36Zz24/500yV
u5mLYgnhr6cbn3S8MpZDC8WVbE+fiDBpe/Yi2Ecntl7d0QPlG/lKXiVv/4SIxhkqG8M3cWLfBdrZ
y/f04TqOpll/PGD/D+A1ZK+6Ua/7Wym5rJPlf/oduWHymCLk4M1eGHA2xVn9lu3TbO+M6+nRJaoD
N0m3smP9Gz3+4XKHmNCUI5/XJYocyMyQ5YTHxsj9RQ9VSV/4O7amce2s1NLXmSexNqLKfHJokdhu
A4mN/ORR6HBJgeMOH+mKGCWa3s2DlS6Num7G+IMz8rsbvzxutLD/nBLyHkt2qkna0G+V0VBj5vhs
rGMuHufLadgN0ePMkbVHLGtVkCjQGW317sNtXaIbPsPkBVDTs5HQ1O++Y4g5gzkdZ9zVnKMfIU+P
vBAAshUD8pIMPBgILBDOio+73n5BGD2bgkKP7UVAJ0O6p61C7qfTY/1usi14VbrbffNTnPR+5lze
CDmvmAUYzjSl0/NPXtRvOKonVEMLXfouBlPaonz8SiuTXzS4GDfouUKEGeT0exh9yRLZpaTsxrQH
fHin0WChzQQBQlT9e+I22cuSTd3QVccCcInIWjPT0yIgd+i35BTyB2E1hEwbvdgk9OScdk12lauR
BF9i9bNWhz7C8iM9XHtI1uW99sbyaWV6QlDKfZURFbK8qdUuiCLUT801eJQwSs5NeCqLf08OmyCl
cZaKZfMff/V93Z6lBQBng4oy2Jvkc0MqozaizQxba/HCWIJ+3pMnwLGTJX4CiNeCFo/UXDvhLCSr
yg/vQ+yVI3SWdSSOrJuIDiYezke6YEAZIKlonxn3y10vqvv5ArZwfKWTjyiisWPZJAe/E4WJXMP0
tynxQ8pB7/W7pEhVeJDfAXONYA40O3oRMvssnh9Fo7U2it6c/PikJSChedlzhhAqmKeyiPLUJGFF
gbpYginZ/E0DYIUNhk0pJ/T/1he51p4hgBI33BGBT5TvMadzLtBTRmWkxUjNeCK57LiSM54fL3WB
cMriXNvQZzVDQt15wg4eXIsOIIPbdAAQBKa5C92qRQPpxdcePBv3xkLGdwS/azSB2uCGPa1VeYRD
p0sBkSynRrttJfXvuCbUe1B6WCcE+aRpzkC32sADx1ts4Q9fpdOs/r7yY74qckKe/dJJ26i0G4PQ
bTDcJmQs9F5k5UAh5OceClNbcLWUkzPeNynW2+eZzQc6TeJ0Rfayl8iksT6PztHkpIUcjAcdgNXY
h2TPaRdhz1eKsBd7rZX8jFE8r4cnbSdWwMEA4QvEQKipxws+nZygZx+TtPGZBUagBLqBFuNerO8w
I9OqlDf7Qytgigz+1yVdCn1RhJ5tjKzelD5RHWUYfgmmn9vbpLGXOXIzueze1s+sAj0QCMV71v6c
jkIkaqx55oXv79BrhWDEVoyVJmhJxluFwcYPPx1kVMTgdMeS1NWdE87TvQBN9kRhZLiDMSaXlWyu
84YsgyeNqctNXsffdaB3+HEGmNzDB4H8VCuqcTwlgxhBikc2cgfUWvhxFilSc/vrjgcUv6p5T2Sa
dvU965rf2rdyDxruXUibmAzeN7dWfVJwtzQdeBunSErjLkZMW/zNZTDSiYJVX40ksdL36ZRtKjMp
L3II0R7jA+jtivTnyVg+EmC7M9rPaK/cm0fdRkDARoWqRbfJLvMgHrQZuEEzgeWNVBJ9TuvrHQP+
N/FzBEuRasElA5M29RwgLNd4aWrkNmifL3bCrMqojKfb2zanTJY3qMF6cWHv0peQCQHo2Ztsk4zM
zOtTrw2kOi1iT9yxS0LZcYhp/tmL+tMhJTCC5d/1O047PgCucEkiSQIERvG5gpv71icdNVNdUSIE
S4PUTvXE161Nxg4NlM4kLFshjtqjg9bHHaTBlr45TsscmApii13pJENfcGM0EvY5ANqLazDPUMDw
O2kHYamx5cyqc8taIAfOEs0ikzbfYV0QOX6YgMCxDMvFKX1Y6NI8GLTWAb5+CTVjgYBSW0F5adXN
mOJ/vjRCpRxICJrDTrpVMslWr55LEgI/LHk8+S68aHjiJMDEiDJSP6/UY0vawVGytMa9guRnKsr7
D7CSCnD/Mzsq3Ut7zg4w/HD9PA2ICF7FCpPtoLL+fu+jGxNUz6NoLm/ov8WmTHVlOZa+mvfV4spr
WJV+V9hV5YwUtL2JEXKolb/U48MZv0lUj537CC1E6IdiG1/lBMdLHkFQM0XJdNr04NqoLgDwURy2
+16BuGIP192o3UDFTmyEIc3Fmn1OEUbJAU/ltVluePKWgzFkBfqQxR4DUZS7o76nVI78CFGccUf8
/bZRCjJEYRlRIUBAAbao0N9e8EONNFFRiRcfWTVOQ3y8XmBKrTJvFLi6MMipPiQHcRFw4qf2VvvL
aehlZiOK5gm7X/mc0gwpD1Jk66rOYmVauBAX5wLPnhFKGn55OldB8EPU3uxyvY1C3wUdWq1nJQwO
C4EiA6zQ3rCM/Ubw4fRkVwtVvq4NvXyKoIVijzvOPBZs9C8tI2vPdxxAF2CvwC39sej5NJS8xX1y
7Lzw5ZsvpykBGSUJDmHsvu2HChwwTy1EfoB6qV2KAyB9+lxj6CQLkX70tl+SkcsSaZ/aDRCmKjrq
jOlpazZoaPpHd6DwP6XAMSFlToehLcyNfJh1ufIevnon0/wkyTIVhqZzDTmOd/8vo2JzaUVyZc7M
aq4t+oM9S8WlhGoM5oWrAH2Whic00Ww3vtBKBxCwIBdEBfQtTjbBd55kYqMDDAOH8a6QvN6EwpZ0
Mayu+USx3/iblAItNXzLCKwRDH13B19ck4oVauYOeB0unqDZFQoW6CoJv5BQKg4EUzF6mxCSAkrn
3cNoJZqVVrJDudxIHyiN8U7L2glbQIaMcKdOKGeHKdATRaPkAJ8CINP8+iWeInpjEKej4RJwnJ3u
x6PiuPWzLO4DmdQ5Axd4+MIWp5CAg5VeqpSlKseX2zpg1GfHSBKvOPXTMl/R3mQZKawu5Nhp+zsy
i0XcNjDc2UHWhScNApM5OTm8Pcs30pq9lkHHshHNYqu84TplCwZQlOdchbUnpIPlwWS8WkndodDb
s+5gyT5YJXjcW40BLLykGH6KbS8WMQ08l48h8xDq/TM/htgoQpg09DGvHjo3oXHha3lcaLMIuHip
iePA2o8KgCURTFfktnAg9OggEf3WmtmRlweHnp0ebP/OYhFcQoYELI/g13TbDxNHXg/3hgkeV/iI
GMEWwe5fRMdzyEXz35BX/K443Pk7r2ZdxKRBwkYV06lXAo5bKOLRzbc6yJ4RntmrnnH3IS5yPnT7
/C36cGBLMt3Sz+XdYaNWs2202CHvdRDV+s0Ku6p81WmCkoYkjS9eWqAerV+uOlS7b3u+ATGIUPjO
AriCsj6aYGc3az/Ari07/IaxrgCVtlgvVmCRMLoOOUZXQhTXSkpXSZw/d1wQuyrqlz/FlGnjj63x
T6vKjsYiqibeybZk56veD0HY+qEdZBSNP+/kjFaQ+Sxroilc3HTJfsDseekicfFZVrLjIfVUcBxn
fhsKK+PaeNb/ygwKWtY4FzNdGl0h9QBuSXxwiDMzG0QxhJRDEUPvvYAmyX1eE+hYx8tcCc+2LrUK
xr3DgBm1tEhjSGEK2zodUQvuFJB18aBPvD1p0XWoq85NbwJ/yENteW7ANp575uIC6uKhC7FlXqP6
RbmrdHY+gsGSC3Sygo8uMv7+Mx6ltb7U9xBvThe5aa2GJdLCppN5CY6QFmLTFRtVc0npjdpu0ptK
6mwQpJPdQtVjT1xsQD2jYyKDikQUMXDIWr2B2DA2obluoclLNQ0HaMKYzqryNTu5wsCAwHLLtBld
zNqd+2OMntKTF/K44eShnlGSR6+Dm2MTwwkUldVIt4QV8ObaluLpNn297qVXZDeeELWpTs179FfK
XMdZ19XJ2YhbHJrEM4BYIQeFuzz2G2ZqPu3uDAaY0CwXqoEN/WzDXDjpat2ac1VMUyExpI/wDlZ2
ojwAECPZ5B/eKqVHQTA/FgayiRykcvti5yW3Ov6Hyi/Oo8u46QBgle9MfLkfkcoJzVXf97XbHnyK
RGyPjrMWfvvAHjKq5uec6NK6ukzXl4Bzcxv+KuTPvG0mZRIK1Lj3jth5PcPnaMXdsRqaX9oCuNMp
jzRKiZQOIiDypMNdunkqC/JDsQY39PCLUErZIENU5wqfXv3sYCsTgX8biEL31coGlYaGICHXzcxi
qwIDR3CghlzkQDtvo5UfrOqN7W616Pc2dZnz5XPObGSVa6BSeYzo79BOXhGvtkBVKfH0dv0BgEKC
iS0U7dAr0cBG5trcKh4NqQqddLYBR7HWDdz63ZgFL9Mrjw4ZISx24oww9pneewi2uDwdc9pl62H7
6zOlBGmq3k3xfgrllqG1k20svdavtAN9eKykZbjjBEmFoWvmwfwVmRFAAHVcoMOaHPL40z5Dy70k
7GPoWCb3fKmA7dkq0L9flrntMp0rx09tyx9JLdVIYvWbcO6gHC9/IiZF8+yae0jioWRj4sL4FBtO
/vab2264dH8J9B0dEHpsWOQxz1Pqdd7+TQkbS4wt58qXR052hNcTSJTwN16XcKZlb4c7CDJWHnMz
PAaRag9aaFamalQu/GkGxExIf9gnPL7kUw6dwzOzcIVqJdco5TYIYCBxY/agVMOGGR7GEh2XjD+h
bBkgBR/3LOsdWqhYgma6apAYR1pVpkih6c+0LCWVdEx/4FSZRhb1b+twhAId5aqUI1Y//S9G/KYj
2K+rZVR0ty7kr7mRtJq4c83KtFTQO5Jzg8AVq3lrPf/GbHAQ3VQXNybmpqfEBNnrfYcieQ99WGZk
TD7RvW+Td7nJ63iDJkv0w//9H+sCjOVZWSHQEu0mcCebUZSFbjZj2UkL/5KUFAoMR4zAVl0RNjIC
eTGj6uzoVk9HYU72B3YCLEuJCIRuW9Km6WD4aYTHq1WPpm4IErV5N8qfLI9Ow5UyOq2KqLJWt7AU
YGkD/1oHiYcrrCY6kmRjltbTps/Rehpn9Gw/uQwP/oqbbUxJULWqzIW63LGlN2fk5sP63RkawdaE
w7INAgNWItqptJttaaF3LApCL8i7VFPslM9hE8RFRJuq8vNMwI3hCP6/TuX8Ac1JkZKZpUtrFNXz
ESpKbMAu1bzJyATfNW35jdvzv8pe5PeJPyzJXr7VhlxVSJuR1paJLkDyumCm/FnZHKI8zHOk5zi3
vYkMuPBmAyP/RjxYg7oAS5HHUinkIH27gOTu3iCU7jrJoUnhKBE2LU3N+bB7iHY/pmJy2g39uaN2
to614TsQ9m7UVMYiRz9AEXNOImpkqmdeIUD1PMpICbAR+dnX1HWzK+6SPmKyhzfUyxABc5qu9yM9
7td06QFq35k4+lt04FO3DHCF/7sOXYmfa/yTMDjEgEVUngifIhEjiEHLInUHwBtqIjuqlvABW05s
8efkFXUmsq8UXm0rve+N4YYDvY7wDvJXOsTx9BG/pk7aHPrErsFX7JyU8ejZ/s991ZlgdexKORBY
+OmI2HDezMfl9mKUdN+IyRORPxBgnL4G99molp5HhU7piY64m3XWmPdVHElq9KLXygZYiicDtgMl
IhVyPYw++Y0BdxALG/nyJf0Zzjc9wyH1PDj99/0BexSJxk4Uh23pAJ+4L30j2838EVXHpsb8RU1o
wzQsT2BusCw/FbflhVwqhh+8kCmmj5W8Y5lMoVtvybUyRpCmT9IhfJ7xvcFXae0LLA1BhZZQDZUT
JrCqibmo7Uqmr6NPZogyOh42Y7aoEvltWXgb5jx3q1FPhksYlhTzdeTYf4WVlQfRq4CAvBO9X4j3
qU8ROScMn/toab+wO4QQjq7y7rYF8QV+UznxiNbtvdz0cwicB3BHvuoBC42wDa2cCQK4PSejDQLX
+0PRotjWaQXcI9G3Wh7qx4PQf8UQaTzuj/G+I/R0nb+uZ+bah2I8/VaKDHDr8On+WpVUve1nIYw5
WAeZTLyrsZDyFzC/uv4h40BkwEr1G1XUszH/BOsUHnU3OcbldDSvCqYX/gK1aI4VAXeFlpPo/CB6
mc4q2kLQS6JLKjWN0GdgUY9kJWec9/ZTyIsnFC953HEsZH2vf5jS8xQX7IpllX7aEJ74PDGYJhZF
9RbFUeebITDnMNzVf5xlh4U0+OQAjMy7ezRzhAhQHzUXhW8al0d6/74ThKetZySRkdY0bgR7bsUO
uTcEY9EraqjmiNc/EEbHobgok94bFmHuv+tPcvQZsjOTNdMr/vyxWYAjfc23YiuT6FC1mWSQ7MuK
oNPRfIYkNh5g38YSoYf5h/68ZRf0Zu8WUaeytGz17mHp+CTzy7eL9MfY6Pgoi1GkAVklAR+Lrv8l
ZtggcnUXxCz+iS7l2zIrb/rcrNi35Qzb4EnfE7Z6l6ZUonaXgHj+Gq++wtWMaHl9brQFLS6A159B
uer3YOLSyjXJbvjnIml+/eZ+ImiI6OEvnzBosxpTCZW/y1JsqAbOyRrjbiS/tIke2az71bydPJEF
nbZupQw3cfuY5YEbnABl5fmFs4xNKBuj1IZLpqOa660zPEvGwxnfu6PIuNzmH78oUopJQGXXv4QF
sYIPr4UGcWX/2AvupA1kEzvxEJCRlYGWFo2yq7Y3LrQ/tLHrsQ//HA5M5CcYKKCcbypRCGB3YBYg
LNC/1D5i1WcZ18tbnGqOplrq/J87CR6OP7SAwBPgLhsqUnBJA6VJmF4VGpiTcCmgRFq7EtC76YL/
qCztayaMW6YYM62jmlKb81ap/GU/9L4n4IYm3ZrgeuUMWKINg5suBc9cFIs7fzf1P5yRjSUIHxSp
u7MBDKd8i4gzTJeABQFX7jrDF1OUkx3s0Uq13L/Kor3ypBRquHZip31d0Sjn1H89bdqaXvqk+4sT
Gc0EGKoZtT5hZ1XMQFR1ErquLcTky2dcwzX/t5CZ29oGOdW2heNwXLC4rpPE0Koac0yIfRQzJYje
xNYlY6JamhO5ptvZqKct2HrlqDHG0lVKoVUcFlBst9QVcTuwxFOOqJvfWqzCBtAw4p1CeH4EB82f
H97xt5TPF3ytjPpk3Y/6ubU9QPtYBAtY12D1v1kN1jQzq3615pm+TRI5Qh3WOR8Or197fB6E8l9h
fDVtDdBESgoeHuV3DWlzpzL/MvUq5I1tfuNnC1voAykCgE4SzKEdikEilqo+nJ2sj+A25/0Tl29q
jKwOQbr6gpPkPQ8yuW0b7XRpPItATV2CnD16ZMe2NwohC4PWzTcokQ7pogYp34CFp9INgNn1hHmY
3CnkkKZcnv1s6/BxpfdfIRmw+WOiWmaoslorBQUZgk9lHhERnWLQGB64nssuqNwN3tiKptCc7XpE
GLG5imW3ZP/a2YnJoHp7YqmOR6FqBcobCj2YV0h58t4cCkJUUYB8/LLH6pBYjUpHRI++LbglkEMs
CdD6bMAkyVsoMASkkQauXcszle4QKtOsO4lFys8E8NWZq35M8/9W1PnHQA8G3per9oThxKliAJOG
ekQ9q2wLYdoi2b6u3T5ks3BWSmO6yisgZLx31WLfc7fmO8imlMCbrdUgXiUEBf9zDA+YKBlKu7rC
XHAnSiYJXk2hqMeCQA3EtqrQQ0vfoYuuD7PqjLpfI5MHrdi7FSI7TF2lP6RcE+7VdH44f+Ogqras
+hWs4I1L7arzaCG8t0vz8mZJvvN/DuqallGeynMyxxnRoH0fyh7/cfAVTekg9ee7mXF5NY3UQD5I
W+zaTasvin/7kpRpeDfXOLb8VzBDQGNqGivB+ldhZScEx2TaD8hXm8njXH1hB/iFWAHWKrxe27Nm
uEhya1Mi9HVapPZv39ye6XrOEObYs4gdP4x4uoTbFGmcC+uwqb90Fx1uhAATGbgS82XkB8W/BeLZ
m3H4786LShyZclw1uFubskUbS0gX6/GD6nIabESJ+0emMzsfxCrNNf7pU6hyShAvsphl/Vdy/Vxt
js4e3DG5lQ0WE3j4O/GCz0r3/XQOFZ6XHkR21QNsVS/VowE/qXeZVfNgLJuzb4LLs4OdPr5t5EfS
fZzmRZRAhZvBSD3yYfzQtCfZ135RPlv4kPyHKwpnb8LTNs9SagT8YX0SzFw4hG4G8phursujkfQc
CDdNsg/W1+gjV2iqVEEB/w0WKrK+ccuYcbpm4HTkqMlLAq5PPyaC6AmKckOHO+OCGLeq6vpwyYt2
wohXMGz2hMEchg5W6jkdBpFCR2ESZV+XGKy9nLFTXyc0g8BHUb12ra3vXgGSv1n8qSHPE6fJcdkM
GMCxBdnFCSqCZrvP64JgJ8uaqGcrwWYojPyai2/tNqgnrbP0Rh9dljIxkajC6T7HgnfujisARJiy
aJKin37Hs7HbGNbFEyohAZWOlSp2pESSKHUSlgVAFbPp5qWfAK+w8uMDr1SrJSnWH+prYWtzKoWz
35seLPdq8TAZ7zYiPjmVrTyIfkRYtuU332A70B0bm+NlG9D3vTYLr0k9uW2kzhvaxZ/j6K46BC19
Tvdd3i1KCQQ3Z6RheiWvQK9NhsBywMqpXWK0xPtRQZirv4Wm71rjHqzleITFhy0fI4EowBW5S4yO
o9PNaOoo8+4nvIp4MqPFAjfz/+Q1gigHkn3ZZ8P2wt70kJCB6W8iV4E4uVfdeGNzE1kNrhlSVWTu
XLxtZAqZiGap9OyJCGVpfMewm9CIK71YYjof/vOTx2DC9yos1ekZR71zw/d0NCPJTMLJnV0nUNp9
pucmKfhVaU6V8z8pXOrULHjiEgFwVHsI1LFnS5IYAF5hLkGEu84qVaGn00cNC0qzs/GfI8TwQJTV
09TvmKn7aXdqDnofoWBMdxNiugnfLIFb+dmB3zu1g4Dug8xCGoo2825Ly21f2GPOxg5XUxM/qZRR
+HQEc9R1389zJvrPvmiWxOoLZZJjHkJ3FKSsaAcUv37OUUdasNBga04mVzCtGFc8JTEKjatvhg2m
dpPDyBku6U0UUGOOPmSAedBWtEdUo8v6DOAhCHKjE3DzvN5+E9mDOW6L9Gt4ErpTTE9r2Z3cIyVK
sPP1ZKlQP5b6J1dEYHPP53q/j5dnV5YRIedPin8ef30Aq7IJbEza1zlOvHA02gl53gkgtW5OofPx
ULu33qp+4kp9Hmb02voDvrfUNNmMB0hA1Ukrqw9cEDBlfp493S53fspXgie8OHFvPJMKK4KkSZ8P
JIiPHIbaPJ79Y01qvDDPD0aAFOU7dfwzjonF6+RhFTLD9MWFKVvCzX9QT2SNy0vl4OVE2uOKPET7
86QK5FCawoL3KpZa6MLE6j+qkZJ8hRhWUa+oewb5YYcRcx7Ft75I0dTlViv/PXYTx5PVeCrCeIW0
h+Q5QVDlxxabE6TXVOwSTCN3MWnB+ngJfjOFv4JjfVSHqGlcqswhD3vR+8H39LEhaBvcomn/PDgs
n2eCnmDr3NbsNMtvoJXovz3OpQ81HRgtjjOC5+p2Ezkd5e3quhRLqgHwU4gI5hYDV1fRnh8P/Yy9
b5CyPyH43Rk8K99Z309ZxuR0c8LcLNaoQISzEPO2+gP0ab1gVXxUFE4CXjBBKHWEB2L8WL/y/EYQ
3ms3uF8UtD2rdDVVW1g9A/ARSZSA+yi5aqMeKSov73O3Xy1dR83/jYHXwXav8CbIBMaBqgOIz5Rl
8kb+AVYGoKZSHbxZywmbhb0gz6V5H+L7IFWeevzT+UQQwaSv0KsEjXKKQiiUihyJ2FpYp7ESxfcI
kK3TOqMerHyPkFDEnIVUGuMchwrvWxL5CxsaWGBVhYQtYB3xpDpkapOSm0oBvZibpR/9uZGGCn+A
JPkSFpHKyFXubZXCXDz1PlUi3xAAguX7iQ0c1bZdYHYxfeA+ITl4PVfDjEnBQtmYxBlDjCxkUiDg
5H72KjdlmaFgcfw8BhX97Qi3aChrVBlIpPDirObI1B5hSM+gveck3wy6cEusl3KMhOkThPe3z1/M
P4nK5rm4MbHiAPMV44HmRZ2QqQ7No14vPlsfZlssHV6MGDdVm9NOsIg7Kwd7nUiY8JbHcnM1DHOt
7N9GSHCPt6Z95sYTGbiA9aLuOFrF80H2ZpXQDfP+ODfwG//CjabUpq4mJ8Zn3zd94AbRBz1hlgr7
yQIuVc2cG5tC/VbRf/LyWAG+1YtJFlA3yoF5d2AZUpBeBC8UZvryOU8kd+h4qEMxp5hUxBAmSJyY
5pKpo2b209UhhWd/OxHlIfGY5FCMTe1kLPCtLo5MOFob0F6UnXiL6csr6qLGec1oEFlFTiEAudBU
6Hx62GDYMDxpho2tS0HSprV31SJs5zSj83rVfLqTZmr5jkMK+TRErhmozOn/GegUzeCvG3ZXz85v
kuFHCUC6tO5TMCgJ7zfyKG+syFwZxOKVtT6TNG3juBdMOJh95FBLo2MGJQTqyJHGnaZa+2JG4EDT
3rMu7s9lUeXZEd51C9wA/hv1YE+0rpHIcummJzM4PtFUYF9HduS3FaZWSIoGSCuhxfV7G8vbl7J8
rTDru/T1PSjTk8H8wkQnKI3XixXI4aGW2Z+9SJXALevtZePVTqedc5J2pL3anzIcSg5ILt6/1WjQ
makd5vJnhlJ/0aGTnuLeaymtZ3YdUsV/YFZfmy/KRONkSox8uIUCf2oFyqbfobcNBwzKKb1/mzyT
sUTnaL6VACVQcFJ2Fz3D4903Hl0qvcQrj+2vE4Gx3GAv79aUuR1sF2ulLH9GCdJ8ijISz5+FseNU
RmIXU5m1cqNx+YEf5Pp6oiahizU2V0v1ssEjoa+8/bwv6x5ohpDy0kDJsWHJgtODQxzSKijhMUjb
VJCCo3UtqzZE65WIDxhzxD/uwMStttx4tpauDj9noywnHTu6kzG0MgkkKUfgkoAhlnm42SrHRs45
S3hS8XV3Y8Pnuz0vofknQMO8qqTvaYGilcWM4s19lV8jlIsHBw1eR9/t7w8C/7rTCc78dSunpRPb
ZqIVSGAXhRjmrG6ZShIKuvdfLQtgHu3gFt0gLuVxH19mOoIT0ujFupGnM8qIQ/w7nGmBFRJJd7Ks
QHDnuAuED4YMEtQbs7ASDLhWVo6ET1WctObuwHhLQIDk1i4VenzHnOsrKyqN1vGOpbctSpvWNQOa
ei9z0RjfaHCsN2CKC8cLdSTgSfPjRJC6r2ysweOrz/VJClextX39Pzb8z9glmRS53uk8H7pAsSdY
OPelW9JdY+VC+OZ50o7PCIQFb8FydjatlmGParD6WlcAS4Q15drhjYjNiQV4kl31yo3/HoOhG/q5
AhklpTcdOKGZtmjqLDx1o8G1cCbugyT1piYdtsXDf2RUw76c/IuEbc2HvKfEiO32lkO/587wm9A9
VSMElOAsPwXR0du4RRDzTKbgDtkEbuPZk/J6GbjEWY9gBmLd35XfpHDpgTIebr12sQodR/D/g8cw
/DoMhM+khhMshfn/qKXGoyh8nvZ4QBgXq9HFy58zZXM1ztkk53o8Rig94/0axUPwKydKo+bgbPJ4
fKSNtlsAHGhaWUJFvY5us62IYIZjTG6rsmt1nctTG6Z+CfFBPXSmDjnAH4pw7/mJzZXuAAIpZNTt
ieVZazyJJ/UF8wEi3Bl2AxuX+utVOPxfRTPFoBaWNmyWvhl61kOWSPAIQoMsMsis9PSrlI35GNZg
0JJJMKsI9jll9sQuer/4px1IK1OQXrCuo0ZKCvoSy/AMpR+tGl6h3ps1K5TPMJ+v5bvbn2Xl+gxq
ST89A22UCGP0eRYuiKIoVvye/I20hJIlIH0G2waCGgGXMjJJIIcLhJzfAg8Hy2jILoBM0eC5GJ4a
dcONAmeCuKrn5XTWBYs+AOQ3z6W9/k9B22L6ZGKCJJ0HOWO7FH6+2LDkWQ23Tyw1GHGLXycex5Np
1/MBbBFt/U/CUTemIP+2VYhn2Bl//ZwQqP102gV+jSknVT4TzXaSKshtyTIXZuc6lYOyTcQmMmcF
tw8R2dDwMJpKcLscC8iBwjcIEnAO994Brwa+Yuv6NK9JcYln9Xhx4ckuEe02CRCi5djBAtqNtrwm
S8FI1I1OWCdY2qB37MErblgrx9f6Z9rZkINyRjyND5d5KsmtBiOcO4OXk5mA2Es22pw34o/5y6qF
2ArTyzi0EOFfVdsVD7W0TK4zEKZmp4dhyLw8XTRwwMLJM/wBJfiAfrcJSX8AlxkrjtmiyBTb8s+R
1OT/nR3MF951/V9pwmrypyJtuDjYNaEsRZL5+K1Cg+1czW9ZAJi+HBBEKYXL4hZzi89trzweWsFm
i+cWXTs3WpuMxOVlfrFW3krgXfihkph8+f+HYrVpZzQ4Ehq56vKBTZyfDswVs7GqMens27M8xrDa
KoMqyBrlwaV2Ku44M5ciIALb4SWTinzN2NpfdbfUyRk6m4fcz+mgtmo/ZVrOH98fsmu7jw064Qnz
XgNqdGNdJuT43q/y/4N4dU9QvUbGCUBQRJKTIui6qK86xnLRaJUjZ0CPj5+GoWzeHoLaMueCHO98
LBcrRyx9NO0dtuQe1RI/FW0FndIZG5Zd8MRJELtk+jdo9fsqBTHhVL/Z+G7qgqefWTLeF/eSAiEt
x6yst7kW3vRVAlxAm5vc5FMuIWdH7Dp6Kh9ReSHjzErwZtVIAHqY/mFZd9dp5/0afpRiBtmkDZ7l
KFcolnd/wojR5AmiliVsCeKxo7NzDvblIABoJVZMkYJZJwxXBiRUpI+yQgrfipSN3dqrk1ZZBdvE
Yn5bBhwxMlt4fwFOJ9TVyr5g/E3rdm+qEHwH78ZC7d5DtBXZgUZL0x52XEevRVlpFTd2WJPCxmED
adoDGMBbuI2xtwb9yjSocYpAvvnyr5CZdv1jF7ZQZVadOFtuz6wwdwcDisynumCZI5S6Opq78azr
YkeUXQ4du4WMnsS2IA933KC+kdz9S97aLpfeF9jErOaXnmtHquIem5T88vH1ozs5AVRKvoW2wNEY
03VFtS4QgtPeHJiDx6xrGepXM0Yf3r9hu/ikZOQVbEdv7VTvyWKIGrOfwwwNbRs6jlpudxcf9uOx
tTv0maRRybtwi4YiKTZLNP8t5rMEynCMdo1kQUW6hgdiw4IDEyFzyFcpCn3Xi3Bl9+r9GBLxBEn7
vl+HlBKCWQcES1rrhhbLqadgl5gFm7swRJw3IFUPWrZ7CB5j2VdOwpnPekuwJ3Bsb9QMWXa7YwoT
EImg6J5auTHoqGqozDbamYcheHdUwOUEfm/Jmu8XN0OqJ++EdXlz1iRXEZaNvyZs5lLDYzMOwrBd
B4JCloPrfvzh4cbU0A3AvdPZX2VguBqfLnlHX/A45he+7Gud1IfAG2nbaXAw6QSxRvgsfGieZt0T
pDeNaa9FkUSu67n1BUQiBdX+M7ZFAylqqcyUoQyAh4wu9cu+zIgVgURKmkWYfLD0zUEeuot3wUzd
T/BckgzPGXEYXjfXcHIaAbFAvVfi75B2YuZ5sysvA9u1UShfDWA3ZbmoAO7FGDf5BvD4bu003gO9
LYcSMwECKLOS834960yZYDND5XNkIz3RHCMZvzbNBS/aOj7cWKBej/RATBE19ePz9D2ird5UBql+
UZEadzpZYdCagGmSFGqaSzrelQuPYi/8p77sg1Z5jK0aOL0tBcFTQcO4AwkEY6ktjTKkE9ae2atB
kycoLN9TkBSIdH9K9yr/FZB3x23el22+Cej1PKu3/X9pXbRqxSNdjs44I/Ef2sE5BYveWGJx0OeR
QhnPDER1OM9zHGMWKBub7qmOfM1+k+sUgLtD1T+VV4pnbtqJWr/M8aNomBpJd6k6m7KRVEPAj4Cg
vyXlSm4vgfjlGeGMtxprj6gUH+2N6ubAoQ7sJn5NVoM25dm9i8v36ntp0phn8i/D88vMwBh90N/v
pT0m7rBenLp0IWO4L32SEepXqTDW3i+KgHMIkqcoxSBEp9Ldr4bkZdbTHa+NHm4RsVjw4rPucGVN
3dOSA2vMzGd2BM9vPC6LvlyC6VDfbNmaZLss8FNPYzNnyLZbkPMECOO2rOB8zSGrMzmxRLwIk1rT
fuIT3pM3bIpfTkhopCHKKf3UKcszgnplIbN8DMx/iB3qwk1FZf7vG6Dnzbjk1PjoMtL4wrUbUV55
aEsqEcxUmP9G+ZEndh8I5btrplxhqnAf2b9gfx016uLRQvWc0y8/6tMJMKOzFZaW1Pq+D1mMccUW
MZno1hM/9djlybxb+S81AAuclX/zDogETldAtsPj7bj8HS9mifxvwhCH0rhX1MhO3z+pqF8r7HnW
NuouNiIegeGf8WJJ90cHDsiq03BmlkpS+gwsVRMJwdjLew+3bPK+XYTB53vH61LNM4DL6U77dki3
jFJeRiDGoQ44RXAbTBxYYkyLjIjRCnvVSEz1fgsK8kXPo6Lrnzb83+OIyb6BxUW0ud/Jq/g3wBHl
cOBr9gE8n0D/LdafJ8ZZW+LTdnz99SVXKlU6REdnmWhFfB0kL0maOwTfL9h3XjqCXfdI9aUFsiJI
emq9LcowfEKQqAb3K5QLEf5jxl42I35ekidpJ0frbOq5Y0nyNcypO8gY/+r5pEx1kVMHqwJrzl3O
kyWOV0HDGDHGkhBMKcwav2SAG3oDfTnvqq8xByoQANLbGSHZThtZszYhrcePhHQysvskDQkr3F6H
FeWcm4yRs3ZcPk4VS7PdWQys1Z1I0n4QWceOe45yO+u7p0+CI451ve7kh9XxHgDeFyBKYOdJ1Ght
NYTXiaHWqHXIo/cGZqTJ8m76mXVzr/h38d+NiPG/rRT6iZptIpH3cBGXqRvVnNwnHVq/gynN9LXh
0saR+DdbP9BAYEjBr2nB/TEifJ69+4hZftINMBB9Xgq1CUaQpSSYphDBacGYrcXvjhlgODDNnnr3
NqtGLVdLb5AwbDOtxfya5h8CzejhmKOCBXtat4CwjH5lwMvTf2rm0gAmoiNqkU9peLK4ddbm3tpk
vE0y48uxnNB11CtmWtDcsTA78Ca3Cm8/un0ByG1vd7gSogjERNNm7dF7q4cVJS3381dU9teLmqo6
LKvX+Ukd5bGlI4nQvoxndYJntBhcv+i0H5nCq5jdwg5WdnGHZTUhaBg1D8fFH0q4A+TKXNxTT79R
/lch6P0ranIkn8eZy4TWwcXIz8af66SMyX1FpnM9s+nmYgRuTA1KRTy33dc0Nn7GsMbmX+qu3MtL
FeuHPuUzH3Q/vVOVlERZU5womLj0tbvgOKtlG5YFw1HUPGr+SHWT1t7Oc5PTdEb+ZmLoV4Yf0+qY
yUfck4pJpu9WcLotSxihGN1YeoQTckkn5v1pstOGsufzkOo6ocjH6TzMXvUWcSLjDvXJ/xz5CF1F
UlwZ85Ad3Tz5JG7STZwJ4JGL7PDKnBlwLnTa+szKGVuHK1v3+B80SaD2XxFMpHnMNguw0sPBpBrf
VWe4B0Vo96ED1iTrip7d1Rbg5HbIDBgda0qXrDhpGo+ueC+kXoSIeUmR2KPOP6CwHdb8i0bqVOhN
ITXGtIaEnLKwbguRIWsU0wAxdk4bDpE/AmLVJXNS9XeT0Gb55gPlkH5sNhxEo5BYtWUWtYtFPK8i
edHe1baY7eXDrhYBVyIxUfAd4WV4fX3xTzd4DugndpV1uNG1ElVgkz2MmVsYng3TM+MuDmKSrHXs
Rh84dxZqLPRB4JKStSz6i8xz7+h5Ue1UgyuYtXl12fgDQ+pUF+BgbV0YMABVgbwOdqMnQWELjGym
5sJWHj0NhG3WcSqKFbhP33qz+Soh9aFj8vaF1Llbx3CccIP5tFBwS3ixGs5+vNvidhfukpH0d+sn
LoZ/H9P8vymrCaukgj/Tc0w1PdeIr9UUJ4LwWHTVq8iu5eEDuEHH+MOjnQGIldZLPx2TRbwh9aQP
UFWDw2ZPAfxI2u1Am5SHJvxF0Ouq9uo1/m8LTDkohcDMrsPuNNXvEIBbjfHc4rDoGyxYdfSNFPCm
tNPKH6nIP6H6MsRiEJUHzwDMGCAQuEqnfr9MHtpUJ3/dhXVrd5BUsjVxHDMOaYEo0Cjy8yMa/HOY
BKCGlIT7uoaP3uhjEL44K5NcPcfPK77pJA56qbiS4Yvuu9az/bTjjS9Y91jR5X/zsL2EaT7O0wPL
w6ZHy9W0e/Rmfn7qE2VRUhYgVNZFG3z0vR8hEzGvWe2yRj714pFjhK72rkKkKmcqzUqPWyLeZK2Y
2QXSVSbuTo7ZkgRTfid71tJj7GAS3fP6dU9v73RW72xHNrG+77Xe4IsLURmG4IeJmor+IcHvddi9
JKzN+fcQtDL2DTkb6SwtRGrOLJ9jJiaPzPISCccz21Sw18PYa94PqRhahzLmNrU+cHLxeBBOHC/N
AhifqOxZ/dWuaN+uaBi7nFrujdXHyah6ZqMXNgWVX3qxyxZ6aC6gSMNNGBzJ5Latyb8ftHxg2y/9
tme38HPtmwyQVKUeB3es8Rx8jd/Rh65wOvASO57+Z7lxMeHQNubhdbxfrBlkcG5A9ktrAVLFXBLW
1v/pBFgHmrsK88xmRu6mN70J/ML1pMUrJa9YYoCnGpIQnfh0bp78lslUkCPGsCQbP5AyQjFYyS56
LPRHHMuVL3FSbUoSj6TGKulPYyMwZLBbcXGMkqiYe8zWrkRHMeFxsIIPJl3BQy0xl8Zau8vErFOm
YlgWsEFbl1t6w52AUBFezzKL6QQ0sxdcNWUZ36E5MUPHjDNovuyguHm+mZupt59RQETJlKnaqAfV
Hz+l2iha82MnXrT7Mv+lQdrwy4PXxW0eOk4c9GZUnFU4GU7SnWTfXqBR1HbU3wqlVVxY3XU+zaiL
emk7qcYplAx+ANbsdMSDxSDq7YKTl7x8Uiq/Obn0eG+bdZNmNMe8TM0m8WPLSHZETY40eqXffCT4
LwSj2dl0d5Gb/tEebfg5boEjt0BKktDH3/MZFTG0AWtS6YsdX+GZvXHRcJKcjlpWpiCDguNC9KcK
aOJrdlxFKCJFdBirDj26yVHGVpEq3NeY9XrQQ9lu6WeGip5ZjnBzxwUR94uMeGrw5xED2AzFdMi3
UglnBMwJ0PCESSz9yfTM0caFAqe9bOxwab1jpP/hSV2My1gzk8Bdl55i2NSSKLEiawOBS2B6gmnK
mx8wTioDSnP74Cw1bfzCoIxARGYqNhHQaSRadmw+lL3zc0LZBEc7liw2T6E0WPLoKUPegUnqX3aq
rHLZWiKKwOvhESG6ghvUrfVjGoFUBICvibztmDiOQX7NL7qps276I8qixW81KWsXLNpBm8sloSqm
2NkIcoswWW4W1VQqU/T+2M+v+eqY76p04l3hObA4MRaEOEsmASn9iiMrgas2pA8Zuq0pz0gMo2CG
INhHbx9kTm/IDk8Tq9y4h3r5jKAbKuVsIaNgbXg+G/83M1gtMHQAzSpHrB9lJBh0lxTbib8qsjiM
nZnLYpP1kvlR2QBs6sqRnY9vPCxQz7ct/27zlvpQXyQ4ZmQUo2ZfZV0rVFw04x9IKfvmFCtaYQ+y
GFaqxafAUbYTm+7YFufqD3qpjY6ldKT920Tq1M2ta2UoOF47dKRKjOsNa6JUjVvf7fsuUXyGi8BM
CcyoO3lVuGpeXKKwj7gP/Dv8hsM1F9ClmGVSIHexaa0IrYNQ/zUmoIyEAUZlcBD1h/UPOiwZ/QLp
8w4x/Nm/KQtLh+L5u+GEgASrfLhoCEaXjWGFteDTcCbokHrYGQ5HITNiCFelIDUTh/5t0mdOZT/w
0r+WJF2m8U6TFBxrUdt+Pk0h3VOp3Ahv5yRb6jISloOCU8bjFlMj/3HDykNNpApYQsgMHxqEPzCN
JRrZCOR4fbi7Jm3brdNoco4icv2uXH8PiTk0u6Wc9qgmp+pTEB14/ZLH8UhtQn3py2c8X4PlMVAQ
O9BYGL9vsY0fx0QIxU2H7S/bSXKuOAXylrFnkNv5DkFKk7zg1RbcgKMaAEGZX3k/AbGhUlhh4LWD
4i4QkxTzNijJjUfHDAnkgqqhRmqOC623UzwlQTgqzeYoqFpod1dFOwJJnp6efadXIle0+sNj+Ydr
E96SNSSfZ0ZZyo484przjhGrRniMebO+umV/ljH4h42gZVTyYglhU4mGOa/pB3iE81tz5+rEhM01
SD8Rc1EWO0VftThv3czbIx2vR4I9qveLuw7Hr4X7Lv9yGJ4wmSDqxsvD6y3xd05gkvEVPe5fvcls
pIVLYUnoSbPfA57YtK/dMrMf6ZgBftTc6lFSXVauotBWs7jKXbUmXglp9Dccu08ivRCSJEFvs34q
9zVnlCFBQ/ikfapxJO/wYo+V5A8Cb8iKf/HXG7hvOR+OkZjMiNJqI3E2lMBLYryoYWSPAYcMB7j0
5ttHm3i1Hvih2zMB05opT2fgEe2i6UL/sAsi5BWfjPlWWnXZQ/qLFN3bbbLTeKEjEBblHXiV5Xn8
R8hNS0yOej+yZ1bsB/jlPV7EV6TEultJCbT3XIfTN2C3k4yxWTnm2F9G2idByDBL8OVxbhzzJ4mN
IQ7w/RZoGmfZoQejWh9ibPLfBCrw9YdYhXrxoXKAg4l2C3ROoTxVwK+tUMTBROxy3ST5Gxlh+828
9i0P1mXbrMcPwzVVnDEkZdsvhDFYvPutXVdkQyzd6amnXm/1xOqg/BgpeYA653GYu60d+cjQrGPH
et7Wolcw6zxKjidCBm9WP4Hs8fXfW3Malp53/BWoNetftzkOc9qRy2P8EkPvi4PgL5HCNNHUPD7Z
scOJwYWIRjtWVJjx8F0qiDn4ACkYxlTOQzy/oEvXg7XGOGqABYfpy83iIe2uPf6yy2xwRD9XLB8Y
dDTEb761lIs8RCplqQ3IIrpJ7einc+KpYZ0gdM3PPOrilbS+LZNIxcIBbqnO6HLSz6QGyuQeX25C
YUI4exuI93xVdiEwvP6myYd72Fo6cM5z4gM/qmQ2jualLfTLXONSW19TeL5bM953N+1g/vOmT/P0
7WwiYyOib5WSROZlPUFPs9EGno3hwLE6E+RUZ0pbughuw1dobJQhkW6KDglL0CaKwwoxyKeBzPYz
9c0SATFQN5rWrFfkXrUxdJAvuMvNckb0xxyPHK9X7InBFbao/nnx359gOId/SODKBbAQ2SUnJJBl
ph8s3j0zNWz9vbQYA106BzWxI+gEhEgZXuk5LNqz2qqtcNxlQb40QJzOWZPwG9I37Ht9fQuL2seo
a4rTiSdxkpk0wrxnuTZlPzVHA9QmV0IWJEJYUa/SnJiqtQIiwcOKsB8KdwRJ+Z9VbYrgesLKL7cu
sHi+KgfatzsPCIBwUcdmJkph1wFMi+YyAJ9sIfvWddQamLkN68DJLlwG4xK5DVR6MKS2c7Z0FuxO
Fn3IbscjynaZbb4In849jyZRCxhkw2Y6a/PrEvp1HJj80eqTeCJhmMPAHl7ABEopVE/CaWmpHB7/
BpFm5x0Jhjotk270y4KhD2AzOadnGMbwal8Hjc8qI1VqVYb7TnnnuDFlRjV3kIhY6gmWW5LhTvy4
VJXymkIDATZ+kAK5Vg+RklT0XqMM6TIuc7e6VvK0rQ228kEW6ombHpqQupw+MBmgCywQ9TL9K9VU
n4IQtDs3c4z8JTpmUHRzMMxOrkzXjM9Vg1RJdi8TSNy1+S+fmcgiajR4PaSgLCL/SJgOXyR2OiAm
x7ZqjDXGyeJkCoR1rJBtS/ArvV+e+L9/UB1vQbq39et0bGxxDh1SOzCKTNoEYU+/xFwQmEHIBCwp
zMcmyxB/TtNFiLLTr4YDxLUaY/gVhddmd74a2MeUbZeUiuOJeBXoJLMGn5e23zAPgoI99bOVv3jN
KZW423gBJHoLaif8BZ1ZCed0iMaKwGg2709E8OnsfuG9R2IVcqSFBjzhBHY9G/FMHeABY3LMGB6h
WHX4YTJT+fa/7r2nTwi13EVREMNPiDiyMGrxPpnph7gNza9pd11Tb2W1VigVb8mUh7KBOTh4OuB2
jau+Ubg6pxIrGpKaOSbiyQDHqqoiI0SuJX/LjwHV0tGzSm86gAZlsDv3wPxq8jqOen7kG0QI3GGg
B7MIe6T+DONQCBEfiqYIz5XGYdlixZhR1JHaz4wtlo1sDCJVqUswQm72FKcSP3cPv3LvsA8nEfxZ
zp7eoSeIMBnpIAjl0F6yD9iubAkAKHXtXTurpp/4QmdK0a7dh8btaSIGzE7LYphCYE/87+7akExE
0yx923HWco/PnK87QzH34Y+QUkzppEQ06Ja3wejsDSZaCz5mMfi45M88+HT4UTypI6oKkIBn/81d
kU7WOb28F0rAg9PXQoGvHzx75dGYXwYGFk9g2ITt5Z6JG9FtZVYzuvNS1hmevav5ReUvUNAPg521
xBipNrGdtZYQ5/st/iuvEjceBGJPhfuRbyKjSZ0rDuIbn+TK2K7UaUAf6mb1ZS56KpmmmFbSYM3x
e2IW9s0dPClkq3vRYe8miRcx7Q05eZd+KIcNO7TDJDHWEWC/gEhJ2D9N4IOMsfjADYGsnTPt6Kb1
O7zPVYhCyrqabrL4mq92gvqjbAAj4Smk7kGUlTy8QhbZak17eEM7eUd/gHF4Bn9kUl0sz5O2aApJ
6GcqepKW3qnMztyPSCDtY4HiNFtlgiJI8jOw6Bc/mDkxOmi99grBGkWSDp0yBheE8/+vy25Vuntp
LeeaGITeSlyr/GNDwMkdCM2dldfsVGjeZPpHpUSjZiiIH4VRuhh12OLOJguC0o802ta9LClBxHa8
R7tQXAtLmFq15galUv6JBQnXSjYHO4EkyD8FdBbS8O8KBABSP8nQ7yjdSM2CDMdsh+IcES5YrS6o
6HWO7iQt4gsqsuJjUdEp8dkrPoTkh2a96BrrbieQ8HQRZrnxZX2XRnRiGyw6aL/nBQsTmeoaAog9
oI+RybNt4J9Vij3+p1PUzTm8saj5tsvXQgk29MvjxEbZGY9aPx53QCkSJhwXNn0sDqY8mGs6f5B4
3sBKl5DRiU/mJRcPcVCyuUDWoTE1GJwsTxm5/Z+ojG3Z1gFfQHywcv+lio9bVinPZAlMDo06Yv0K
Xr/lTMzlLo53IXVgRCWo2lnraZB6h3iC6+IrTl0cV0e9qCIZsY6i0oo6oPoMI3b1gbnTuOlnfW31
O+T4QYn7d5/F2y8HTfc+Z63D1271sea05Z/wrNXgEH17ueSJVrSFDgvui30oW7mQsDrHlM/fhc/W
7hPGZ4in7PnBTxn4/lK4i8po2c4lyCjM2bxSD9359lA4ieuuKYlyMvp1LQgI8mPOfnx/nbHSBZDY
B+jeXhzTeMnnFK+/U/gcXK0v4S42fcZ5EnZfvxVp3IF0pYgj9yzTlrH49VIpP3wvy0tPha7F2l6y
QQ2CULf1uAw/othpvKWh0y1amBca18H7WWImc7fHt9XBmHmzUpGLZwANCmAghyM6GfNAEXme/PDC
tgC2D0HTHAiqll0hhs2DdlFVYidfDooPk8iDhicj99l4YuwvJuW6AXkEppkly+01iR4IbDQbdvtC
Nv6NbqjpSvRDz6II1t/TTyVt6ofQga86GzPGQTZ7ZKL8++fezoak789RD1/qfnGRz4WwJv/7kuBA
nNmFSUyS2e9w5WBs2RKC/TVTMD7RjdXGC88ffyt0nIHZe705ikETBuiaG8dY66GyElXvb0+mJMMC
1r70d60KELWoBnrYDBJxytRZ/ZcKFx1yGpJKACCuhSzA6WyDRB9dxbzSHW2Qo5CO3mtYV6n+yssz
aG0v2gPMf0Prw6SuLUXvtdt6k34IiLW28rVmg8wKx6y4axstoj/3A1NmHFchSCPhXD6uNQcP67pL
GJQzNqwbLluS1vugjs5+viYPSbzZxzmr2lBI459cCZVyUG1LnvIZEdHeK8PBpBeKEqQOgoHKC/Cp
2+99b6MLjO19T04yu/hnO9STG05HUnrT4lMFt2pfDHywGPioqHiImCJzC/h4rxm0aDLbWCGP0fjC
EcN7KTzVp/K8VUPPYY5XnKlFt1Yo0+zntAN/+0GDo7vPilTrs/ICM3NPBUFnuMmg6sKrgbUVED39
GGn4TtpapMnqX0niT6adtdkY5HsIoKe5NIVBeuDAoZN0oJe6uz3TjgDi1ZP6nezZ5QJlz5TNTKXs
ftubAfFd0psk4InZUffXZQDCYeSRYpDvtleQFkCMAHiJdFUc3OJcczxavYYZyz+BvAJxq5pBDGMh
iEkOfMLMISCGRVqSg23nKks3BKAjJAOBvgnmiM+Lo6BnArGnCtl8KlV0fNV11dQTb84x7/Zj++rq
uFz0R+BxPIcjRInH4r9FGdSdP7OAHP35Yh8nU17gkkFxjXwXK6qfeAeoDI9rVq2WHgB/uZ+txr/J
E9bTWvJeUPRLmO+1OW3naxcURpMQgBbTb/M0cNn/5p1MCLScQCtzeN95RoRXtes+fAAK9Hbq+53N
WoxLPkkpaHqlYnygmAbyvcQTK+1Yl+JGh0kVAlqPPU4ngObHTb8IQEbbbpyCkfT1Z+Y2H/9S9d7S
HrzjHO9lkdsVl12dhigmhBt6R2KqtbLhczCb3YYuS01HfhyX3b4J6ONpRy3K2TrWA0GZk2EKf3+X
DB/9WU8UpXrzaggfJWhhGUlebDYXgoFpyT2GiPyVhULAsJHbTzSG9l2QLiawGiPZ8KjPCgerOY7u
BfF2K/KqhLU0gb02VOVyHDMmist0FL/lDMICWhH4mm1CRS7W39HNEua/OuhLOcVAkIlqYpDbgLDJ
XAkZMiQOWP8MoMXeRTFehPSkRsmDW/JKd0DYDJh84UwT4C1LPoEXE8dQvu9t8k/g4dZX0ke5Czcy
V4wzcbxSRFXbp4YYXfuEEwL329Ia3gG4+79f7gEahebD5MtTLUEWLpWHlVu9Rj3s4MX6127xjiap
SVb7bDu/3VRkftLsAM+0As28Xfl2pxnA+EBjMBx5/wd72jed6AVUjOlpwqTMXUQ0wiExMMzFhQI1
46DvzYvUHN94AYvi3A6EslOjrFMKtcj4CTgvNdXgXZbbnWfHSv5/Mlmn3dd2arTOTZxFfH0Z0QWR
y9BEoGTCJzj0Z0yFczjDMtQ8q9ZJTM6aTRMcC2Hd5vYGySyczDjiiJPsmv9aRRHtw+6SWvhOg1b2
UxXZmwbqdyv9jIkxv3TTt0p4y69BBnWprmiSqrHnZPH5W9tzYWNlQ3+EAdcKoLupzKC+V+h3VcRG
e2xxjut63fdkQM+bRHItn+RuNlVPmzs8Ji2tFbJIOZ0IE5Mmg52XlRz6ThrZVrIdYcNuZmQ1mnga
MdDPPF6MVkUZqHIh+8XVvYdokRrbXxOsqQEKEjAYz8K5SSSLve+3eGUEGVUgyq6VFCrOPBvbC7/w
8OGvurxF0xHFxvB/4YUErKe/R1m+QiKC52LauqshnLFJxtIdk8274wp06taKllObqXd1FyfW5uWb
liUEFxFVA+6rcr+cxYqUs6tJUPayXVziV/65/1zWubCn9c0jWrP4Q4D0ZKMUpepr2+fZHTDvolD4
nJ+C6FvaaSpmdEOZSyNruKRw/dgrvlqmpBqKmrn6t+f3RnXemZz+bA5bVy5GQrusYiShfPyWoaVo
0k+XY2UfkDQIt3W7gNvGMS9oNw4U30CWeQ9Ljx6kJHgVaw8GlD4N+44PMGJuxGVyBs0BKe2JVkXv
G8YOKpdg7jNtrKGvshuL1P2pbc0LIGuwQZDhsXDkPEgFP74gDgRiKt03YnKw0a1/OYYIBkoF3MN4
n5drpa36IPEgJsHrk7xQWqIkDBgLHDOa+MZlJuvF+61qat7VulvQOkC2yqo3WzGLbmeCQwhpw+x4
cq4HBmLYqDRGaBZgujNSPouAXRTU/a+TNnmboAyztt/2EwLQHJFsEUYZZSoyt2hzqa7n8d0WSEzX
g6/+xwSPYCabZ9j02Lqv3p2OfG5YMa/UnQ1Hqkiz+ZXYPHbPqcOxYln0SP2jG+QoUu4OziCcD8K9
ZEnUAvLKyTIQ6/2aAKEgyJzr5upOaW+vZ5H8lrjzMk6pZAOt3VC22Fkqvv/TZ9YVJf1dTLkwpIZR
5P49s7e6mL+WdxJyoG/dixl8458fp7oaHZqQXXXkxI/0IVnEgG0cFC9X4fR7GghfjHYHtpoTMHMo
YVd0a46rGp/PV5C1Cc0cF7mJmqgLBDqxeE1kUizhjp1+0z37+6C3Ztbz4F6JlK6+4K91k1H/Ym/a
BdYvB5gOMJZYz2zEYwIqt5uQkmYC1sRFGR3GWIfhQ4rTiSKKD3AAHSA3D2WIA8IU2Ooh4Ap9L/mq
Iid96iYgd1MuK+UMzi8mkQwXZKQYm/ieN6FlJCXrcjIU8wkyTbDd/D0T35dHXqs/yJf5AZHQYWHx
Y+GmS6JZuC6GSYKMSrc5tzApBRRfxY0U668mXOhv/Kfu8a8v8YBdvRvz3ujOg29f3JXFPUXiWEP7
DuRYR2EaJc08xlG4u2YJ6JBLZS5p/VBZ54Jgw0MOYAgWDMiqSieOXJ7F3fOuCuwTWaBOwJrNgL2t
ZBMjnu4W0hwNlx06j8Zs06cytpatvd/BqRLdtSgjR1zsBekqxPDVeW7bu1fK4nR/xljAtp/eEMRM
BYcIuTh1r7nFz6NWaSUK/B/dAUKsx6yWIAKkn3OSCnQTgcebc3W3VMyCvCjsiJ+9Tj6aZ20+fabW
3qxr8iKW/wYqicz1jEehvFDO6LNQkl5r41jlC4iaRkYFRITcOsPnJaP0JrjzVOs2JRJOZRSZU250
7OY9RqIq9AYYZMazwfMIGXI7eGjmFGZ6NDLS5fRb8Sgtuqb2UTE8nU4r3lodPq9cDBYvcX+dDUQL
WH4KBW8zgrWlG4dNa1ePrzQ7GDaSgn2aXTqRiYpl4aihSNDdCxEo4DJgze2bpvVuisWGAarkfLaV
JHMS4qZgli19OeCmHXcSgk9HYVzFCC9iJgNcqbk7utsPdWIZtnaP5LU7gECGMXQ1MUlYDsjU/nSd
Lhx/VXM5F8PzVdGfIuBZYMAoNlnR63BG6o7NWw1fz3cZazDbS1Xs1Vg7FRooRC0jF/QyUA+u2N8W
OWYcA+jbz4KXCNXkwmv0pnGma3MIT1jTposFBew5ZqqQxK+BzzFow7UVBJxTWYHzPLcipYFhWZXz
0TzCZB1Y6DdUJ8LRJQy+rQzeq/u7V9HWIWHFh1MUPJVxZgoGHJKDNdOyRIZcS8VLKCcjd6JcqhAH
pf1zXTwdhOmr5/8CfPnVxTXaY0+PFuQu9m8B0vt5ZrothX+SOud0kjur+zcflIyT8CKmAmVpieSv
s938gpe3mMbAU7IOLYOFCmhqk1OATlZertddVvckrABiMjEPM+a+X/4g8u6HGji0Qr9BV6zsAWwj
IKXrbU6LA9c742bEtzSsD2caj/ak0iMU4gILuW74zrDzIh9ozvgOFaJpXS7A4a0vVW+NFqjv72UY
XCy3rnVcjcif8ke1nYGvkmt/jueGQ/iesjRDMrE+aIsKbVYLSzRKxmcwQ1nqVu0wmm3JNysNrKnA
5ixfPGGYl14zF/GY0wWsutvA4IZqBs3H2C+2SWwFR3Hx7kEYRkq4ur1NMybLgMCvWYa9JKhAi9nf
jN6tRzcW7FAB+Msju1eBQHgy9n5ZvseQdhpF59voJDxxCHKh/B/xmXBGBGJcj8FXDikSKm0Uhtjb
p/OYiTBu9FOz98hgSGfxpUXdxk5k6tL/X0avbxMK1dQ1izs9YzH3BzB63EWoySzrY7RvjOYkjyS5
X7akgf4WBsozXL+TkZsN+2gtWqTSpoo5zZziJm4kZm34cJnh5Et4ZsRDxIWmXWauemPUNPvqbBPd
J/nJyekbEzhMcMt5EKlE+nDJgAQr1Tl72h1kHypLa695NphbjAg5oMlrznT9cneZOWG9peui+QYV
9GIlbsISGL4U+uIqlrevGua5GwxAbdwdAQAOYTO2lReOkQzren4JnFQMQWCYsMHIXV2kZybHgqnw
KZfEXhKdpoKZSnfgX/892qsDX5nYSsMUq3ypzCn2Y2RW8Y24+jeVzpvUJ94fXhc4tGrA1IhaSq9T
jVbUynpBV6Xem9sfSnAZrpnBNgtc4HKFcc6M2sJUZNJREtpw3E2LIJ7SHPD+IowdCouoBU6MvkLu
Qcc1BOHuYZAqJJ5lM8TOrKcf9yrVrFl7Ol1nbem8m/+o8awzq8tzWrbGCeN88iTrIZ8efUXLL2WN
cIm/AUa0otANce2/U02Dru4TckvDe5s20dYaRCkHlVlfxcjGEbn6OEvvthqHRCbUeiuxafYPMPH6
4xpOedzK8IgWVrzmy8U9jWWtWOewDfA3Y+3Z+XGMqQP7gXhAPsVriH+omp6h140aRF0UeUfsv9LW
F4eh9pKhcb9xoMPk09p+3mJwBSYjrrcrTEfIluwgnAkaibEm3My3TUPlqTU1MMWLjRURsuarWoDG
albYXPqavQqKk8idErinVd3pOms7PwqV0KyZoyCIdaE8p+tyBR4GmqA7fjXbA+DfL4zZcABtwu/W
3lB4Inm8be0f/cEYxEzWUzchH8nb6CV/ok5MPxi8tAioKwH8F4SVCxwRC/yqpAvVX/IqOWcekIRe
eXoHT3Uw/xXYjOe11nzB0x6aNghxCIzpaS5NrjxRZ+QdbbGsd2efHFxR4B3/li8KFpO3nqC0RDXC
K9MMl4/FMNPD+HOyxLE4REo9rXM2gsr89aXP7isEpEI+0ZhZnalsUf5Yrl/xkA3uklN7ve+v/H6S
Z2c+ZUca7bqUl83KHMrjzPrcSNa3gZlB2V+sPMWc3Wkl6Rdrr+93YYuATwgvcIebvjIdNzuSf0yw
VCIvMkl40BTBDBgciT/Ahv7yr/MeYSBLWhdR9mEQSuzEY0AAfuFXnKMuGXSHFzwmn4ETpIJmwJyS
H9wPmeU1ioHMiGAvHf1sFI2wkgMYecy92cGuxiz19I3YGx5fODnRYayvQKvqRCzVY4JLBJVYXZrb
b+0geG+CNWKmQGHEwC4tRW6Xn5mPn5WT2GSMJCCDJA3T5ZUWJqF99ajUCtxf+7BD0VLFCKP9gt1W
beedxYzp+MmbCKk8VzoXVJSylfBO9PLIVsuZh1NoWJE0WU7R5z1qr3UO5+2DJxWalWq5WTprJg5K
yqRQwbxIPg4x5Q8LHWsIb6F1FEND+CggOaikmvXwpUih7JMFglX6RHfZ9UO5eWxi31Ry9K71e859
OqT3XzI4eEj8uacmnW+uFUEAOM4BbdGIGUAntvtf+SUSA8rhDM/8nQMtikaXNtWPOdJZ/Ss6TqR7
W5ju4YRZOmsbv4TIq5UcmJiwsh7IQH/4CvNS9buLdgxODxuvalr89Cn3M8SDBBonVyLZiEphUluK
9yCkyM8iV+8dwum1jrOI2MVE7YxPRRCBdT/Z4Z9oBx54Mz7DxFGzlow99VXfqHdf01R+Q6Cu0ijw
hWpGddjbS/18crNKvMit7s8UmYJMtPHnz0hfPfn761Oczlycjz9gG8ZMwzOfIvrPkLMQFTXSZdjk
EF2xkCdBhUA2hwsBodcuQ3LTBRcQgzcKTdRv9aSTbJpfLbppKDsoU8x2sftNBpPlQ9QovOCS2Q1b
yXjfLPrrjL4QjcfB5oSw0lJ+UsnXCQakzSw8aPmzCKRDgLi+XTJ654OzvhLAYvrQQHw51aGT/q6R
N3TrkoZUmGarT8zeo/TLbDvubDTHUxuSIqs7tHfU4pwdJnysnxYyoek1haxtFZqC+QyQuqrYJjl5
IdluASDgUu6kJN3qZa68RE1sP5zo4Yo1G49d1MV92D71nVeS9I8t+JylRJlaRurzJzWJyXRXZ27Q
yto8A8cEDWLkORx7AagElevbfDJHul+TMZFa/Qm39b72Z/mjaeyBd9uWs06gv1tXaeHoRrnHK5AB
lnJUATo+mGW+JWJxEnJKmyzXiGF6OMCojDmVBAea8vKmGm9o6Cj+lifsUnaIYapL6/MBkNqWu26B
RC2fRRahRbb8IoM0MTzg+4FTbhToegI5tiSkZYrMkeVr9geuiGtydUHu6cPpb6OLWpXS49gpn6J+
X6nBGIMDJ6DZcNCz2Tx0zHnTfbnPoHTEd3L+Jf19p7D3oK1kq46+O/0cD0nCV/J0QgM5iSUG0z3n
N7M5JN+/UdZmcIxr+id2Pv82Dst+EknEq4b1h6rN1hHkeLHMdAi7pJUSEkrvCcwNJ5wdhzmwnyuC
ryfLhv4aNjMUxpfUvUjB+ciD6R9dX4vtMJYZFUeggz+H+EYhCIH171Nhdm/1X8VyTwyKoaHOmdXO
D/NlecTDiql42w0DHCgH8htrg0/JoIYaj/wGOPn2rA8jK9TXkqanMV3HOibOEQBP+g6lbHRhC23R
ImiYj6Y8TxRfulDtQAxgDS+md9QvQSTaF0FwxVm6madITsfEPCBaKg5SdK6t7c9DtkBfz6XuwvuQ
sTchcmIPgD0PZR7SWsKEyP+B6nU3TqM5eeTvoNkzZegopI66u4mwtVYzq/74Zj0httT15UN1sC7K
HlyWLqEAJc2lJS/Xq7sQNODlUYLunnUFErMqENKQSKZAqzHbbPfxbaYfb/M73xGf7wuYKPZSLCZb
G+zXrjMqZ4gdoZdxddDO2+ih674/YASrL68PoDiqKD1/TuJMuRCXNez04uNi36accCGT9XQ9tmeh
ti3DfECK4eAQg9JwK7FtsxyDkFzNGok9e39UxSQt4XgY/DlhuAhmNOmV6HV4zr0YHB/WO1Ia59At
xYuKtBTzPj73hf5FqqN+n1WB2/hAG4cRjW8+7gt8S82AQZVfG9wE/gsEvDkPHpxL0amfZhqVFRoZ
RBEfMiY3or+AdqxJYr1jOAPHB1CQqs/g5/zn+G6Eh2JEPuONFWa4ycqih0VAQOwsczfn42IhV656
4BJMgRALYvj3RaICgya+tSi3F6D0SPR2GbNx2jThruosR7BdWVclC04+yE4niew9/F1AF/rTLNtx
kF/AY5xa6unh+LcdcfhJGs61IS312xpKY/Lw1i+KS4sflFS7p0G9TULQ50bPA9FuL625pZb7HYDr
up9sdtvYyDptLHyrraNS42EFM+xV0YUBLj0rCEJl/Wi6sZmPWbN7THIR/5Vb53Rvi48Sh9UNUF82
qlQBCGCWPwHSwYi/mbgpMLGcLRqj4WsaneIVM/hKihqHMb3t1QS9iqSh6JRysWEtO2LBPv8/YlTd
Bg4VPIKR7ug7tpIRH8mCzMW3UTRwnjxaD1/iIfh/4RDi5g94L0vrFHdBPXGVKuzWZZAdzbJE9uLz
QaSArqsWcH4ysQbDJJjmloUs1YWYf6SeiJVVldJS2mdOWlHgebtt+BOgkAXcl2pt2z+QYK7kokjS
RjVs+o3XnHplijIUbBFFQXehFtbuDEkyXUHHKWqUHtDUKWEBaNzoz5TsABXGNdu+LIW2DLoXKcpH
6cQ/5GsGOkCxgudOs0+zofZF4lUREQIRnfptznWV0CY2+XJR+2iGpoGNmGDt9awDFfXV2qczuGby
HoNudp9EoaP1ushFN0TetFNQ0ayCeUYeWBULEVIvwywoKzQR4ocvppP6t7W9sFX6MJBPk4+fwy5K
LFDTVgHfm2J/MlTE/Wnn1RBmjpzbf30bS0qzNSY77/5/BjRGHC0G/OaZCjE9+PMib/TbsNNcFcgX
xzqVHnNXG1jdQyOoyqfHJjrO+P14nRWF3mMiYQ6nOcuRDHtxG9Kn3lhuTiszmnJW6yrgJi+jV+ta
e7RIO9237HtOO4e8I+5Zfgvbht5A7Scnqx0xDT3k+ZKEyBjQKaEzYAvEkyNJ3fVGJvP27OJCnzEu
P5DGtQ0ljci9EWGykArtloRpGxvDzxcbGIcwZDvpQPRHpw9au/SNldo1GBXeoC0t92fS9W2sIYp8
PBJ7NVtvNB0KxOT8isKD/FEbVIDm/fZHzp9wZQqOHEfIvZSb4S2xR8J3+/rI/TIJmKHAbLA6P90r
I/JivHxwkj42pQi9xb92mR1AbnADNxlTwQKKU1LlhlW2hkE7d7l0zbveJthJFNPg019mpn0QHUqW
WSy1HZ3DHpFl+kSeeanrrwbemXZAIhjYR627Vm4xgku7S6iVVt6QiqD6e/m41k1R7GBKbOC7IkYI
d4XhCRkY40+BcExQMRrf61TvpZphJSKEpAcuo9Dihjk5D42YuTdJZVALO1KZlqw0eCGmbhkdoZ7F
eIJqwrr6RKKsPeR30pNr6/tdRdNf2Ncr6seR6XLkOChqqOdMYpl9JUWIBtPhw316Ifdv6z7h1d/W
CNrIvMdMb6r001Te0ZCNb2+WaN7mPqfj1UmemuQI6Xlm0CUrTzZ4l7Zx3KCVxn6Ir64Qh2ilnx7T
TUHJ7ncAAMdatJ/dHYpzXMivE8Oys0bZqg+UUBM/rU/lWhLu5hXXR/KZdrYsPJhTAkTrqpPPhbpb
P1BAJ3cF9yE8+E/zYywTh2WbM6OqZBBM2eLfYTh0IsPTezcrCalcojUeEFHhPLQYHxnPH5ruyUZO
Lef1UqefS/fibTMaRIThFBWYlPph5kl9GmNo/R4YR1PyLHaqA02cTVRi1/ezvCDHyRYroE+QJMN3
LfEutufSJYpXD00DnDVq/cGUsfH6EEVRQT0CjIr56SSz6TV5PiscxgXw/F9wSrmPNfd7sOBx4Byw
SibNOSizaqf9GNA1KJfo2qsFz3wdoU4+bfw1KLRbxnu8EuN39j5fJo16c8MXPDd2gqe8cx1nZkbt
eYJST07YsMUnPL6w+gL2R9/eyYLcxDzYZLWjd1hMiV2+3MuPMakeB6Bxl2lsOqBFZpb7VKvFhIlx
CHAAd0gU1zNi9Rml7nrIB6sq63sCR2RLVRmdxnOTnsEadRWI5A+Qse/K4HgmqQyZ/J36dhfwYCZE
z/m2V3APzoUAAa3kI+kSFu2HsBly9rtm4iqedsg1pQ3BvjDCC4HK+4oTJlVEgWdYW0iTUpPQpz9Z
YoSOUavfZ1tV1izfowHMNXBREhkRuFelg37P+9Ev0T/LDyesO7JOR9yNZjDofwM7vySlu4QRG0nt
tezd30HPVX6I43PJvKHNdI4OQVqFtKUdrxaSDJcHbyLcKaLUxDe4zWe1QsJ4ekKsaTWYRuf5hzfW
z1TO1F9ctilUG0K4YYcMPnmsAqcG79U7/kYT8HLkoMPsosk4uH84/D9ZbpkF/YRpYkwvY4Ioy83s
hEjwtu1gd7nHCop9GZs6auROUhJ+OQfzCiENARZQ+zFYgc1ATSi2o4FxZGVCMKzDdOriQGn7ScCh
e502pIiO20oWu8S6uRKQTW0U4CXbV38RoRa5capXmcxeWo6SJssKXKlu+WZcriz6pX937Egrq93F
Dzv3k51EluKmpoXTkh5V/oZ+ElumQxuTGTEwCSJBRhoTwL2z0yElPQoBwGwRLbDGySmWxx9Z/VW4
Q6lRGoXWZ7wSzTDOamP2DuzHnK5iqCiTidEYfgT3W4tZHbOcEFvN1C76vsUTv7hoCKv6tifRvjyI
BSzcAAqfEBPCV/Wyy00XFfYrDi4U7UdRiO4y5J+EB/dOajgicRJE9b8PtfycKNojAqqHC2ghiLh9
bUR2TIVUrOc9O0T2MpkWOJCx8/W6hhIoVWLAivI+h3vCzj0cvIFV+Pg+5E4PXksq5pwMoDxHSM38
LxtITJehVzbGajMT57ujSGZQv8UPaqQIMrkn9WNdfHuPKROZoUGRKvAF74XECyYdbuBf1M+YFdgI
TN5o5J+GG5E/Wv/YJmLkxxBeAMr0gcM+DBcAQ//P+OJBMUx1CiaOKiGtyEblsyPHqhueabtTqMiu
ghEjKkMXMI/N02TJ0FEhtTB6SoeNRejCEvdIpFUmEucI6/QhF+R6XQ1r/CgcIf6ohQi6aVh5TcBs
s5SgLudSGK4KQl5cWUSgThL/qIjU5wukYGceTMh1Ffaq7KCRzKGoQkmwLhl8lPtcFpvAkVIk0iG7
lJKQLWy9/QHo5CM64Tce0tSMpTsvpZAcm6j6IrYKWrhUnNwGw+/PysfBdvtL0XNv9+A62hZJxaox
Yl2ZJcDAFQCZN4y1GIDEBhnjG68pCFhBZ0xNL+Q2JZNrm3Wo3jCbby73b8xZ6vARp/i7j8be0hba
bnfRaW1kScwkW9Ve71ITxs4oVFe7AjB9FEbqHmNRMhYN4rydNXbHCk5ADpw+V5l1Ue/m7tiBhqQZ
BJKDezlHVcJaW5vXmKvk4LSfuXmB2FmfA6sPFJc0RRdsM8lAWkdwWlcOpC/bVSobhFbMvhX+0qxn
dd/HJei8cBnuaDFAv98AroVw4bFCg9N+5oIs/MOMoRdTBp+x2gFB5pZEZbdHbcBM0JwibT5vjPxG
kc38vF4ocE72xkHtT85bBUPWkFQIWoV4tRCEUELzgHPu+BIEs9pxGJuUX/22eOM03YT2eV2INfoo
Oyj01LVm3DXXZKVl4JTR6PYcxhrUUb7dxSZM+MiS6mVkazkeEfd8B8fKaQkkI7QGHvVtFlZ3OD9S
tRlLut2vsiYK9l+4kshwHg/sk2vj/0X2U9rWN5FkBmuUFgcEAtc1KzLp/NubcpJJSxXRHgYqzetU
jzQQWeJNBvAHHEuKhKx0lG7T4D5wO+u+sT3ljm7oO+A+bjcgIM95kt6u8EyJWRB3uUcj+CGXFC/f
sG8cMRCSxL20Z/eWvfo7JlXrkDRiEIsiQ3KXeR/dAHwAHb17Dw4FEpuHrZJBaI2xUHEBLFW/56df
weF951IIktpCGqNg/GxWlU/bOQDjJzlnn4yaJcDduiZs8mOPNzNd/v+w4eaUthhI4zTm16UhKIAg
dlTrDZXjZXpjptRC4dm8Ah4mcCzBSsro1FdMwqT3AqMVYV12wmGR67IHz5A5WFRuyFFOpLlwOYrC
hih+nOobQ038SQPQGTEXJ0q0OmPcbcG0Qt/CRNd+D40uoaTbdL9JIFd5s6x+6RYmyA42geSafgNV
H85FYVzH0uFmbqNSyOnThaAbiADzeIVNiapFmxhpsY4nEl7Og6tPeOQm+v0g8JN31JVBNDdIxc1e
oLPrEzMBCYQd7qp7et45INvIgDC97M4LqG10j9GCfbpZwF7M5qcUs4dqDy6HJzMlboq4mxL8j2ry
jQS6VefcoyD2UIAPPUtytu50XC8OSOnnLtdiqExWVaM7lJ1c7QhTQdwYUCwf7fddZE2sBJC11nuS
Hke8f+PFY9aEsq8UFdD9rlDhknE5IWMe3Nb91yTNkJOAe56LcWTYdF2kM0Ni9le3TmnQXur4/sNc
Gg5erjhHulZQnKpwJlXLBanAhxZUTrWcBavLmSStEX2GU2VdukfWPVQTINAHwJ2AWpzb6VvBRS6C
L/cWbrPQz5h3fWwhsrknKCkrqIZMNWGNRATzmsvyB25UX5aEVb5yOqb4eafLlyM0FMu7h3yvnxF4
70/DFbGyQI9iYDCDWB+rvpOH9Xp/34/xBjfB+IwrE7w+FskraCyIQ1JWfgI7eKq9w5DGbpXLfMWZ
HeDl/fsKrXPLOZONQaxflSGwbQgwgwCpEkF4nBFcSDyifh60qn3NTvuwtBoOoht0CtMcbHMMLcZ0
QzlZZEwmc8LJRyXoenimmpc4VvXtFnIEAwpWPYAD4YvMk9dQ0w3Bhbu6BlaeC6jfinBmSZjqO0CM
3rTRO9o7X374sHiUlqhu7kQXSgHB4WRjbsFfn8g9cyb8zL15aY8/0kpGjZw0iNDF84yadM0dRmhU
j6fH/0mNMmH2HdCHFnf0u8CmErTH+/Gdk9FYtxB4amPqwaXVFsR0JOVHwN85oMe/RYQxfQ77hT+8
FFh5JWs1XkwQo4P3N4TJF9eDmnLg8/cHOxM1f6KGrIz8ZlyImTvy45U1rgIk2MHxwtaa97RDOSR8
iGMEnkG/N29xQV/hw51AXVTthrspyjd9hnIGN/XDXSsbYBn93NXVXFN87VApuFK6as1htbqFKl1/
YKQfO72v164XKKmordTNyRNrl+ZdnVGk9J9Xu9WD9tlyx9je2YzB+hxYDHxOxkd1uSZO4YIsSA85
aCfRcVcW2KWSErmSMZa616ZYWke5YAtHLiCE+bCHIzXJ1Pgzvdda0K3oZvcr6hsjNXNPQSBiqtXn
hMVseLJ0n3JyjVYV7eFb3Do4j0/VBdpmN1/goJ+yZwhztIxPCytvz5xCRRd6NapVVWLxLxHA6UO3
NRIFWSEFCAwsBQYPMkADjeweSe4CR3LpM7A0XrO6mBe+cjwTgze9TXuSx25UNylxu2H77fzF1gbF
47rvJI04b5bwsIa/yYm+MBSY9z9yZ6YSxwpWkx57B+YDdWf7d8cpjETkdFY/8Y95937s/7FEAvwy
2hl/iBWDwstb5zLbCWzlD2ZmQ9LYeHHL7C9z8rPx7eOItVucwybU5aWWBWRm9lQ1Iet91Pn9btf4
XwNMPXTVIW5IgE7CrSdsUm/8j/Uzl+7hOH6V5L7SfHWW8iWN+otGYXYqj2F3EV0/hkp5kjvGq1vA
PF6Av8w3ZmF0gri0ztjmETSC0ENIqwtEIFgw5n3OpnIYJcUqsn2JxES7pUCwUCxJX0599S3dFprT
MuugB5T2aYdiDA9lcTJko65g0XOIxei0e46XrHQ5V10Y+LNF2cuRO1D1w4Xn4N9MbECHgkpJjz8E
Dm7K1kSaninaI9yHLc3NouzkQ+2ZxKB6+Gi0tKFFD7BH6Rv3eECKTyRTg2pUrtvw+nxcj2fFdb63
qjly8BZxglKrHbw9CdRzJ1T3BomYBzcRoD3NTWB7CxIp5c7aj37msv0h1guwPwJ3CCZscpxWttB4
dscEPH1OCMBZqph6N29IFB/GhmR0MyY6lSKmnQPZl6wIYUjCphUkdo39zOlpjYKNMvc8Cx6ri4ug
TlHQ1PPSsk+pqh0qIGPWKFyvAhSdMQ8CMu3BU0MIdzeUU/uljYz/G/6hBjkVNv7pY4jjUHmICRhK
1R5SJZI5zJQi1zC5xF42bL/cHVLRf8A5AKXN0NkzbrINSs/ou+uEr8m3JN+aNzQc3c/7n+RryeKR
czDhNqskgukiuqR4r6CcPmORC81v6plNp/Tiiox6XuxrYzhUwj35fePda2g45NnnanwGUrwhRNFq
LFI6w+a2WeZa4sPOwIhumukJ9w5I5n0X3zfEhgdZERCn8sURZnicCLvijr9tA8y2+LodZBqSWWg5
xBugUAo8yPMqZkiveb8IXM3UGDHjW8mTvdI6IfPf5mt8zz93UKOsG3wia9TQLQYUQLJoLSA30gOw
V5KRkEPzHsqMLpJ/F4DF2x7tFzx/Nv0WHAaxN8oMEHHuWgYqaeNMUhIlE7PyVo1V+uFQPJbFj65s
apmiQfaeew5NUIpZCXlWIBPymqWqjrhk9EbYG4j6u8PiXLxzmEruDGWAqvq+bV5rVMxi/CgO/KtK
tLIe4cGX59ZPfm0n+jsbD9U3CfUuYw5Gr2SHqW11I3mg1bCZrWzxGfc16Rpt+CsK67SnlNgkcEi2
T3+vLv0eH6FtY9m2e1GkKtTc7x8PluiSza56YG7SSk5JXYKq9wahuHInWdZ3tzRnhXLAq+YvrFrk
4OiAtMbyIZqTcQMCDm3Fdw+p1lti3/YBYy4fEe+9e3GnknCnCPRQiM2zoW2efK/br5ZwoHU110TJ
STZwJUcAnC2dOGlgtoGcr65C0S92ZF9A6TxVC+zTyHRJAYtBKtXAsKcftGFnyoyjrkN9IWgF++T8
p5W6nbA2VtvPUwrC9MiEoJL3MNp8Bj3wREPv97fkb1qnICfFNB8L4/pyODuXxyInUUXrpdIOCmYY
6TSs5EiNhiuaEV7M3BO32YSTCyZyPMjhljqavBK72V3xTOJhaDV7bO+FzjcvNpqjv447YML7w7Ho
FzJW5y6C7jFbAmsoBZhgnHFgXILhUU3G66Y0s9cJKdVJlwju3GeJFSdjn1dSGaQ1cieEfzVsyNXZ
yhVAzZbugif5JivqZZA8jzaH/o+AWNJTWcwb/TcH03k/Zstje0zpA7D3F3Nc0w5uFmZUevvFXXSV
jgfX01qOmZhwhtqI3FuidiLQwS1J8xUGzPPpw31kv6EgQBj5ktpkNoZ3w3YmYr9iUJ98my4n4X2h
2kwm7ET+W1qUEfZBBT5X0g5c7JTlNjhimKRZQ7v7MyRdeXQ4+uU2d9jBlwmtHksXh6oedug/6EBt
2QvqnsCGoAHMJSFrOjEZ7lBgWFEQjOIXGu7CfupWPuJIuNYqC4t2AvvPbffyCFx/QA7cMueRh7jY
NmEkPFFUBxYc5vIuubDgnrvrnHC7+mtle5JXAefVXv6ZV3YDxnIraV+sser3jTx5/DlktXG7EvPO
NJlFmkAOboxLZt0PqDv39hAPunyb+naCYLvzzCYAgUHxlhx6MdvNVfmCgQEN7FmhXnNf0bPpv9zh
SgREKY5Vg7x7cICP3CK98QfQxAe59z0b7/+blsxQVspjhwB7a5V9AQ1V1mAQuchQYqEP2x2E6yE6
W1FJLfY6UTpSeSkUhWr2/tmgFxORd772bw3QFr2jAOrpmHkQiL4qpmyQYj9TdWqlRdfo5SV24nRr
q4n0uPMIA06nQGPz9wpVDwtA0lcnNaQWbU2K01T9xOdDQttzqwJ8dL8m3N9b/dSM+wRm4fI3yM+A
PCk3glHKrIBAZFxD1zX3fX+kBmL49x6IcXChtYOyFpmxvbcrD0L69tuHvrfwMkgvGwfkm8rf7IgR
W2cM8pA1F/Rx93cFXUUSpeuJrP0gu9VZXLPi8v6vsA0k8pJyMJnl3pKWEjf95E1b0mYY+CbP2jlK
esUckJtucXsHCnYOP4bZZHwG1qNKxb5Tx4X+kUpL7ewBSENHM+44R2pIDVAizokx0O5+iqypdw2y
invtbypd3E4ba9X0F1KsPiQxcwlXFHmhYEPgW1s2XF5zkAC4BkmUzfUOToluYSWWfqKLy5jvoniA
/ZMNuznvo3jv2AjAhISR+Cjd145Jy21otTLWG8cDBZ7dq8SCTSg+U0I8CWLvpAb8z7mdcFyg5guC
8RaxiVQ/bjU70nGkuyiSWtao1hgA3mf3ojaTtzn6fjgQkVLYspANjIWZPb9Gx7YRitfcmPfeVLC7
ZSxo3vl6y4erXn2PzISNEi3tlkDo+mK89d+NKatHqTBV9vdHMTB5dXKhQUG6yj5vkN1BNENEy6jK
POMI6je4OCg9ZvdpGmzRytbNV5tSEZ1qt9Jq1jVlOqCUzzRRZG1rSMI7ddv/TQjKzmjDL+u5tjp0
T+T+LZkkWQzG9+3XTgxEFRoXOIQjimTKfSUufqS7wrr1AZckPWQwfkVbF0uFp+taPa03zQC677MF
HobcnsDK+DcaTnOMzfS/wfjudF+F/KA0+zJizHeJofOsSr+uSDITIejQR8i0lyxoq1wp7VYEPLal
i44T7UiW6SFU66k2hd6AJm/WZGBzZwzzGZ0DGzNgWHHDYItQpGGucn64ds+5O0b3qFbqXAQYXlU6
qbKQbK8QqwSFRG2FcOmmgh9eQqZeJjdt3qX4Q6TMGV7CrGOwrnHF17GiaudM8L6nN0gIgYUjEDP+
fKoJ/DJObNwUcRP47IUVVHuooC3wVaVfuetMkk/U+WVn/Dr1wC3DQag5tsBFIe65uOJ+EIgjWDSz
NaDvwYxfc/oqOZbMv6fbUodCFMqaiSgyROGW7nB9Yy9vl101DcULLxMeNwkLCJkSbUl1zf7BTUvm
LHUqAiwKtN7YTW6WWQyceMGkrWweX8KJGpjLlh5I1epfrhvW7vwwS17xa2KfXToVq3tsL6P7djli
pGQImblc5j/thjimUhix9g6W1hJPXwXn6s+0q7lyda3PRqIi4oTIXkXEYZ4Z9eg1I/yMsjvlEcL/
saJAIilhCVZeFx0G8lvN4UQsUrvN5PuALCbgcb5YvY87PT/zZ4kfqAs+CSbbComXHJFe5APTs3hf
dWbdoF/sknQoSC9TFfcWowJivZSeJBh4DoDakYhisLwWsWTMbXnLR06SGshAJmP9BVOwJNHmktqv
MgzFzXJT+k8x8+apkv3un5HY6RgmS4aJ4dcw/oZtlVBwBoshXjn93oRVS1/DraspoIyL80OO377k
UrtQoy+rF3OeueeL/VAjwLZ+kxUI+coclUAgRvPd5IDDmX/9ZOa9hGbNlclz9C4ObLb7rqF0gGkX
LLG0HgeX43tJUIbnFeRsR64BWVARaSsp9kv1YBQoOu1WBudMOeQ4BYXxZZRSc3W3uzqEVOnt3et4
TJsn9P+Qgza9jKsTCFapnmR46cldShRYtTPtf0S/Hb6acrd1dyOH5nLEWE5mplX22eMuOSKQOVsF
IS3e6R+QWa9vrQTsQEop/zyDhrAFDtGMxrV2HLRKDrXHuWrLRswQgDt1ICx7g51U+VG1mCuiS700
xRd7gudk3odv/GHAUrr2IDqWXNFVFm7+ChNY7ULdj6z+8Zja5RM5cdpaI+XInwC9z5yPisNnmxgv
/rA/0PQGOlheDKV5LLNIDhjKBqdPryMWeeY/ZP9Hy3EKBVwm9QjE/nWyh8mIQo6ktpJ6Gb+8Uj00
fFXEIS1RRkOnB8sjR+SQV+UEAPkUJN2AKSViLUOWTUfuN2ktU/ImJZ18M9QcMD2VdQeANWlPkTAW
0sSnGHN1+UmVvFU=
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
