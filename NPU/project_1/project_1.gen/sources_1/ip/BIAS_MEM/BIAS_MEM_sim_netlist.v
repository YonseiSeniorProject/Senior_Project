// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov 23 13:45:54 2025
// Host        : MinsungKim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/minsung/senior_project/git_works/Back_Up_1107/project_1/project_1.gen/sources_1/ip/BIAS_MEM/BIAS_MEM_sim_netlist.v
// Design      : BIAS_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BIAS_MEM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module BIAS_MEM
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
  BIAS_MEM_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23376)
`pragma protect data_block
1znkv3/bx4mn4c5pNOzlepxlxBI42T7UxZIqVTYzyGg7+DWm1GrGM30dqC82aYgMnppv8HIrR02N
h5yfI0Fs3i96RMxadQbprwO9GuPlE6B2w3ctY9YicU/klbaJj3KkFTKFc3J/3tdOleEjURAiMxxj
w8OEcOX1+LinhwTgpbDL4I00i1QsyQzOUgTvCdlh/Ka4xyJHRzv3ZWnmtEW56nN+uxyMpJe47MYk
/u4m1cY4NGczOY6R86VNBP562YoT/XupiLNX+NXSnVq03C0eJLgHEzMzSuWqFZ3ZmnuJg1F5uTql
oJdp+zN+RpPPitLoGueaYRq7xfcI6wiJszGx5rWJ4N8lNKwryqmiIYc3a31yxWWg79m7pK8qq5LQ
GbhtmKCMpK6/YiQKyXuxvoZVf4lGcaNsuxC9cMZnEiRnWaUuXQpQJ/DT+qUsTjufWX7bq3XGuQFk
l0sEUkaYrHzkqS6Q9CLGXuvo2Mki4nL+tKz86uGyG7qQOC/Shib2SycK0MzqWOaUPQnnMjlK42TF
Bom4cNfYWKbdd6HxAz3oBqkIR1M9S5PG59FGfSVQwVQHWd/YFWBPmBJXItTUQ2vIw7qLipvJC1B4
TW5VJ7kouH9fy4/NIDKPfNAQgOdSmkX2cj0XZg3dwU0ZA5Ool/CSbsegcvAuxEKD74zMJNWVxXNn
xJvFlSa6eBn/4FzSmnRT3dp4pN5U0dXvB96R422jAahgwHVVtFoSaTCUnQjgs9vXOscGAbe7uGBB
OhyQUpU3d9x3E7gxzXLULjkrycgf0fdqoQBKmjsvxgqDKsr79EYm8Beewu9laXvays6qwFOHBNFn
f7uBJV8/wLjHslPijA0BA73qSk30r1TKrP8fowjjo8SlxtrdbmkuFvDI6Iao50xYWvKRL01hE3tY
UWMakzp8GrEZ1At2TFnHtnQAToCFpuWgvufR4QjRyC0bPFY5lmtJa4NtzQa/rPuP/QxvPRFoSLY+
dVktCah0k4bUKWIlxN/d+Ma1S/kcyKJLV6QcA1Kf/YS5wCJReUIrhYChF3ezHLbpNHs7rfefgqOI
SJaTZATT3+HQ1fvZRgl289hi5J7sFcy4V1MJRnaComb9vsC8esOZbAXeG5zfO/rJVlBw/4ejJCre
GXxJ5v4eusp+fboaiQ7bYZWXGXd3xi0AeXUBPbQjZ1xuacj7xs2R1pFrC6MpkXW7e3Q2rxj6IO4E
wPurFOYPGd19z0OluPdG0w26LABx/Ejk6c9B93V62MRxmVeDtSZK8/nXKkJQhKcusoiji+BUQ967
vapva+PsmAHEs8q06MG+0u6++I8LI7w0rX/tEERCwyZRNuQR/H5jcEs3+JH/V1jMKLfi/37PWZQ7
OkoKa5tmH5cI1b8EJhnRVIfUTroRzxtpgWsN07YXCunv3G8nJ3nucqc/LmAi+O02EfG2gUCDjX2h
sOs0MyBbLJooFIVjcZUl98sEM6jDld7wWkLeBa3zQ5/c1Qg0yfq1tff2f1duPd1FNjuQ+JGDMnj/
dEl9hKqL4h+/V6DnyJegBYfFPSDopJw2/iN+Hp2QkPTzLwpVzCljnCXR91lC6/zu4/eL5RItODnA
bBk7e3Mt5882tXh7cyGJuya4E7NnNnV8d4x1FrmSUgOSmkhXv4DFOyjmLm+gwfDSQ7qwvqOLeDVr
LzLrL9kRl3ZCDCMmHkWI1ETrt+yboNNFCF876h2RC80ZPy5tKAUeA23wKPAOyJFx1VWtJAxIwneC
ApKuKsnkUhvkWR2LkCUctPjb4DBKiFJR/PqTeBEQ0C87PV2N8R296Nq51FzltB5CkljGJUwduZ9y
OF+zz+RLB3W32rfeu5hZ/bCAurdF8O5vv5ZxeShfGAk9YXm/TcyLIDUGQJvt5Yg6Nt94NNaL8Wjh
ZctwH1aGzDwaUebFIfjokL8XeXu6YanS2sVtp1x886QmfgnT5ulbbTrz2HgbRXW8To5ww8J7bDWr
aS6YmKuUTnaT3TypabRMSsfVr1utOfujWakL3NJB1pHo4NqOWs9YWmM5WUTRVqcI/ADDYnvEwGV/
sPayvn99T2Z+wnG8OWBNkR312ixuziqZ3MW3JZfqeJ+3w21o9NnSr8R0Ox2Rhr3j+DtseAXVnDCI
/L/J8l77uD8U/Y1TSlQ7VMf59iUp30JU5HvZyCbxBu2Ng1VDBXG19Ubh+SWgBCRFFHafAO30bm6D
Yf24PZuMSLxGvB0LgbLSxMOQjuu2vgQZOfEe6sa0+jnBARz3NijMmAtKYR3L0pxRX58wGJRKebx6
OYX856s9aR/vvPStW1saUN0TlD3lK3JBZcZUZKoU7mFaYhd/A0OWwLPLa5XEjiI6RZcNzmZrIRh5
tzVW3lVJEFXPLPmB0oWfZ7CK/BcKGjqi9u1kD23oNO0dDLkhSDd2zHOS1TOzEBK9E6lNdx+XuOPo
/zeW56VyPnl0uTZjVBGVluob2oSaLpnieHvpSVDQjaQYeRFa4IJyDEZSqNqLHg7MUB/ZJSuUq0L7
sF3t3Mw/7rX/VFxRAD0BgDoIt1qPvNzd19vUSMGMFh//W/y9qbgIxienwJb4zL+vs7mAqOx9kB4N
G97E30jJWrtX2p68uY+S7mFSJj6XV4+ycU5aRwD8wTm+or63t7puDrZnoMWjyFhldKVY/v+isyIt
Kxbjg++lAT9uw0QHjx/6HASIZgeHXm8Am8v1pN0dprGzTOAr4j7aaSA0UUQJKS5plcTRFIJ8GbrM
EZc7Q9YQBk+GlaAyBXFuvrjvFQ4V4EnuwMnzGCBuYqgOsMe3waO/o/GujtKkQUMcaNdLlcuFaDn/
cq57jZE5GZb202PJgkzftnXk/bxNhiznzsIr4gucJFc7LZb/x68mqhrltdRDhQqImSkh8Lhv0o7/
rc7ojMlhnGK84z5VKs223bbGmlDQ0oM6dAdJQJ+1iA6mou5v+78uiNRzMLXBpGzgc9CVxlhE0BDx
1WpvwbClPu8jkGiNnk6s9L2R0KiF+ed2QLoxmlg4Zs5bI9JD4CEDVMVWrwJy38syBKKNQrbFVyLC
kftbinNLUYX7NAHBhDAWN52boAjjYi2yivZKI6K1XdBwZ89oxKaELf4t0yUuh84UpN5eUdKx9zii
NYDvDPBJcWse/m0UOVHnPcGlMJm0ycXUzMipT1kv5I08DsyFpoXgVNn5sxcZiYLknTuftKrgk5ND
IRGVWnHYvSE2VQUD07SW2kolouQ+iJYG1DD6oUDYE7Bi+ENdRB+4ZmiAWSe39qI/fBMQG/AueyXp
vKBab8PRO2+wxw9CqXppnfoeBkPgVYMlNde6pS99fC7ZoNyiooy27H7ZiyQ7lpGaTq5eg/UE1X6h
OWFSaXhxQGM6JjPd/1mokHwEqj8W5EIhI47znO7Icqqou3lZ2pmV168YeEwBbleOkQKfk7bRpr6S
8sdcMSulIWpv6ectYi9SyJVH3X0aMEbQVAUPpQowAjNqrBHWDY5+I8aKqoy/h0kaqoWKtQJa2MAO
IvMOVCKS+UuF+NjPrNWT+xrn5lKvMRJKgV531RQ1LaygKB2Ro0qiU0F3rnflcSZoG2pPNJB4Tboi
YtsIamZjM/N3a+isbzSa7F7K+3WE/GXbaTwH36oVb7+FTAht84toQSBrHj+MGt3CScSSstliR/vQ
X/KZElFK2jW8RUTMZKNqWP+6SEsRYTkc7rdmg+11L6tZh8zumpClc+Uvbs0fF8JusT1oEis1dilN
Q1JN7kE8OLknqdWauuhv4A3JiSR60TQiPF+tEp9TP+5oJDJJULYQrNmYg2u7lhI2sW/N/wfij/1N
oNKCZWQPF4mruZGenqMBZtKgMKe1qlKsWTd4bg3CZe+fggVjV3+B/dzHeSYBPcaNJ8J+teFQzs4m
K9B7PjkeZhMfI8lZBhuXLoieKMFHPSFhalWwIUNa9oZD31wa5XZ5gV3LFFE7af+H6+fvfITKuMvS
5uCQM0cgRJznpbijnkoKCr/w/09VWXuZfyFhTzHY4wJNFL8AXxjYu3ylVCRHxOsyQ0fomo9b93rB
mtIVRzf/ufhG990wjiCWCr3JD4f0DMxfRDR6oxjJ2dB2DqnhPV+rmVqi+QRMmJa9n1/9viT77j8I
nbbuoX2nyFcsEPY+4vYYBgn7OKH8u3BZjRLSIk6Qb/E1TS78ctPZ/bRWPOEG5KJk/5Cup/c1Uto+
9o+Jl46/VwcaowV6CyShraeIHKVSzEwwEmsbZ+RkD2OZcZg8+x21TOwW9YevwzcWUPxJ8C1/iWiu
aXEB8xSErUEZXzLLZ+SuBHJ3MCGE4FiIo9LcdgvkB5JAK9dq6EhAdlbfJpoA9yccc165AuilcDKM
ZsooEv7DBxn4Ih++/oH4jXEKUMI3kuj+20QJM5EInKGZU7TFqOeYQwr0JCLaLMCqkQ7Q4SUJoaCZ
1tA6hbQvb6I65Ml2K69e3hdHBriQoHbt6Ulw9WKd5vYw0Br27Dlv7nccnHDAMPZpV/i/YH1izmYH
yNYWiwhkZ7RuaCm4/Bez9vmiWSTieC1k6Z1g3Y52L06earhusvvcvlfkj4+BobUVkACi1VZoYU4x
hfRJPKOCQc9ddOWq9IQz4nOifn9ThUIq9+ty21A5FMxa6+2l8uVhK9d+PyUyBHQUVFOyyxyOpTSY
EFi3b7WuEhr9KApzkTdsNlGFzZ1d5xVOUlIU5CXCxbiMIVbNRSRk5rKyGnkhQ2juY3j8uaHp3PSt
jhWWGws45T7+3JarOxeXm5gWRBk0HcPqPjoBz+G2dV//B1SuN4ZER4E5f2YCEDIN2DfQJRTtC+5C
jy+C8N3SQpNEZFl0NniwMk0xc5PtbkmqIuTZ7f/WCK33ve8BMl7bD0k915zpxA+7iwEI36kGTEO6
wcOajUzuN20GI9zNCwUrYpIablnM+Gzy83fIsBkzLxJ1qEr9qVNyihnquMlpH/hfDfml8hqbp2aC
CKTqkqkMjKafuCQvlxf+hPN+DTTjFJ9IF/nPJ0trgD3IEzdYo8lX2fwhgcEGonqaH/v7ZdBwuTPh
8jUVcTXjbS0NBbbrUCaXyUfMVWE5KpK6heh6t3savLY0jwKEjPhTJ6ld+hRQT78ET3U+NyZfEa0I
mTCkIsz0rk8+dpF9JTssA3SKroeZSfqUdGhLn7vexJ/FL6iLYEMegjqNcOJHo9fjdy2V2QDOFa+9
rcGRSzhLOO9dnxmtVKh1DU/HumcZv8IYZa3aTX43ObcLnlnlR5rfK/i1aqfq7hxJpzKEpbfZ8f0w
lLEKvs8IzjAectFJMTsrg1agLkU/7aN8LMDuPnOmG/vkF8SL+cFv09LITyaE6n7oyyguKfYs3VRO
hoRHWcyyVxzrIaUMKrgxSYE0EjcKNQGwcxtIeiMHaNo9vd4z8PXzOzHOa9OOHC2dKzHVuUjfB6+p
dSFIa3FMfYv/55DvN9oTa4+OU1DeU4TyaIu8s99PoHE1Zl10M42zIUmlWOkdmiIR5n3bC4KpYfhg
+O54Ou+ujhuUkQE0UZi+2y0qik3Gqm+ZBmEjVSontMxj5ae2CJIRhUpZu086gZdn9rnnHI2ulCa8
Scae3L/CKwRed7wUyU3RTmz63GuTQce1Ff0qw9OzR5Jj/JiQT2KNCSxlUzpHkLVDFUm9e51+EDml
5uVn2QFSic++AjJIepjns1A/JDCFJR+RN+wC9Gfy0zI8ghH1ccg9MA6BJY6EAWH2nOu56ennYFna
yoPwEgJWFnDlSwsl4+F9ePencydIprA1aWuvB9G8/zKsAl70LyUuREPGj2z0MW6vFk2hLkUPHqbE
UshcXz1wNg01GUuXeXMZfP54PgQ80tKRBpiuc0emqPqHprbIImEWoZ3jU5v6DzhsHjUONEGQmvHY
/fKRXVqi5l8ZOXjBh2Ih/PxDGNhwS2Hz8FFIUc5Em6WsxVnNC5XArJ2MjcyB+17Z6HL3n31sqH7/
RanZngO6R+qZDaPLZQu4nGYqeu/lrbtQj3g2iGZ+F5/shYXdePW2BBBhUwZPaZgL5l5kMA8f5Izi
ed16kGAc5uz1Io/DaqpQhZzjQwweULN3G9b/y7Vp/kCKBRCFhjGsygHl4tKUeMejLzooZ67MBmQ+
dLV+pmyypFdz8a8b2u7YZXtAn8fuFcNcUnJCTr6wGXgLiOcC9aqwQmYvXLYLCfizJCi30teyLOnj
X4Uyd5NN1Fq+D8hLJPED/JWi8a8W3c2ik9mxlBm4mksuUxGllcZaB/lskIyEW8qLROP1ufoPKm1F
a84hzYQDLyNL+CfTokDWH/kMW+WVxO8tLhNu4J8CQhD8BszEgrKAUJA+5vghQjF7j9+3CPdC7MIc
GvpZGhVG0HSpMHR21UiVHJrfgvpQClMuWxQZNhsy9xgUvPanoBrc2n/toteqR4LFaEs11yvEcEGD
DuryOPpMt6Wg62chvM1wn7AZPM3PU+jSmZO4rQcUe6N2GyfdichYJWZmYIVsM1J+AK77jRYOjnPu
VoPSzt1Bb9ku9VeuliSVDQT3S8DWAFGQd8fOZK0Nzv5Zj8G9ipyxkOc61/RbDcGCNEhqyG8cwGS+
qmT9pdaJROV+r1uW9/tn9eWXxSGwmFsmuCklJCSqI31fIzw9nuyBM5KVzbxqb88Zrb0+BFHT2Ncl
TBi3K9xl8HDPVc2cgJGcmV0nLdWa7ujDD1NEZEvLXZEnxYPi953U1tTfAXICd4DJyowesCS9Mks2
T3KaA31rv1ilSr0dQ8sP/UdNa9/NDT+1xFXayqq5nV8wkENksMxJsNJlgbEas+qd1W413WeGjuob
Y4j4C7e93ErGf7PfbhWzAOUgChkJ7j3pzgN+tDwQLilx9zon2CsJmPa0EiFTlzzNe01IG5WwOnX5
Y4b4OxtXc2N1Qrcmixp5VHPyWY3UHsr19ciGxNpJoWAr1HQNy70F0W0iRH9wufz/cozxsQofkFwo
AOLcR3g5VcLCVQSPF5ezp9inp9fQQAaIt2tadzC/1bYwEI4hJC3fG7VyNVKE0uGdxiWf62/15IZQ
rbLr9bdv2nhr6dcoGPwhh3Q5T2Af8hSRvT0PcT8RreN88HOypce+zIie6SokraRGnVTux02CKoQI
5sl7gNK+irpq1WrJAvOaJLRtYyLdX2EYpcDIuyXk3ChrrRLRtrvzSbjlBba2jgJpVcXSZTY/EfuI
UOYC6rXli6scRcJ5Eb4FSbYt5WBEQFSuxcLKs71HbWWducaHA2ERtiTOZUxZYUxgPBYbPh491hI1
coBILQyKjC+vG/CQx0FIukvRQu3SLADvX0QQyWOx4XfvvXO0tM13ebWPyw7Tl5q//XdCLShyA7aj
V2k1b3MqtYP2BnqxXLTSqX5nYQRTI3S/49wyRzhGezalBd0DZ9srctC7dWsdQtAN3OS2kNn/m3Yp
g1wW/QXyNNFnBk06rj4EXSV4H9IOJt/tprI+a8hOBzTRa5z5hcTRnyKnwG5J6gcg/Cnu8DZlCvGP
sTZRMWMG6cuVm29NfCEjust82MZHghd4/FmOsBin6cu4OPNtIy6OBbiu8tlImwnWnirmozY/le9/
Kz0t3Ue8fs7JoLmFjbR8WS/7329cAQ+aVCAP81MeknW48kDCwrpfWv0YJSZT+5egiDPT2ZXPYvoX
GkbfVKyLki0VfIvpLf5iR7z6cCD8IvwOpSCMETK5F+ZE44otzaXBaW2ga+wRuRX3Btz2b77D+3yh
bZlmxD18sP5r6YokarZ33u6UsjdfwbmR+16jig91XftqyyDHzl6jhd6iu4Hwqk2XCKuXMoTl+yde
NXXHPJuSJJUr9UduTUym5CWQmfb5xOiAoug7Ncw2GrWIgQHoy0XWmWKLXXgGazFM8s/qOnIK7CQw
YzlO0a5ztoFNLYa0jkgWODUL5ZR198UCxo8US0RKDvvxLZC1lcBgm9Q0yGMLi5yuPaLnQvB27WdX
4H8pUe60PcibtBZiRnJD1orOcLQk95jy92R2NQf8W+pCACBcN8zHcevhrzJU59oQ+lxabniKCylQ
5cWyLFk4UwmasO16pqZ1Lywxtd3ry8r824aVDMVFoy/sVS8X8cSguAS6ETrM4mCu+i/nbodd/zCf
7hLflm7yg59v/6zaMbelJ71sPSojHF+CBS6OmZiO4YcOEdjirA8xCe0YOonga1GCU0NC435cITRA
P5bhRukJOtiJlw8RwwTmcHPTIo1lmpGzqtZPXhWvmaE8QWCkcINa1piKQ61xT8qfBzKjJZOw6TGC
VQZWaJMOJ3F5F1Dh4ctPDoon5rYLmypleloyJc215wHb6MpGi1uHT/rW4rwAEJ9LBg+4LyeVk/pP
/tTSeNXoOpt5oNcZ8WqpvcxFkZog3/PwMm8Fidh12EJ9Y8iSIQZ0aKtuIwC2tRHoZHZGHtKOCCyI
zHmqt/799bJ0jX0BkdmPWn7p5HZmfI56Z5w8YASct8xKK253O7Bto70SkzH4C2dlSFzRLGYx/Xmg
fR5ftslqhpkxFKkWI7+DaQ8dccnwj0/gACuavTBeYXO34LDSCcF2/QyYPOgVRE/OZUnOvj5lGcom
Bm+S6SevvzLZLwte5tyu9qEQ3RAtP7F46GhyalWvr2HYs/J1JdYDV41V6lfCYA86bnNP3NBgHAky
G2r71N9C7GqwC7JN3RZITVoETDeEYP9D0PeOI4YjMdNcN9UxB1xhkEK8vrBD5Osl1S+13MR2crmd
e3DzFWhhJfHM0CX1yTcQLRkKrN/Uf1yC0EuG+7Zms93FUWCP9Ji2khe/+J8rgx5kk3ljUdgHRk1T
s+KrTVwBIsHdV6GGli/ZalMKtXe/qHEYszGZGClmgsd3LxUvXEZiQcihObRjDlM9GmJfhL/cHCzC
6fqk9sLnLszRoxhnC8Uy7JWOW9eH2vAzRwnOz5IUDljYUNfsFPE713rodqz8b7o7x5Zp0dKanJ5R
hAuOr3CajgGB+xnu8UKe1DzaJK3+28ssx4Qb4ez29Zg1WgCRfF4RS+/G6rdpRV9CHfdHWUzLgvwh
igXxTA0nEOH3+BQZjeJtxT8Eo15inOheFQJgEmybVpZjTNQaNhZaEMS2uDTvpz0dLj1yMcmUPtfv
lt25eUYput5UBjji5GaE0/obAPj4Nm30UteE+D52zc/xh0BUgGzVQ7EB38LPhGfdD8I8eBlNogbC
PT5Eu2jmnpCdcCa5XdHg0UgTOdGhluP+8H1P1ueONJZmltj9JNKYK21lymbjq9wDql3ufaSILJcS
gZ4XOTauaacKEC25HjA81uqf6KT2vSSRTuiwco76ILTOFVC5rbbXrGmIGCbnM8MgZQARh3DY70H6
gn/XoQt+YIqeTJ6OomOJKWZy4lQIf0Hldv/W/E6pP4b3tcYXaW2FGutvO2LjMy1OXjS2zcqBV+OS
UkigZCdSwct0udC5+uzslGejZPlPfKI7STJ81feg/f0QmAOSw9b+B3cOdnzkfvuZO0/aZ8r23C6J
tsgeZya4LjGVmPatm1kXrNwiIEBeOlX92M6OQ8Aeynz+pIBR7MmN6dTUytUvevoGiq90aQMYnaU1
6iueO+N0PJiCJfjKJA+E6TJiDwaeDhBoCem71lb42Bfte5VmUR17yf1chY0H6zbjIoA0Yss7MxgI
okXopAiCWKCPLv75HRCQk7MWOrPLWts6urhvarJRpCPwCZJq7oFIWM6H2phr2Vd3i7+ppi1qW3Qb
AcImw2s1rgennPvSEfZCQaOadaOuCkDPCLp0+QTVChAWCZccXogZfuVmbVJ+gnp80v+4q7Doh+Y2
uBlOuSF7w2fqYaNUE+va9KaJ/61M4sYZQ5EBpGSeEZU9Z36Vy/oucz9PZiCJmsGBX5JEwzrmTQd1
/KVjPD6nvA6i4cqfCavdAK2e/KaVBTml3/2jEy+TBjR/VMCG19cwyqyVCou3OSb0Qd2KbLt+K46h
Gc3d/NU32CJS2pSgiSiKmBp9FfdVpc+5CVeNqq3Yl7TYo6vWzuMmZN63fVGzTa4oX4tl8rsiU+dX
0TCss3Na66FA5diyYQQCfthLysKHVtDPeL+4MOrmua09Xk7EHd/2PI0SM7l4Nrn+Fk6Pup/s4XX3
JJXkZes70eSYs+ksLXzZw/uQtcuYpZBs4UBhoYyCCmSfdJXuCnNC5hOm0JQARM57jtCZ5Ye/TR8r
dUwIKX/sGQOkfseobsYaD+Qg2zYIa73Gu9xkDu/UGvrPQ7DFRLXo8v/9YiXO0HOGhxGOQOUfJqOM
xe8uyGAKl2ZkdO7lB06vRYZXL9VTL6Txk+m9oRcNdVQvDvb7tWQvxApBMgFr7WslzhVMU1kqAwOg
yCfiYBSvpruA4U6ed7XzFVHq8GFDHx1C7s7foEs6CmolqL4snaUvmDNVJLFkg9bHZISTYmIga6Hp
SmhYYdTrTnbjmtJtcFiDqfCHhn4BGqBX7PDhzUkOhA/+Cw1voZJaw9FbmWHiGrQ5JKSFomzAK9K3
CYhPok4qrwWCT+nSUI+gO3+d+U+g8NqwSRmX8X4sWutoo2uUt0dusEVP8f51khX7R/28yxzsrcdB
mzkIRUpH01UB+8HbtgQXznj1+JyIsPWPIwg4UMAg/KZ28WE4P9/HDi8PPr9B10E/3kWiCe3snN7z
Md4vuuGAMVzPztN3tuM/Y+8YJWinRNj+HOZKF6UGN0gEmptwjUKcCFOZjjCcNEmtp8LeLuQOttol
wttuGafrD0FTaEq5VEgfdvRBP+jJitNWGi5q3AAyQzGzMETcx8ck539ejSQinHtnq5k7ccFWwwuX
iIUHSnGrUQXvNN0tkd2kKsC3EBiEyzWvdYaGr5QaqwRtuufU315h0ukkiudYG1E+w7GKY4QQVC1t
S39TYzr8uXbPqayFwBvMG4u1Kj16bGFAzQCdgMtzVI3hdxosoLgfD+XClOWZjkWPtdQQWLHFmOic
/4TMo6lqcpvHgupqDaAr4o/GulWlXzTWK84Y7vX4vJHKx1JisY+QcSICQOXoaS9ah577vBRrWOgA
vBe2XkiPa/K4wpub2vFIDecuBDgc6NJXwfIL9F+OfAV9j7vU+QzdFyoy6Bc5age5BY1FwNDoDMHr
LEn/96WAEsQSVv3Zn3t3Gn4DLGQL9K1mIvKmK2x0zpOotPGyFAvhoTEsTBa2QLrHjvldt1J9Tyl8
914VkcyD3FFSjf2HumlWd/lRmLandNFweHDrtbwJ2RmTljtbqymjhEG9tYmmHNMlnzxdWzg3ulTB
euasdkLiYkeRr91/tuZC4LPCQnw3eG2NEEbmrx3HHLrSVMxMmh3FAIykkmGkjm3QdUW9zMTIsXi0
4lapPZW8r0Pp57iAme9c1wMRSOuoCna+c/xrD4Bu2DW9vH+89Fd/v82DA80t9KNYmJ5ns3LEnmGd
COu6y6OZUZbR+Hd/bwY6zT24ZdzBy5liTaVxQyVYHcmQCXlH39wMxASZQ27axg8n2lh6kN0n08zu
LSXsa5eExraLv719/Bo94maDjXLLyS49iwZoLwhtZomUd73r0Q8RypfsEAj4kLR2dq1QAElvp2Q3
fbJmG0poixUiLeF0K4AysWtzDubi0d5h0TBZvUp5R8quwSSqp6oXykm28wMfMF+wC3AA1DYHh20+
FMtiR+1OxRgv10prK56NXOb9sTRTz9uTTVwSbpGc+EoESSYfEYx10RnT+k4gxKpqzVc1YS00uqCQ
FSfcjkMbEsZ6jjxLoG8uZSDPZ+2Xl69cKudg4vDV+McsXmVda1K/emdCKK6k+37QvDxcfxI1d+Xv
e7MOz8pQ66GyH/HLi3c5GHXAOIQH5X46cPSPeZGfQGTICz+Z3zxepWxqW733fVH/DPPLB4G9RDuv
tISGLU85HkcyCCeUKHR0e+uWSUINXBoPrgOqX1vT1oxUzG8TiVDB8DLfRwZqe2fWUTGHMBj8o6wx
qUlsxDopdx3DmW75dfdvSyeW60J0x0oceiMu1hHyR6Z83M/jH7Uz7HOOz5p5QyuDe1AE1mMgNm68
SLRLm+smuwVjuU75jpUjnrEz0IBMZMIqBB24YmqSvzqiu8Oirxh6/Hn4Dnm2ZFEs+Ygl9FM4ap/J
Qe3FPkoRw/lrQphFOehYgx7UBEnXKuLxPs1ED4Ny/GRIT+N9bukPCty/YOOZ3nZdd7AT0cDapf4j
VxNdrKOE9Mx1CHiVrjRFUeuijgUvB/R6DZXvkpISqRLnM4vG4UTXZ21/f26Hypdz2fpSJc7LaxvH
8ys3bSKmElBoHsV26nT0S51g9cnYQkIta9B1EBdz5kpkG1ZhF7Y2k01AU787oGhAomlaoQxRt4bR
p9mzV1typ2HTjhIPRaZqDm2P3f//tSf5L1movqk2h+7tRkWwJDZxZ1BjhqhTKZWovtvL6jO3woMy
LstjO56P23Gp5bPTF5yhk0og5orqurls/t7y4vc1z7oj/Ei0SzRoN+TDqPoPwaMGxsRJzhpZV3FE
4XQutej48dEaVWmUz2YH+HsG4kwsJ4yjVusgumuphYTXwrKZDGV+i0S9iNKIVdARjOe2ZvL12heQ
csiDusBrfK1cNWPP5G0XGLEjv6udLuy5qkmuNvXDrz6tcNQAO0JwnD+GfqoiW4qItBBpqenHO111
OjZncQ+UFTo4mGS0gN37OZN3oLyeaijh4Mb7Lt/sI08vtuF3QmlUHXILcuQLI5UZOXXO0Eun6YRp
nVys0nBVGojq/l2dPlF0Dza6yz6z47PEv2bm4v5Y1qCnGn7dJ7PEI0cGoiKkh7bsg0Ip6qVj3PN2
z5Ue6ClEQRVCmIjx1M5zR4k8f1SSGlog2D+1h5S/G8OZah0Kw2AQeVhb2K0NovEEK3yf/DNynyNB
2tYxp+gpaG41LLopd2gjhKU9vgbMkMxgwDF6VPjV32CmIrA4TvhSZ5U78ZXkU4O/VqGn2dNCr5GH
oRrFpNB+QF+F1oDty/EtmSxFGagKVtSEjja777oia8Zh20a8X4NxjvQ57azTU1iKfWmxQXi354jY
3rj8yRDJuKFJukmmc9fZq23uupdLvUSaDdb80WhsYqsBQmB4ViITHCFkJlKX8ywPainjj6wPCBtl
TLp/0ckfAcTY7dL3p9SZi3XOk8BnMJqchLW2ucIwFFXkOtRYlvm0cS34P+ChFVSuGVvadza573Ko
0SpG1q4L2u03LJ4vlWKnYx0FpEKYXg3C0gmulHVZp0uZz4pq2qI4qxh2Oi7u3GB2+213ACUA4LYW
O/l6pOOtCIv9SU17YTVzGIO3K84gGmagT5xHnDiDh+3tRKvNkeRasWM2NhBM9Rq1pZIDQZX/7Pm+
BmmftXE1gCKXMsEIgqlUzsvcd4vt8EyAE/aseq5QdfoLpB2Nz7fv8SbiC5LYupoXl+a+uziPrsd4
/bzjG58JKt9Ze+6HpQyZD1JCnac4uE2to5I0sISp4xUYaq8OupEUVqKz/ADualBZgFQ9kVpJZ9r1
au1o8TnUOcOnDyv5PTbIP62xwoNKC3RoNoXIWpBpRen6vUvTFtTBeW2JgY8LM5Wx+ktGdcBU0QX1
xHtVVRjLcUXlYe9oCfoyV/MveA9DP+zzoWC5gUxwwqyB7Hw0e3+/jsZn9Yh1eZlorHKf47a7357K
BhFXf+6W1qdASbGHmdG0AkQwreW39f4AjM+UzKJcr4QETnmzfhvIQP11TTT1OGZ749G1JLgZykFm
1VSx5QWtAs8bRPMOx9tld9r4Ve2Jn9O6/qxQaCfSTru4R39b+RHINUaXAAEbRXLyyDtZnQmA5i3+
WK7xOOt0jBiWFH8mfdERpP5o/FMm/S4le7i0AXZ4Q9fH1xQ7c/GDaDIMgkyHfV52YKvwbXLPKwFD
pmB1WewI24GULvOs9/mazfr0chdwQYX+ufydjcxTNUaho/cUqHXNqprBqcbJydFqArzyR/ggeF5W
kvTOmK2/l84g57diyEglGBmpjkR9phZN7OVvVgDZQry7Fn1m6NBd7CsmMOLXvlW8vHb/jlFzTWAh
vVmPihASFk3VB6n/O3PhDlnBrH3356JnAWXSDgNdLv1c8n/ee3Rn9/BE44dG9XxKH1KFdUftzaJk
BoslTB4VEW6eeao0NDJ5aTREhaMj6tLUVcbBhZGKiAHINwt7aDo9QTJEFZueavOKkU1e/jCnY1kx
/OB6kFbVX33pan1c9HtCVq0bWFXq3YFS09lg2FvL8UeUkcNQS6evmy0ZFvlkGtttVapbvEK4bhUi
koIVXXmEclgiEIpiNXgxsoq0p8Qvk0jfH/rJGwSLpH3+PEk2O/20G0lNoSbqB60HGqGAu9egJu4Z
c/afS+z6AXZJZEb7vaosXQPcKCWX8th7Jy0MkzmP71VWoTbLWDk9F3bLyDXiuT4tYNhBxF2E8pcu
6R6ObvdSh4zUeHlvRNhdt2gPLxWM7Ylwi3pQDnLYn0MZo2IHoz1razxKlWnHLjYanw/ljUN/6s3/
YWg08mvWGCq7IrrBjMXCvUpXfVA7vbh1lGXNtnhtuVSUl5zLt6Vm7B1Nudehdsk1AFOUDkABevDl
veQ3YVRJgerdBnFjHG4kLUBbS2MK5mL0tefh1DeiA98Fvxh+svxilWei5Jw9hzljj/3+VPFdmX31
vH2ub+fOdXnfKeK0KmTIsrAS67V0rVDgCY7Kyub4s1UBOpaSw4oGjWMCarWkYLjK6y+NpOWiRTn4
hopj0tuUWtcKvRoYlSrWNiEW/+rQwYdPkO4rMG05O4tRDHei9TKdfSWGFQ1kT932oiPYfm97jU7M
UojXjah857y5k3U3XQYmg6xM8mC09kPPZFKTQM1oCXn78Pt/wXiPCF6ZKib7USHANZwNk6CHMIR7
/ZkJ48haxa3XtcN1uYs6ZnExqxVr64fQMy34/qrUYNbNpNIiFrJdtVflzSTnumD8hAiyblPspNbx
U0U3tqNtbch9RG2UmQwDuaXHmnyMnGjXOS43ixw/gbivJbG8kUi6iHqC2hdrHAJ71QcmNCSG541A
cPBYAvWOkCKYK220NRLCFqzl5gkN8xMyasbnPMsruFmLH+m8wFmRyb7NzEO+mmoG/yw4uRtpmaDS
9VwSHGHDRluVQMq5U4e1H6/f0/+hPVCLhG3P9q5VTEmDV+ZkwBffRuDMFZWk4/gNyOyrGkJD/LJ9
W2MvLii/a9uuUOd6nywminnYwTVFKWEa+h5V0bYo/xwW0mFTzAdNzRncx5I2EmgoN8CP0v2LGxTs
7RB1PdPm+XLenimE76zTaHjTb7G+qkOLHA49t1K0jkko8vZtg+95vKeZGU1EJYyMgli4Es3Z2A9P
4THnoLMf0kjHl5U83OFh0KYsTMGREBZrVXsP6F5uz1GX4Da2o9xrmZAeIbpWowyfHE93MDtprQNV
gldVGg8oOEjU2Fz8ICg7ucDwSmdUTBkkqi+s6xqt1Q9ZTwl1txOpbBk4Cx8KPADGXlYqCb4yejhR
PaqaajDwPavGmmUbFYs+wIaSCtWhK1w2an3kwDNJM4Xq4004N97CNnn5dn64TXfBx8FcGvp7EEHc
OpsKNsEbR9K80sgfjNuqUp5QVdhkZ0h3Skl12UC5EyeeBBQDIAfs3UDjALUORI8m9CPe4pkQOLGb
uZ2AAjNnfJD1xcrz+RHw1h64zHX1rwkENQNQPhQar2GiLoa4iHUA/MEyKfiAkBrccsYRaJK+4+t+
ZYKFawzwEdwtVSS46/qtaI0d0LN/72Ri8CdKGwGTLKoZHkiwDrX9lE62JIQeUydxKckD/FFvLIGX
pz2H/syO4XbPhA9HfCX6uCfRFjX8q+2R+YwTXdPM6QLMq5L+NDntukaza6dbNRs+S3MVxUhBL9Lu
O/XHBTBBlH0wN8x8jTi9mdmosX0as3Fs26uG7SKVYBCWfv8VJTzkTKMKS63u5rsWgWO3ogRu+3ud
IhukHoBsW2l6FIz8aAeS4m3OfZ8kNhs2wfMuygrIjpkPsJb9KHWQv4EwTW9eKO/5ZIkUTwF0p9YY
Qfs5ctln3FHUlqnt+5kaw7PDgVbdz1Ow6t6ovvWKUmIapniNl5OBfdRZc1uQRxQs6S08PG4jzayO
I9U0BJvtRlTu70DjJ08TF86fVWJyx0sSyL9ixq3Xk1MmgaHJ/zxZiquhuwpeOSKQa3Eqt0iNBkkc
P2bzJcENyeLoXTzQW3BYbN72Q5pfxpMv/HNtY3ai9PUQyHQ8SDtxB789GhY33XW93T8ZXLf4z5v0
ZfPNjAxWkTyi8SbYkEZAHmVWmLkIj4dnIV/bD/YowhYw0KuOlCgsCvu0dOeBSWF027CViROmxzhR
Tc5JFq5cijj90KjrrDjfV9iHI8Ju6dgXrvphQDfXJJ347ySKB3mc4rIh+yTEcd9ITQSE0WmtjLj+
qpMP9nC6GcxI49ov2Ehkg+Nyzp8XJCVtYOhC+IFpuEXtbqU5c0DXqmA7JVsKLKFgCqL2wfLBQQiK
iPfGPyHhqiObfd5VEqhDafZlUov9IeFJuuipFX1UKfnMq2x9BtoYHlGYgwiYJ+vscwOlO5JRv1cu
cthRClXjZcT4WjyOJH79jB+cMPR6MiSUre0u+o89StsFXRjmHm48DwtjUNr+bwPaSPjOEOTgPJZQ
+n8bZeRuWJrsa/RhyHDdVeoq1jBqq9/3FKsmkuTUQD/xTK6iB/+5jTk49bqQL3g0Er5A/3iaypGe
hltsLmBzLH7pCRvTMHRIuhGTSlq2/VjRXbaBSpZnFLJVSrDd2ikCJI18llAc+q5JzlEIUT8bdQQR
7z3ihkQJAdpgGfIyx98ZVGwDodw3mJbJXF8t0bw/leOtHLjNWEkQAZooND2nAn/J0OCYBLzy6shP
tKDlHF/dGktowQyYYv+Z6yD1FC6nfvMGizvfdgHdYGJQSqQQI2EVWxbb0r8gv3MRXd74er655pfz
DHzzUcSm5XUSfqrIPpFuOsqzYlGks9DSgMhf1hJWrHAcfB0IgmkkssIAPRqE1wPOTeePSzq7GqhO
KRHZ07K//tLWlO7eB0ELS1tihqf3AwtwkNcCkqh5rOEtsAD/nG0yR51JQCyIDsAkN3QpxQ431iDt
yqB3eW5dZJwpcYMt9dGv9z35qg6Je/hpTOYSUZ0QhCtB/btUqXOY1t5IdT0Mx8BfyFOZN1n2pOn2
5+/2swpBfo7oLXQOX9cbzaS65LQIddKGmA6qoay4+IgZpywU0Hlp4DRzPW2oMzAI+FatKFUMMjo+
L36AYaCYiV9aCh1q5mBpGAlQwDRge6MUniGlbLUmheHb0evK6PJY3YR111UWSc4r9CkQOuy285mj
2oqdliLv21yyKtRdUgLzFCNA2mNDEB5gC0X4fbssq9QAV8gBAY/q8oMG58BY3WDQnb30NXXLg7Jg
vSpfZ3Y8UWI2HpsEPi/kvvhhEfT5cRyXqtB8JsMSWkkPp1SQendnnzreY5f0rGQpDzw1sSmrGPqB
Qi110PmRmIwZh75DhLZuzGckD0Mh8XjEjjPrYPuMJC2HL1xyodhly51zMoxEBH4egb+xAnNkRVYr
1y7l5459AHxPjtjhUgDl4FhUgIJt3sMqn9r3prEGz7Mo2FOI3+IopxzYhdtkpLybf0menFF2fZ5q
pectB4P+llGcQcx6TgQEPGFFeMYRtpZCDEcQT+juIyV0lwOOz1J4k1oh1vUYIOUcUxOEn26pyyfO
DGmgaATEppzyeHvoHH5nr4v0L89ZPp9kRkFOq644xmHghRT4QUHdYXpQZWQyi33eKIW2BBFqMq4H
kRK7QFMUBOveE37Y7LwAhwoIFCXle7OIfl76PT7oBRpQMTQcGQS+FQHmItDnVBHn4XnIearw+kMw
8amwCOC26ejTbE1FN90t2Mb/33DxjqPClf6+Ts6iaqarJyQ+VwxVWCUmLwf3pO9vVhFaNSoxOr3c
1SCgZmUM7CeGoymuoFDksSyXbt779jZjmyvUt3nK1P6HaUhYVZE1HAWFclPAsoLvHGAkr3bJiByr
UzirHszo+ep3PdOOC5AYdIBDBzC99H78ig6zNxdR87DrpWLetRnhdj2K0bUb5c3A8LINrCTwOibO
cVzx6y7XO19ArlYYX9LIm2/lHBC6nd361b3uRJnmDOKCsJWewt4ABeFuYf5i/sflJDqc1rwh5oTU
04QMDH/21LHy9LSIkSrJEl9tT6xz8sTQkvb1ayXzitBj9sYCK+heXot6x+CNanbC2BbjGO5bmj7v
RgvZu3FWMCfXQoZt/LdrYq1XozsQa3pTnbko7Lk3CcJEGL1S4KlCOt4nivwOXmkfNG4VJ6dhPDP+
jaHg6ZaZ/Aj82tAIXxdkJt9NhIBpp1tL35lzphP+o2TJmMkgu/55WjkNvbataoZoWrE1SqeoIRA4
xX0rtimz0ubaW0HXuP6cDnaaQmfvH2U0nPA4NueXxxjRbnrgz/9CpMCyMCjF5dJidAWYWfin2JOK
t7m9u09StVuziHs1oLWik0WxVkPE7hzDWe9mQ/Pn2l4+ryHpmDDvw+yckVWRGv0Du/xLkKPTGSn4
mm5ZfZjfHd/TKK8rO210msOd5DUao2tlAK2Sxm+e3xahoPstRM/O+1H5GEoBJ0sxNg304mlJlCli
+IeLRUC7R256/3lJfCqWaRBIWUTg/gfWNNiZxHho+00ROdp9LcxKwcNBlgqtdFvErHHKKK9nH75b
xUbmhQmUcYvI2++GpBCcq0hywT1pENk1p2v9wPMmEenGlCT+Q3rJAlg/yur9J7KDoS3DuTwPBcW2
0snJCc1z8sLeBC5rKQBqUY1Y1AEQ022zs4cYTfcXHxo/opVKRp6e0ljwE9Ez6Xm4/8y21ck2bugk
lJXUOFIROJ4sHXKnm3fCcA0SWnxheoHK5nuPvzrwwaFlYGu+VgOCqOiwoGV9AzavKoLGMH/GHQ7E
AvqGqx8/vGa/8+GJO2F2WrRXyr9XcO9KmZpSuaaJ5yh29scfWEVNKFXh7kyCA4s0A97DqPzlk9Pm
2sth5J1FTc9jJrZjlHSA8/MZdfM0Ic+SLoDj5eHgfR/9nkSHMEQIpY4gOpwOBVRgfPfOVXzb2/r0
JdRXQhBCJ3Yhz3QgwdaPOWh9xKdiTVqrbWilsbxt6q1m+q2ykgKp84ztuJr5zo4v1uDWgOZyE2Xn
COkXgBcambJ7ZzN9lhxCGBfrkeTPKfKZSGQpWWN/FcovlXK24L/3K0xRyuDkEU4ITowbL4wgur2s
O91Ioz0lujtYYBvsovmtKvYiymGSxwNMOnho2mBaaPRdkitm7LbnksF5npbcAar/GXHAybyW+DEK
qdU0WxsKpjRuvQ6M65gQCUjKwo5hYWxhpvzeC4elnBdPbywBDD9vfwiTwp0IaoQolz697LtEyHno
7Q0Xjt5ydpAmMcvFdeRRMzETWY10AHsP8PU5yRPR9MH71Ve7XW006paEicMFZVnl8fntoiR3fy2S
uqOREZxzdslyf46itiBYbjcsdjtJ+ftqMS6SECDARGsv92PEmP6QFG/JWkANiCncwnq1UpRKvdjU
M+NOQg4PdqZJjk6bzk12R2VLGHOd30OAICv1uLzQfJlwlZpyJLYKvR0ZQS6KqEkF3hkwWDX6FYFo
DAd26QimV0kMg1ju63qkA13noK2dFsZKrkvNflQ/P8wr3K9L92TlmrchravrRKdKLOmNtY6WKhIZ
hENmQNGw7H+FhBIXmyB5gCdBsso62S9XTi/CPYZAAaOwQma1FSjonTg3XJroZi2Sqb1gzmUkGoT9
rmW7x1SBKt/K2TESjUyOLhodw69ITqTM50/cjmxbYJLZYHrD6WS38rnj/1n5ZFJzdEQ/sQGgYCzh
le10slEVYqUWVdE4LYxHVXSSduwe+qzfJzsNz0iEzESIp9wvX7vM19Sqvwc76nAgkfa4axk1dgEp
efm0xkUkmScQ0lQu10rhjWUZsV+8U62YixDRlNuD2QsYKC8uxp1eC5WKVHebMsHCxVGRo/367c7S
FI/EyJAOrHX4mjv7FdHL3cnfux5YEolnXg1rzGI9oaOf2D3A3RnshdGXd2xhoR47dRMNyPfbPFDP
kZzZvPJaqCgdNKeiujMAGmE/c5nfwhswi/R6Nc7wPFi/a2zw5OaKdAhD5hlX1JN5i+qNp6/DAbto
6NBCFd0qP+1/AZeouz009f/zZoY8xHRE003085Nt5fRDLtPUocPsPiGrzGSOcWek2QXLo3tPZGap
mfqpMdGCJt/HbOSpQh++BecbsQsp2coC6b97PlrLUFtr5b3QuMLGZtVsIOtMewwfuqIp2ijSigDy
UJykHxaap8DnrCB+JusR2fhBeWnSbfxb0zqVGlILff4j7HGczuhf2Dz7loBHuJahvVKEpUrq4pGO
dM/AHXvcyOLNqOBoXyn9Cg+kDzfWd31RBRl3SqPkW6lCj0tIriHgkZtkPZ6cwnxpg6YJo9ndCy6Y
StUSzGWS3/PP5+UEIH1EN32UzEqgDbu7k4ZPoEhgXL1VE4aKotdXWLrL5FZO+tpyPblGMTwI09WV
lEANWtqn6FUj+2IQn1MaJIP7X9lJg81F7YfedNyMQSN3yrPrZ+W3glkpD7IUX8bE4a+S5z9cJC1w
50xaNdUsOu8+kDMS6UdZ9es+uDqDPLr3MCvSKTYGJAE13BhhUXHp+L0oKY7kBoxlR0ROKQOCKnKX
/2jknwAuUCy5JNFdXLSRHSljSG0Ou3qqio1WSGXkSFMXT5WHRNnZsf47ndnSuFeAorhSL9UnCR9X
OeuEBItIgrnT3rCwDjs0aOXVPGdmTqV4sBE6CW3HloiFOz0BAd6NSALA0Bd9I41MdO82ju6+02vo
A15g1pDGKem/9epIP5YTVlY+aiz/QhN84xOtRBOfDPyc+YIHEtXMZOo0YyJfFT3NS1ZOPXQXy4ud
AfyctnTC8ieXyMTBe2bRaEbEKMP7qWJhv1pO3xTjzenzjzuWOzf4AlmNYxGrzVzWSX5uGxtnAk7v
dG8xOWMGwqRmykZ/EUj9i6xZOajhkQn3U6vVZw5qlfqJmPwkgyldFG22JDxefKwcrWyUc1kkBQUy
ERlMCVTFUlxxAD9TwP2Er55dex80eN8K72XT80wH4Rn+BCPY4miqGKlr84c+tIn2319eBW5mJJbu
/TgHVBHIJbBgXtMq+DBKp2hYLKHvaZnU07QXxojvjyE0VgnnrBXTKFHdsZ7IlVdFwMxtkUeNBzrk
K/RPWgKAa/MvsdJXDzbDvudtLgM+9GF0dhKT6OuQXtD+uwW+pPA4XVqBJGpLkR44mpXc71uWbWRj
gGeTievNnXbCyNG9zdS/lghnskoCG0oeBpg+FA0F/fLi8B3T4Qlu5UkRGaxUpkqtyTU0yO0cOEQr
phCUrPgI368Sg/xIhUrBE/VZWq3Yrxe8pfY5VybXSuD9ETN79jF/AmnUbFnGyQUfowLgEEY2A4Zj
87paSM/MAHT1KaX5GqJNv5Zsvv58hUPoNWlq/HY501o2pTZ55B/fcbwmkPQAwMVonVb8MN1BUOIC
ljtqhYhtC2ATuSJet6dmxSmAcs0jtgeAj+s4ZSa24LDAr14CUn5WO8DDz3ucTB2b9v1GrXh9zwVW
4VkqcgcKfFpbfwxaNouMmTr+Q/OHeDvuwxWBTSONJ0Nk3sEV76N6m/Z2Gp9a4mP3JwfxV0pWGBux
GrxbxDy0q4Or8P2eqr+M7idaumD+vTye8dWaFrD21BMeM40wYtA2hBeFT30mGkkq4RMyp6qN1072
R+0UBMzIevbUctdsJmH7kvmNzPwMcVlie/Y2DGRzoYtX21IBn0rh9eQ3Tm7vGc9ATVfmzNcxxdCu
DTRdL1hq99aVo5x0uYU3FnRr/H7U6XU0VHw/WqID6yl48FYs/xg++GwFvXfJ7QIaheBmKLXLe8n6
lY/JIHgPes0H91SRwhVmDCGiaB8ewH3m2ymhEKIFFYjAjGQxOfMN885+eyim9wZszlBZHnss4aeQ
tmIpKIk4x283LDCWEcFU/UCaOP/7Aha4sOEu2ULaklZEPbJph2yS//JZbFI/SGkM01MCTvA/3OW3
o4AFULZDbhj1AWK8DgqgyLIsVQcYp43GZUKSK8XfqiKX0sr7e2EBfjWQsastLRlf2oUV49dC4oBz
JhklKuNdbaF6riNuVUyAK+gQVa9xTyHP0j/vBsLg0n9E9/nPGpeVxV7kJGClNyysMllHVIgi3dqD
Byy6crt7kzg3BAa3/A0QatZTc21lCDFlTBCNmtm3OMFLhiIv8Y/mUe4V9vqnNXrhMqeLwFmxf5uM
nF0LMi/1eoQV5gnnhVhi9+l0Qv55y+nyGrRzWCuNmHxbpbTMgnq6iieUAwgUrAuMg2QSHvKllE0j
6p0j2hcp2kY5KLGERRrxAteAGPtKhqhPYdTQjmmbR2poZr6+zNxjwjbMnMF+t8uzTZg7fGQJm9lS
Q+BzCgTt23ZBOQKUpuw2Ru4K9uVxu1C/xd9nzGb3TSsbM6FhI/ybrkFx8RCQ6Sg3fx5y3wWenIlW
S18wYRRtW7CpRexZHnzkrsRNTw61Viax5DFdAdDsj6V7t4o/umtFfqbSlYdVJa9c8MC9A3QIEPP3
4oEk8XFffKNeTOwNtUaHAPP53wcIjHm0UJB9FLUXNmgqWRo4d33DpL3k+qC6P4URyF8JekaxCuAX
ABCYt/1IsGpzZ+bu/Z9e1zAXbvRQbWPa5Yo6JarwkVLEKrDXwvdHWkp90rRNaYzuBJViqYsZU6h5
1E9QoO561AAAtGi9sjG1evuLCXNJ/TNV+gshkoiX8eMlRxahs658km+9xlCwEpAej7PxMzWCbDQ+
StKRwD/UxCZ7h8qol6VqGC3pXojagxwfOO2pP7Dg+JD3Bk6tYEX8/QcT7pbfskoFf2Uzg1gq6I8c
RBBIkcGyNk8L0BIAgyb0KC21QTgFX/O8EzXGIcgT9FMOf4YOKBJ1Snog9MVJHXANA6sFjjNYV/tJ
i4mr4zjvSIluHEi3zEtoIrIgNe8gPPxVkSYXwj0QzlhXphprQPkNWZts/tJYGgR6TQ/Cobd4rhHc
8JakSOJoXQcrrzrc+EYUF6NPjbmD3gYHAYlpoQcqSoaU2LtsmTzcDiM3MungHSrUYXkFjMp6dnqF
/lmQlSCpOBoGcR5aWntI5EmDtFLMpyUM6mTlq/lfZfuwHiZdmNuh6i7K+kOob3pbwwF/1/8MrhoJ
JvN9TwPt9/dK7JFtTKxj2vjvK2n6YdBq94MvRCcUlJ+WQ0/y4ewKc7PnBqS3hrGeZzM4dpsT6Z3W
3e4yja/S/v00/JVqV7SO8PBnDL9P/EtvkwaBAG52MA5iwNf5bAiQmeotaFGDTBw/in2guUnU10Jy
jUUxMRwXB0HZKN/hb5IAT+Ev0+9JrVYtFujct8uGsBLNgspfKGOmHtxCrqsUgsMT8ffXUDJMz1ET
JKRfRH+R9UjPekVAN/DyGG/XsxeS/G8bywCofN4ndTJ/kv+6QS7QEvcCo+XR0IW8PsvXkTIfDJAX
800eQ+iItuWvOu0JDf1oegVJlLYtBcyrqLp9eu+26UkHFgOsnB+zLtbaM0EEs7JDIVzBN0Iomb/J
eCQzWIIlcA3OMjr/F6Y1q3/s2Zo+qPTy5F+MsBmMHQ0BHgc6g3Pk7wx0q/ZTGWqqB7/sr9+IwGA9
xANUQHd9/Di0O1XfUa8agOCpOiSvvFVr1LRRWsYz/nXS4/QoI1c+FigEvZaDg87/bkjAWXnGUXKl
jBooEqxYUj+BNq1JPjFdG7hldrxB/V5PxoP8kghgx/7XQfHoguzjXKRisG6AEWNxhF98a/VnKFy7
cegBM0fBwtaRLQXharNA6f28RIrpzSn81QxlDHtyrFsSzIOQW7yMo5lTWqh+xwfQGdL3eGYFP8ep
ttJKjaZvm8yKLgFHkvG6PKOc/2uoFTPkvja2CAKsZWuipvc6f+ewgGF2yHd5q3hVf/RlBOiMNhpe
o6+KQ7UH9lU4UjIGD5VMmOMVdMinYOJR2LD+Kkli3VCmAPAJjYmLCE9KItSaINiw8aWa939HLJLG
WBZnWjYfeHTmOhu/8DIGmiVBO3y/TAyCp4bn73tHGtgf7Kto8zN4jV5IvP3AY11Z3pnz8RXVrrnF
3X/t1GSNZvjg42JK/cdQgrCjxdMGnH5+uBlR736eMbqCefsgrqZ63yOoOVe5Qkt/lapUdPn88z3W
eNoBpcSBQ2V+wg72XJ5OPkzX20v8dsLw6enCW+F68AoLjv/8mSGC/BUDfu4g/pQ+rVcctt6licZx
hok8kYG+Pu9nqmiButOs2nqVEgtzO7cpmSHBqZdPTPg1gBTP1GKm8a0B+KyNkrmPaLwsTBFJlSHj
d7jyygBTMdpZQa362u1ByoAbHc9GFVAYHH1c5WoSoXjp2zPWnbCgFEeY385gQcdggXVzhR5qwGdC
BScCadP0X/HUv4iBp0JrEce1v4BM5/PMYFqm/qI8r42pU0o6U59WFedEoJ+6Kg9ZiM958ePzHHoN
Regiob702P23oDN7uzdT5uZiKu6UQinSR0hcQepmkZmYG9/xE4xstU8cXO2FxvrV6SEFX9Gg4hma
YbruiCOd4KYnA/c1szl6rbag3DTqyNcqYPr0eHdaOGGyl18vSjW8/fL1S8AAHJ9ZsJZ1wCJ1v39l
gJ4zmvcPemECOmwUg4Lw0UFc0Ywu/qQ0MQw7kUncD4YKnIr5tdc2ENTHd2pXgKX5BzaHVhsm52Ru
DrSMK/n1baQ+wkop8Q4S+kvHfQmkG9hCztGgTeefh6OglMFxqUGRo926akkei4PUCK7LbPkY9j3i
6Cl+SKHc6qVaB5P9IBxl29+GMTIBd1q6vsc90tHdruccpojT6LYIs+LAmQjPWeNZ5v9XvT8vPk0k
Qj7yM/ZzmmQvtvwf6aNMAuxxgylJK+tOVihMdpEvMEaHyNHXvk6z+JpLTWWTsSow8Nw7WvyEcxhh
ePMUPEvzOUncsXfQRJmUffKt1ZJSZ3l58s7bHExBQOgfxYaQS6rwHh8jc7YSkdIW/YSwmN4OQEfm
psJmzqIdj5q5XE5rh/nFaAGYf6AeLIrEkecKAFHcPOoYMCt35Y4D4py+qOmLTUPFy9hVkAB9IpKE
uwNjvfw7HZS7LBqpFC0g7WwVIf6x63Cro96vp8UR6r7TFYnSgs53q/Zb5fnqmzApfSIFUl4Pzq1G
RRSKdVcQaj4lNGJ7J9C62HnXEVaLqCs+ji0P81iRPee91QUqd83WGA7RB7LLmsu2Z2zqV1cnpfl5
oxqCeap0n6b45gdYYaiOyUgy6kWarYgdIAqiYtS9rApvVMoQjg54Y4OFHgyTKZNFa5bYqWhSf7gT
+qiHEzl8dPVlbC42dSPgiLJs8taDZkv4MXxqap3tsF27WTwJocRUB6lre8PwsRHUU7h6ju/Mf3sB
at07W6pP1SF/ew5oNnfzPralebOAF3za8+GcJh32gb4Tnl8SnDbvpADh+Vz8FO+wXPkEXg9NJSzQ
MSmkYGo4h71UtMujg/8TvqX7DjDMnypYl9fpHlFaFqrwJmpUPE2/BSBIM7EbEMqtfbUUNgjRm84B
81fi+aU+JWN427112/zLqyI1hs7BMUw3Ez01FE64uMJmA2lNYxTuD44Mgq5H0+PpRb/liz4TWs4g
A/Yf8u+oYi3/E6giLJ94EGxlVSItU9q67T7TaUTqL+q4XQUyBJHqPU3HTXNVFF76moBleGn2VCr7
lPmpQQfHVqCmgo9g2pjBuon+v96se/3kfyFEqbZQ4dsFP+s0TzNYAg2za1G20h+/yvwsTFdcOE1t
4u6IA2F5/xn1tCr0jtUoM1gFT+T5QWt8vfdY/8yrmrfXCGMoYCtH+KcY7jVNGHI5dabmTda4vlk7
kpHvY+t8Q/pntq/Vbjjji4RYHJJ6CpMWAxvZsdST5GPT1OgaU/5Ras2TpLQhTsmP20wJ2kunKTNv
QuRjrfwniCvXBwMbUy/Hfek5rE+SPosA/b6Fegdxs6aGZehcEgcvcKWwmXeeuFDdoWkKMs5mORNP
NXSz//y7U2MzbzD9ZQFa7zNQAKPX44ZF3B7pGVNL8kDUx7fTfzEaeS37pHI+yg4gKcmtK/hTRCqN
csFje5CSIqJ3TTnB00MnQ+17DWaYvf9gJAJTEF+uP3Jf2keCN6Mo6pVXgTpU9aKtHz2DCFyF9rUf
pgjIs5CfIQHoyOtX4keRJjjnzZED8llVMKFgl9sSiObcpuQ7eyHi/46xZYdiRlcSFGOXjcoXpAn6
udrONWc/9z5ZmBQoW/Gu6tFC6Duui2XQqmVbJga35ipSlCpi5CrQM+/FIcseyQboCeYARLRw8d4Y
QjaeF1rY+43OHOLh7l+ji1ihyOX+KNRIu1Pv9WM3TgMBY7nGGh5O4Qs9o4urK9PF1obY8NNvCBhV
gN184JUNnyDVJcksF11RrIdcTxh1PDksGz5oEmkP+NWntyRxSLkQoQ10xNhAYwZoPLTuEkUz7Bgm
oOZ3idVxQvmMOkBEqWM9LjRNK1hhNiQKTK7uMso4wGqO48XnqNpBrgF6nAdtdkLPnjcpMG7WJEWt
8Ki6vddjqnxxDM1WSIJDVzrRHK64iCQg3qoCiXM8uAdHolreeVnwhKtFRuga2QCM5jHb9DJw0JT4
0vFi0advr3RnZwjZoYhapp0dkukHtpYWyjfwJ3KDr9Ri20LYqnUcCLdoDLxbrLvKzKPzzuv3qJ0R
/Mal9AXYAes2Czk3ESErSA4hubvBsCOeseH/HWcTI7bilrR7WBirnv9q4BbKFiVtlFMbOKP553PX
ukAkPHfMIJGcobiiZneq778r+fdtMe+4yyoMGgLhnvZp0SzmusBDCTgwewjaRxQp9q58YUABvlsy
2ky7vY3pIedNQesethT+++M3uoxHCiH1QjSi4PM58PQLKqS30G6KCXoX93uWtxZ9KlseDy5b/igX
8ziK/RjUcmgQUDYrjqkr/XmJk7WZyVGnaGXCwiXr4zEf95RanHKtWzRWpPZ4mouMp1hsgDbyg8g0
nj9mBs+p4JYqJ1odF6TcbNvUwjdFOsp93ho5jphaNM1wkR9GAyNdXpLuiAoj6EaggEXLfMHPNNQz
mHJYvqinmiJnnGgB3wMRbXFYjeM9HagKZdD7fX+kLEayWmhG29mG3wztn2jyPRb3J32HTszHb+WO
zSTAjDGGNDtXZNXm4/raRcNWfCKV57b1oYcJ4bSWVY8u/4oRKx3ClVXqManmavmjhmDrZb+YcfRJ
Tf1FIseThXGjyl68vOgMx8vToZL6no+/s9lKAnkGNr+KpBj7fLJ8gz0ExzJypH8DcZGnpLRi7IMO
4zOGS8ZkMiL6vzTNcsrsrT6FfnSZHKr1+5N9xe5wQ5+M9kBPvdQRq933YlgQrGZjl65Nn2J+iWrU
Nip9L6X/+tCKtF55OTqjEyypxr71xY7gOxzCyFQQlLaJuj9AsEXq42KT5VwYBD4/W6cq4BZ6ns5k
Y4Tp+7TCGEEtvvZw1eLnQcqWHNptnLhvM+Gx3nrCdnGU5rEYm/OYG5fNdgtYdA9xUqpCsu6RQhyx
FXmmGMROXNi3D+KZEMLE4urIBYSsn76aC+CJti5XRQ+xDbLhaO1pHhoc3/w0J7A/YXEDUTyaFWyi
0VdVhU8cZ6NrFI4l7Er2TsREdCeE3+DSGPNfQMz1TSm35zm0/nvGojb65a4YKdzLiNiTYJtYxnA2
ubucWQAbiLcojhSY63KbwhaNC7dNA8ojskdtlzoUTagXjbuCkM3RFT9W2G75e9kymr9GXanYuGa4
dnzXmrIMPVhoTJqUg3KQ7QxEcWxRuSyMlqAbIUr1InmJOVO+yF5uy9gr/MJeWGhs9U55tvHsTrj/
iiJS/+/0rJ+Z2czVMtbbZgyrO/RIoh0kS5UouJ6N0x20ZfJjtddKt3zzainpegq+z7mIolXDNkBu
SMNmTnNurvXIiTYAFe9ofIaQJskTGX/dizwLDS7zPzJHzPrvaBs/SVwcttrQ3Y/eG3nXW98D02qR
2X6fWz0P6tfsyoGib0ygyj6KJeSWjQ0e4kDRCBTk+9YbKZBuxW0xwRUe6dS8P5CGltz1tBRamdPl
d/PEo0p3ytVLnx+M7gR9X0RExdrjOulHOS1hEjduAkHJSX94dov7bb5rM88juojMptU+FC+wZp2v
bKlKrp60yNQ+JcrUjyf3HD6NcUt7riIq7JMfPhkhvtMEH4R7NUoq+QXIATNS/FNUVATKw+1bEfW9
Xiszd36n1FQeR7hXdEJUA8cv2igfdfFhHWjYI7u+zwiEq3ZiglyEwaGPOq6+AXZpxZVQN2tG2Fd1
Hnhc1GGtMwNEKtAjxB9BcJrta5N22v/kjw1kLFa3hxRB7hYtsf62Nhu/AhoX4tlCtMnxwSXjVXnb
2mERkjmRJEaQ223yeTnXnS+aXxx+eeox59es3aJdH+pvNuoWXqdeJcFlb8/ppV9IzSKPK0MZwyon
eGlq+UIm1JmWv5lBNFIc5eEsjpsd7fDS+XQr+2nlnxRjJRZJfLitZodc3mw7h1baBE387mJRopek
j7KdNqSmRsBZEieL8bCkuWXYctztDgN7dojabWePjfaD4KK1jjUhE9C3P75dK0ftaP36DDz7bgZc
MW1i65MarQIfjcKDz5nPzfh5lzxTdUWJq12L8MZeVR9PgWLsx5GZsDqY3CUJCxMY74ifolEfTIed
NP8JAx7xCqtE8DM/GUl7erR76/L+X46hyhFUDOdlPjnRxH5s+ovG7Do4/GaMpn7t1ME9Q3KXXAB3
nimvwSS8qWxZRfYOG3nlbgYPcGmyMFtoaY27uFI5iDKMp0Bl60WYY0o80lxdMxvg2+dp5fie/cZg
jrnpruh+q89tei8m2SmMkEHIPw3gp62ZLK5ZQhdMYvpwzacM776qTV8FKBqn34B+8+BbvxQ4Krq/
VkIxQU2yhx5SKUoFqDvxk8CY7BGI+GkIBpt4J545FPBIzVH7GguXJWEoMrIwpcgsA8U8WBjw5Db0
uOj6W8IcxK3aC9sg12FX/HURPIVDlrAXNRkfYUgT6QKWpNCMAj1XiVXHsV77cz2tDhpP/yXfnJa4
fkbJ6N2U3ZC7RKW2zQKoIm0TinkC85mWlC1ZlQXr/u9wpTFb5E2UO1fg+1kOWVS5YeZxTHNLr58q
Z5bI6wWa/IIzgrnsYVZ5PId2GARORihwPD6Wr+5Om0MUxdZU6bw90XH16GSzeIqSM/kaDL4rwBDm
m2pBtPz+CA6lgiSBABkknlvRmdaQG4/5YY/DR0El5K9+sXdX7/k2793e9EE6aGVflxdvQsLU2uZi
drjA73+iI0S5oqrrQGUUyCowY5W+5ke8ZWZjVCAS/3sj4/FnJk+28mum92m0CE0CUaQJ8JQHsqra
u9dRU74rT1uFd49kfc9ljPNHzKSQGizL3cavobLucRJV9+3PlkTcwHWpwDx2BYf9/r4JHhkVIgIc
wx+FpixBVdjuTI7c4LLEMIO/ADp39xk3HHd7wknXtglW/1fBZLLxUa6mzHkHGOUG33pHUSq5rBKW
64bfyHzPxjhmsy8zHaf2qH8zJWIA2gd8iUrcIUyju/RmGGzKZ9FwO57cDSk15CxJ6xT3TI2LZqPi
AbnVUtZl2+FYZjqesisaldTI3OSz7rKtrm8sKmdld5LO4AVQ0slVb3LaOmZS1IJab1lJjHtQT85w
rGzXqTV81Jw6ZmR/hhW1oNYkfmt27dw2zDMMsbdXhtcoRkNgPK/VVrtvYC6n6FeY3rM3B+YXrWDn
Jp0do9LBW3Zdjg/AK7PNkkPBO7uZ6hDTcATYE6+2neOKcS9879MxKX/Bn4rwcshg14vhrmO3gBqg
F3zwKQ09rF5ZXQyYiEdKKIFEhIIfPGbZuAA6ZWFd5PeX8+wiO0XIgeuxT+aYGYl2IXnwI/4OZsX6
ylYgzsxqdJ1a/eg6emO+evMX1L1myje7u555sz24k4IgwTkaRb2YMb/HekN2vSg2Alhqsp8YWcOc
fCxLKbXlTJnT6M62XmHBRZ/1Iy9D1TNH22FbZrskTw2XYbYp91eDo6i/wR7mvmUr7LRh5I+/zL10
1v8tE7b6oychSAf44ePxTRx3tPNrMmm1S1g/x7LDVeLKO6m6uj/1LoCmIJTgnp2u0QVeSBO8hqJw
Vsth4Sp9KYC9F+RI3TSus5d77Q0nMzUI+3opNqJlIOwfJxGjhyzU6jvYPJ692OSICeT5NvMdHQPe
a3TVHf80cDMLASZeuvoShDObgAzUsRIoUpiq2lq2qWbIiB8b8qaN1OltjWO5OwPENdlDKQmPCcpw
P+URpemJfNEpWqIiPCjKQ2lDzlc4C1Ue2jp8IL+0GBZ3jugWidBai2vJ7k3IQWyQ85SO2ViXEQ9T
yyBe1dIX5YpDTXVK4NK92qMYlgRLINiybuQRT9hgocmyyN30IMA9z0DMdLXvEpAYQHGZp4r7cymw
gd10nhrM0FZUg9pnqxHe14cANcq2ssZj6MaC+u3iSBNTefEEYVGHAwXtj+pFlYkdlSpo04cNFaAP
DfYzpGy3mQ2UzKy2FzCQJI2rCRw3hhrHmBDdzMmAoeKLVT5LsjrVbDO9eZOoTbJizxbOVcranoWI
h1+H3JPCuR/zi/rBGe3zeVUrxbjoIiv1S22ZLNiv+l1nSeIUWkZNFnAWGteUQd1bYSboBj1xhthG
v5eGMdXI/+gKwolfL9WE7LqqlMNI2KD36nQBGzYJM06zx22A6Y4oXyrV2W7GmHiCFK8Msqy42BQl
rdGb4xIlGTCY/T9Jb1U7ViDkJ7R6+jlQKy5bDDNHqMtka4s8kuTi8IM2NmLeakasb+yFT5kc7FJW
/GYfxu0q4VgW4u9brh+XxWE7Q3n9Yqn47X+ULxdmcM/NVld54FIUEIxI4M3N0jt47cvJm2YUtXej
Tyl/PsfuuetNnjdccROV5L09PuvXStZyIcItegg6Ledpw8+n2V2j1YQJ++zDhgfLcqptQxZCjL8W
LFH3vlQ0c9l2hE2KNUZo1Z2oTNXbzIfEg4yk9yKoG7r08caCSrXtdBloGIZkvVbtWUDi1v8nvcHy
Nk6B3DMOR7Ky95l0Vp5/T5EpsdHHmpPnpe49+I78UTqjebwRvicKM+Ayn7UedzvHpE3/xKJXbc3B
HubKtQ3JPXZju0/IMKBrvG2R46umEXpFQlRp5l0u8z7foQff7f4Xni6mRqNmSHxJsZElAz9PHAC8
FdEBdK56h/ddgxx+AZ6MVRx/HNHy9O944KXSxA6ErtZF8tgWk2fNPQSEYIh8ubT2crx0Gts/uE9f
A1JsdWowBWWqn7+zVy9FweV1cz0RfuWA35kc2Y4CpcUjikrLSyRawfn8g8ed046fSW+2Xy+JuHsO
LHvVRqoW
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
