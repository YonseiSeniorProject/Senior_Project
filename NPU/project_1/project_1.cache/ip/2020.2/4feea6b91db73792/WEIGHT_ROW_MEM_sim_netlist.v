// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Oct 11 00:47:55 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23456)
`pragma protect data_block
5GAcjyYp6ZWp4TDM/9rEKhbmR5/iEmxA+ZOpLzg7yXYzpKrX5TkmPhQF1KI5cuHsdsGGushEslI/
xz8y8jUqRsm5y2KHjs0+5eDynRT31CPJBevekBrQACJ2wPZBjXUYGdvKnqNcyfgYSgDCd6JZ1eSw
lTkvzjbz4q9kiX+d0y8xOsjuv1g1NSzZpGCZiz0Wzc8vl+/VveHMUMq6opX0VCpyHq1yhc0tKICh
OUkpmN4r+YJb9FciBfUlwfIfX7fLFRvF8t/pe3zTVs9Yj6Hx1TSqbrmPDnkxXnV3jQ3ZDekyd6RR
JfC64XUXC3MVT2Hr8afOa/p0cXgqMSC7R2AWd6NlwcjVM2Ldme6KgpqCWVTkSeineuj9yTFlkdoE
NneSKajTp062YMDCOVHYIbQR2v/3dL2kjRWlQrU40V3zUkufKiVl0uaCu/dXCVBke7XdrphgdcMD
e5leO2FuVzuCaIY0DjUzsxI6NmV4k8r6KMzG00uQzLcsL/h+mNSsSFyQrgeku8enISnnUb9z4NFm
VHthaLaXWN3PKhpDiAhtKvv92V6pnZbmteGYq/Dbtdg8xqlviu3ckKvQ85E9VA2klzv7x8TzC8n1
ZK4GQQEnUkcO1gYsKTrlPss/A5XvE/0UZLzkC3UTyQLbAP/y8b8jZyD9Vp1ioI11Y2YcFpb+Aip1
4PwlK0P0wyoBS/labp7Q9B+IvFS26P4BXqvSlOzIiXZ48JKHv0ywhJ0AhDO/X/gBFDjzwoxk0WMa
hoEPC2Az6yerHwbo+3xrTQuPIJ67LO7pvueUqFwDEtPCMVHXI1vD9ip4ihvS1b5R/1iY3dST2dE0
a2cCD0Od25UT7wS4fQaJyHl0oKQRgooew5nYEjta01XY0ndSO3FeCkmdqnA2QAFZbM+eFv51lYjy
hK22FTvzNK7n6wYix7oihwJWctWubMdMheOIlMN6vEmQpaNfX+4bDErtHV+bSHZh3w0YpbSOdnSQ
PJ28HLXy89HScmMN6qSJnIBYaAwganmoq5VgA8Y3QDWwgpCKKx8VWsyov6fT7BJr4fyU7JHE+vrF
mdJr3QVMC2PBmiQfmSMt1Uf5Dc2J5I/2qMh5x6KXyi4cghx/MMjK2YhnPBu1gVQEC9ycHFbnzJ+k
1okVAan1nL1vCXyg0utlMZEo7KXYe/Ixqp3jmdlwa4+t13vTCq6lDl5mEtE/qoGMxFmLCr/XjlPh
Zdow/13BMWM3roCMg1iPbKkO+DIzrC4fW9jXVe+Okw2KEh3CIN8npkJFCmon6e8JYRV/1tGBtAH5
KTi6wVMVWHqpxFnKb3bpQe6USv2aKigvLRLI3U6hoD7R2zixtKxDvF0TEtEYKNYaGV1eCvCr8KCx
G3GGe5JoOcx0CSz4g5KOXYfHTeaDZho4XKTDYIIRIJY/HPKq/sxFdqzbX0mwDR6mZAJ/e96SL1Ud
6Ka5AHzDZRe1b4D/hnifALXiqs27wCfeuAgvT3onMnLNEwwg0gzhYIBWvpNxe3YjF3UL7lscFvaO
Bjqp1gnh/1Yj55ojfd6cT/yw0bpi2SZfjt5zNMCfc9rjG8e+1+pSoZwAVihUBEwyotCHqAJB4VZ1
KVkl0FkVgFKNtbr6FfYQKSDqDWiMChpWgg+kktAtsUg7TMzo2alC8EZpq1QQWGOBOoUpRlKDw6y0
53YHBH94bKDWYrskx6If0ybljSWwC4x29xvr6/yaixNzA9hEQOFsEaOyElKbG+bqvAG0hcxLUdCs
FlQJC/ASBdGMmP2Kby+XfMrhZnZQZEcK46uvVpa9qS2yW1MzSnq17QJbF+MzF/ZtsLE9t1if6opw
PwLpex3JyGk8LkG9i+NENGdXq8QgrFYlOHLMW+J0l634gyqDd9g42bURRgkPH0J5oosN1qaSdxr1
nMDhEZW62bDn6vuJm1rGXi3iCUbgG+4dvGGftfoSF+aNA53BJR7ezzvYviu0Jb/NE1RtbuTHJJWJ
ek2enXlO2xMWs9Fv58LVcrUmLQzIX8rCw1R0dVnRVVvKuVf/9pYVKh0KYv2pZhM0K3MXuA6VxSoZ
qU4m8gq7WzXyDxVnc9DkPmdMsdivKf7Np/IkbzvkTpSaKN48laiThU1pAh3QCuJ5ovDXp1rxL37S
ZKLxcqOfMnM1XgSA5BBriAth9cF+iXiqiPOdUxtc9AGBrpA8HE1es6ThqfcSWn/nuBtKmagAmQCh
4b7R5pknGMWYnnH1GzZsukhY2KNbKQbAvw9/i94UwCHpOo+yoE0D+T3RbPNITf9ioKRIZumt6MPx
FO4M18e/xmqytRZocpaRRQBUitnDoy0zd3k78UcZVxaC97Zpdkgh5gsf3YipeG1jQdF5CkSKrQ4g
rfkyPctpZU3AnJmZVP7YHEfVDO/sGeF5IESNI1ML6tdQ2akKFTAjhWXsOSJrfTH2tgMApSFdZUhl
RM/u90JtByCn8Zt6r3MKfnXZNYFdDZN4eYlUYS8u7xwAvqJsIhQzfn0h6XDZBcam8TQ3e4YLjJtL
IJ6VQgdRnafkksmT6EgkK081y0UhYgSdu+2znIjwsmNqrXrLPXyoNqgj/ho74guSm0LrzACSV2E0
xJMzhOc8F8YjBp/avz9CtzSPieVdRBrR7PHfnJsuNszuk6g3dFX0ROPPEObiBJ/j0tnYEn/wNUko
boywok6ITuX5DmY+Zmg7qSB3FruGUKpFKYECH7hVgrQxWzGclC4zl+1jNfgVpFVkpP5T9KDYWWSd
CnEjCBKre+LEaT1hFf6uRi3gyHet7QpIAghiZJy7gDeiIYDoHZqYlJBzV1cddpYjJqRMrlQ5rYow
9VmvWe9KiCVg2i+VukKNyzN6uB0KQirRAnc7+/qZ/qQDl/A24HlZRZ0bW2AeC0ASKErvP0kP5V23
X0K/yWtdhrYAJd8oR1+4+QnqtY1mYAkJyMheVhiyzZrHjoXK+KjuXb2a/4SlukfSJKTTGFOnIyzb
OOghT3nrC0buTpuaftHGM25+plA1J4/Ew6A8fCWMET34QV+PX0jwBKHaIiolgxaTUnia/u+Hw/Ts
mMG4d25GNeYsBrnvD5oMD+So6ZVTT7h2jmP5g2orWa7Cv5Nx2WhnA9rB3xIVRVlErFWCbphD507B
FxfQagI/pqlGwRxfe8wjt6iV5ojz4rvrZXO8dDmPr1YQwOkKgvxmwI+vpIxStrkAO+FpvLeEw4uy
KP3fqdpNKGE2FtbLPXlGK75k1WJsVpoeAHZntd1YE+FBig3lsLVeEK9m0iyLfn14iDVGmgWtl5h5
h+v2iZWc9caTN3O0TV3PbFZb1GGroUMku0hrenlPx1jSRo6ScIdc25bE6B6mlT3TerjTMFZi2gyS
+GGxEnMLMMDnNu243q2ZXuHn/exXcVd3bU6jIxjxEPtLWPZFEtJYJOYYrs0orZpeW203oFPc5KxM
l8WjRmPhB59JsDDO6ZOXk61y/ol34//HeeRb9pjE3+0TPSJ4wkL79f3D8Jj/g2hZKCRvOS32bV4o
laiVD2Uppot2EnGDEKA5+zd8Y3Vjun1qD/0a6jBoG1DLVtZivm0fp26XuLg+Y05RiQ+fO2jkAQSC
9dqYPThyapX90fimqWOCQqyhau8rNabcVaT/vnKU4InIIODMI8dLj6aV1OjGHTfgqzoYySfq3ODo
b82aoqPhKQxWLjQ1Lis/eiL0o1RxxzCpE6/S98dmd5HsQHdG3SEzyqFyIL1fNMXVU7OGd3BQSl6D
ITvK2W1D3xnEvLmO5Ld0FDyfseO/f5jKP7lbphGdHDOAjhvVhTZZhRl99uiD/6sUea+tMWB71NFw
WR+K9sw3j1wuK68s3+m0X8VyDYbA/P1ctyFZ9y82e4cBgTavraVIfPLIvjwEvnFkzcIQOnqk4fKK
gMSD37Q90C1jzMzaP0s4JrhVqDXf8hl4PNEWSYb93Z+x9wlQA9zpEMucqQFRmneRVg/8ZYy+JVDc
pi4IEJ3ZkPy9le4wqVoYUm7j3kaY1wQktM4Y0K87ETemObBfb/AIlKa+mOoqs8IBZ3CHPYIAO1lK
FChrl90HFuVOxISshgktgprTcVhs4A3P1CuJY9mgolaBbFmwMV8A7zUCDSmYiynUSz0i2XyLC2Lq
+DQAkJLLX5bhq1h2GzAvC8B7JoafgXIpEwj/1rolB4KbVj0FROt3acgPlyUHQRUw8xuiM9nGoQoL
YDQVeCN40fBtIBtQ3upzOp8KXRkeWRINXyWsI5fsbr/f1gwLHzS7YKmo/G9qEAhSRYVSCH9CaSni
qjICUBn6VEVlGX1kAgA7/irqjFWZgm3JDVhNmt7D5pW3sFO9F/3eBcQeC9N3ESQCu8Ax2TvT6Xzc
0XuF4noDTvp/wRRGfY0h4Ckws/0jcuasLt/V/wRRTMhf/1pi5AmRJjEkZ/lFnbjeogtG2wOc1Bx9
sx/QL6/jTeBiCB0o9sJFr2Tbe6kaPbzBVw7FCrbKFlcgx0cwhRpq1CnKgHlzEB4Pv3HUiT3Qm7at
EgH4G/CmQ7AOFnb7guh92OlTXroBK7Rmt4PD3pEjHZp5w1UF8FkgdWy+a/8dXNr7fdOExQH5Ut8o
hnqzJE6+89vGSEaqYxVA+vo3bVW1yYQcaBlQAnGe+D3HuEUAYekggYPPip7sKcpxGbK/dM8zGelH
oe3jbDX6xBzGO7jdfQYxYP7vRIUMyHzVKu9PX7dM3XwM4JSFUcRmvHFRNzZ6XR8U0DrsLwFpnTwD
yVPpR66Vb8QaFsR9jtk3uz3nBCMH+0Wt1nv4ek00m/m+tZMlfkSEFqeZldXaNicsb/TLIrYvfXDw
afNxlLDP/zJVzSOlsJCZaNiQDT0GAaEHsK50irpjQ3dshzIpm8IqmDsNO9OQk8ex+y0ME7VouOCu
A4gIw7QJ8qSeQJuS3J4IBmsPyltfW/NaXciEQ/D6oKm6l3QYHWyCYtbs74GE6v4B3t9JJjIvoXZy
6I1BL7VhC08cweE2YJuefZSHUujejj/7n9tc616Bt5Dg2lJZ9CNXQFPbA8lvyGVCTf+WLF2+FVBZ
vOBwuFpew8vzVJSIMKck+wdCE6KaKnCI3HtLTO/8FmgLeMSFri9hwRHnm7H/wwz3cOqb08o5qFNq
MBIGqd5cpgSoN5s3RFIgPcsAiSYq0G6kKQAzo6lqIhNzlMx9NJoWb4oI8IgGcKfl+iyxkIUJm77X
9/fqcP5AjaErLnaMZdN+BZJjkeC4hujycXiv0gkW/1viaSKHTUraofOvjgvsM0vdZomGFUnk9DEv
dX8N1lZVVgbJUvPQE0tUkR5QM2X5utHNL26QqPt17heo1u2XKVMMqBXZTXpdtZR3M3L1doF5gCpe
uX/VphP6zXtOuG8yTghKV3FkN+A+WM7mS5l3IxEgjx2mycpLRCL0Kwcibja0U6jLAInvWyvahSM6
90WAo47EbH2Czv+tTTjh9GfyiOlv9TISP5X5BqYGHZmUN/FhGvECADCI9KRp2Qs1VHJOzf1mYtBR
lZ88yNFdo8jtAu9+uPcNWe7Ypu6g9qS2mWuZ5moFevQpdsSWJ1O1/c473AOnE1AbR23j1vttp4hE
/DGytQzPNtjFoiEzbsCAJZKalt1AeAQPHqjNmusSoQErbPixZ0YcsyMdisT36V7CTBlb/Vlku3Z9
4O153yhKjLtnaEsNAmAk8h08Tt8eZa88X57/mYK4PGaXT2FDsFCmRF4d//VCQPPHVoll0OEFufVF
fx0xPHq9MvqBwUtz/wQ0TgsqgedIJKenR2NNsc0R9iCKUQG/j9Il2EhbymG8ensLdAJscup2qATN
xZhUAP2kjM+3ze1sza6tfWFeOCZfFUTF1MnHz+NBLNYTPN4VNIRf+5zvs7j7jLNZ8qX3/PFMqrpR
+e5+MZQzSesqwEEF6NRM9/ZR4bv8UGzGL9ogWECR/WKbx/ET7APcPrUHY92FVb8Gl22OYfEi9qX8
G4CXx3SXWMUf7DVKa9WjHcXUislbDQ1c3x9Tkm86l2uULOJGccld12E6hjnLJL5QEM6xK1HkggoL
Qb0hhCIjiI8i3MydknVY5gfNoYQ4BCugea/jLx4LQHGZw3kWYhtXIrVcm2tS7lA+CG75Nm4YL/pP
7aqtgiizQOx9jL9S19KJfm6mdPLTtGrpuQcMqZjIaZFkSIpAUv5iBharq0yz6w+tbOYysDXe6YII
pSlftoeaIdxXNcCVGtssGXo7YNGNOYeVFDwb8d4z1t1kDs4P6gT7JRNoZuryiBkO90Qq8cKX75qb
iPvNMw5Vm5VOm+NofLAs50xM2XzENZ82g1VRTjjogUpHiumc0YY0sENn0UBmQK/v2WUhltd/HV33
MfxVIaRtQyc+HvXMo9vvfmVQ4TqjiNOdDPIsfGqq6Wxx0t7HMKpZvU/b8r6+Ml2VsMrkmaK2d2Ku
/GTmFPOc9Qi7JE86BEW/dI60h3/J7rNsPOe7Y4PaFtmDWgbu9bkljHcKZpy6U1G7V440l/lcM1h8
qaksxATbfSkFhhtPkDXRfYs5DhAbojhqkyxrmQTn47f2IbMshx2URaOGiJybYxoef+rmgiEPzxWr
UIl4itRH2DW59J+o+FO7LyGegWzlbP1apTZNQMOLenBp4xZ0U8LGmLHlz2hqwiRkSEdMTSK9LvKh
U0tygOutQ3qUJf2iOfj/70+Dflx4CjLp/p8n94bJ01qHlwEK5WhYFuIKmrEqS9/5zqr3AydMUy1T
b+y/IrqV9hm3T7tfPTKZGDb7/T8HA/uqnI9IPJEln21dLZWnGO28nTbJS5dzww/MhQDTnjocdpxi
fIacBRXEw82YYK6KB60f3ENJfIZrHPEtSUmneCw5sXgVRfJFRxgbGocnCkv9BO5TBDtmQx+Z0nxm
iILMzfKOJ7PcjUxayvRK8XzoUosLBAQjhaF/WvTXGM75106H5HLgu77VTuHP8h6IYI3AxXM0uQT/
eH90RTxlnjT4gZtfxc2jdMXRXH8ZiA9jKDZH19Cow4petXmVUxeOFhBXanoTu8+0l587Rl/rgbf2
V+CPiaZux2yONvpepQxa/aWMhE0r2CGzF/onc7u4W87P7m8wzL4Lni1h6ERj3/p9zK5H7Ksa6hFD
FTwetT3abHZjU6T2kajedjuvtEyRcof48Ozfx7WY4KksUViWoE9ylsPetQYT8mk9IkLCEdDlrRHa
Jm3aUlPmSa4JKXftqgopkY2rs4gbUEOssJszf2n7NSUJENcI3jOd7bksY3XLiOywS4WHGz+EfVHJ
j4Ly1xzxDAKaT1InNfq+SAy4XXOYup4gItUD9JtR3CuAMCl3MyyUuymqiLj3BVxkj9QLZrnME6B/
NxM64kddPo7VumVu2gcPC1IqTgeyg79qrn6PkcF+QURQ6zx/FBmm7zd9+oIRzqnhILYtThWCy3I+
+RV9Dx8i0m1El/7sTzfvuTLYx7RvZwOLXjujmAQPKJ2z6kQVq7+E0RzOyEjXG1hvTc52zveE7Icz
7rq1kwSjZZcUCnHDCYrWKJ6KvF+5fSie6DpAr2E0NVNpnt9gM37Guj2nTKibpIlnhDfBXFlGnsMT
I4xL+BqZauUkSb/K2mI0GmP39iuDYDPGXvXf+apgVhV6ybOW6K486HsE4uNxS7+t0nUoi2qSUkL/
OhyZx8zVGRqo0E5JC1uJbT0Gk9/GszKOUYjP8iTfS95TdTTDPzbFapeWMDZG9tZBFrftf4rczZXy
7X0pbYucU2a731SjcxXzdUgDjnuV00cLuSBSvH4RB5Si5O1MLVWHNTrYl8QbPS/k31i8xhHMsDW9
xxmqx2kTzOQJBQ7g1/tjemdjth7U5BFnvnpSQCa+lxzduFybw7IzrMbHH0WcyvoSwqLkW7qmxr5A
7+TXyYRpW0EQ5/K0awbkC443vRswwXjSxY/XRz7IRQMWOWIroNbsr0BwlnW6rp1Y8RrJvw5a9qf+
jbGnUwTSHYQFiG0PUxQN9MGJUoBPMmy06bfP6Z4LDx5loZJYsZ/LrQA/PERIrBeyggf7ZfJIkYOH
0ZiHblNElfiMzqsgGio3QysQZVazFYWb22tsMx+8M/t9xtlHCj35HRvm+Ui0+J8xYqZHjre5UdPz
NrFTA/DbGsV1Vu6Wh3q4NC2w7gW6+MEHe/mPLbW8yyjN1BuU3kTRDHyBv6NLB4XkIlqJTj5vFfOD
PhJbR3CJzojwBImIPYaYoSWd3y3ttVAgQf+vNwAvac21kAFhEzBBmJVsmTi0ub9Fjjm6uo5gvZ9j
33XYtPc2t8uh+AgJylZeOZwssUqnVGcNqtt1lla/Rr36Ote22kOy+riujY7SBFh3rMY8zRvhfLIM
TL4QZzi4olNM9epEhXhTgcKot8qS8I9kfOcGoKmOKDGQWMgx8G/+8SP/8YBBskmNjJbzVYXznHyW
Md0jjFI+qKnmXmcLiPBBOda2xE/qSt5BymwGA0d409f7EizrVQfZb2Tk7bD3PMeP6rmnOIfPSo2c
6G40oUazoiVdZAi5naeki9TJWFY6f1DKo6qlUTMYOf3k8QMI/n01mz7TckwbbsZkl3oS2KqpuyMd
aLUUhw4gXu0I2NlNLX3mZKuNcH+7CGBfVZqaD5fRYyphsHtSSG/8UCZrOpXDEkoutefF+TSpbbPN
KnaKbSmv4mspjIpzYdaXDnsALEx6lRPsbT3z8CjoOyeH+WrCzPn2Eivz2/9tLYZPeFcKAnrFSROh
kbVdMDEj3q9mnJjJzpNwoceaF1SProGJkZE1SyQF/TApXszlojQ0NEUKckUVfyWjPAaKqVbmlrqM
1ju8ujLedD2kHK7QdFVKcKF0PkO5/gHR2nc3E57I1i+tjvih//+JsEFq/8odqSnLQqEA8bxZ6Jwi
DV6768vegSDRumLCXkANgZ/Sxl7lHrUtiMGnK1aNtWDqR67gLO9k/o7gFoLCzGX/mFTjvhVofDT2
Bo2YWSWf3THj0vqAaQHwQ0NGjMSQA6rg1FzA1RI8DiziroaJfIiiDvEDh5STbx6rURmsTDOY8bEP
fBtx45OQ8OtfsFjuXO5i3da2tp2aa3kXOe1t5mVa9w6HFbC2m/pD//3/+NmIlDGRiZgLnjFNRsLj
gUIByete53apUwRBcYGFmuw9PMK462+nsT46VJ0cT22TPDRuSLyKtyIp52A/AqgI1guG6hFS8CTU
6jJTeV/HAMi8Gy3XnGQhnrJr0guHJLoSUwn19LJUTf0L1YXVAXDYURCDn86e2UjkEDtHJnha4WnK
1VHIjUUGZz4eu24QsuujUTMf3Staa8Q1B/ThNOn8vQ/cGV/sKSOK6UneyP0taQYeksb3JEe7aT1J
mtBxGTqLy571lpgmjQ6vpoPJ4hoTCdT1PhdxwBjX+Dy4WdLEu3Az8Y4ivQEYl6w40iEC0ZWvo/yq
Z36+Coiy1SgF6iRtZEe/vDT0dNzR+wsiBfH55pPtyVSNIFFFcAwQnuH6nO4AD2OFB214Rd/fYt7l
viP6emFFLx5bG6BZ643wYUfqy0bvO2mFvi+UUOESD6jbdUvwK8E9nJpeYWwKFMkkqlVjpR+GZEhN
Njfu6bz1oQsY5u0hUI1gVAGhSlVt/0ph7a9w/PlLxfFULiFonwX6Cuw2+cragJ4IKRyvj4gT6lKJ
FzaDvcYe+olmkYJviO/RR3Szma5yY+Kzr3+ON3EnOL6Fl4Sg7WgByVu/kIhH7iInex080XKhixl4
Z+2ccotKBNwfUR/UukELNjSlWft2S5b/2iTe6AffdrLpfNzeaFkaKS61okJV13aTXnRNayk7WGMn
Yk7Zemxt1Rbtnl/7dChFGNND9Sgpo6BgXGK8RZMBwJwc3h/XZIlnAuVX+dsQDl6/uZjLhRh64zIC
wY9vOiHfBIrdUgZnMmpzFTnz6XNCA6w0oo6mgYNFMOkEI79yHkJ8dHqmjtqpPNZEjaz4bCdWp/UK
8roUbJR1TCyTOb+SYM5mZlti1BGy65bdtVl9TgXxNIlI/XvmE+ddoe4u1HZBYqM8QmH31NIPBI58
1cQQTYPhtpRnvD3UWULymVHYLGFzvMo1i3X6JQKLFmMw8w/5CPgQ4uOnxsvNH1VPzxvkoDEJol9+
UyNSYgjRvLPa4uNgUM+aZbf7yxG72+1laV2VhyIksfbncLaniwTkTdMTCI2RKmIR7rgeiqHo7+ka
5L+CGBZzlmq88zmv2/ZlvawP+AM8ZFBR66hpiREStmEmDWF7vVSkU6GJ9AvbqFh8h7IXpZESUlyh
kNlyFgaqzXVSF5BKWruEfKsFdZTB2YWsbbpRhEsw5/l1Q8Y8P973tyt197D4RkaMFgcyguXYa+R3
zqWsiFrW7ExKknTKC1XWekyQO0UWvCEJJliSTb9m5fmSN6zBnPPB0/SFBlCWe7yownQiWdWFiIfP
utTafz6Fk9uYfi5RXTNMCGCWL9vWMWZoofrV4ubE8xS3+bK4Cd77x6iLNmZZlcdI9oPYEuwj3Baw
16SnaNixcVixvqeSIw8oRimttgH7ihygs8ZU1nQnXDB35iauR8q0nuNpETTZFs9v+R5RufcXbW2F
5yhD34foPWNKwIZDipe6uxOTEBxmMfCCJyYT3HXH1dbajD0SG3/hFb1LPzngfh6Y1m/JbZfdv/Xc
GnubqGoQIA6C1Yh+cC4fPmC4Ez+u66El9tnvHtYRdEfF6aZGARTnc1uEzmegf5AWo3z63zVzv9JE
9j5jbWumkGGSJPMqrqPGsYzGOWpViPfrVojCMHh7IXWcW+M5p+Xi+CHCT13B0RSSPzePwYjIFbLo
KtFi5V9ohGAeTRZ71wNZlZ9+k4e7J2aGe7q9gzJg7nYWK8LPhHc1aQAvw58AQvYF8aq7D0Z5HUKI
RwAInD34bEBLgrqMJ2BI7sjaouo495XyIf+BJcbbkDsxDOqND1wLuthQhdjYF5dRu+JuvFIWY+hS
uRXdAlT+mGu/my+wn82cMKLk5L8AQR5tfVHRFNXqlrKHP3YaJkzx8NLh4J6bTRwY6jvGDwxquODT
kPF3l5U8EjOmHaRd4sZ0cuPnaS0BQj7GF5gf//RThfnN0Nf2ygSl7nMoUlDtLSCDV+451uCemc0E
SnGq7UotWdhW3+7EoW7DfyPQ7zXeiAzrfYdul1IYJqx/kslAi9lwnt85aevFgbotbUGLPQ5GNDdW
7ilZSGWgaRPY0oxrYnfktfiI11cIgtP2HgNFs+oDQ+RhRiRxwMIOXBn+6xsD+vTpDyFQ0Z/lMfzd
eYP3GgGTf84AalaBZGEBQJN6FKxcFzAUSBe4Oi2SMNFkQ5rgxoruOfc3rOaob6ln4wrBdPHwV8wG
LcE6imCdGbAsUPKz4y85HMso3q6ALvUdRmmETHS1a+fJP3eHlcNph696ZiT4mYf65wMsqhgmXSEK
gBH3nq50uznSIX7FwDws1w8tBvglzxRPf5joUIhG2+PH14iuZtze1LXggxiiZOtfu7i1K/SegpzR
JaJYa/+VxdDkZ7yQcwBtxOZHsyCexslmrQ70iQrZik12WNtvrkOD7aESe1Oq4xFu2q24wjgCrLn5
5DFB/aX2jn4vHfKPK++bXaWp7aFJTkIVYruq/yc0ShON9ACT3qWNRSxcI6J1Ew+KY0am4ioDXxUh
tEvS7aMt9RqGgcAWFwadOfZwmq3BMtrSy19sZnnmqdL0gVsjk3lVKj+XZ8wfn8DfqDJIe5BSoaEL
MhL+4+KNMGim3EMD5sczUbMF4wmpBUzR2N5tKXy8l4uyzY9bXFdtL7tbN533Ep0w4Fcsb53CDsGZ
Sn2Wq/mN4tllXkMPF/InsOn83AmK7/sDuKCMdzbfkKqcfzdymuZzraehX4RjIX8CYTAklc9SleK0
lZk8han6bNPyfhziyPTcOX5RgHuc8aaWysHWtgO8nr4btQzHUzHe/mRY9uc6MG+EiDLuxnjbuh/k
5oMoX7J4AQavBuqcJ2TKWwKy7EARPBf+8cblAVRUF+BA+K4rUJcsefqJBRPJ3GhIdtqPcQGrYksh
EjB9PSXRYpjD2uMIb77jq7btHHgLdYuR8ghkJTT1R/qeVSwRkPIO1Z3SrkNZlKvsLr9llghSauiV
jug/5k0rxIXbHTUyyK9qJJ9BllAO2ar8YO4hQTSUNAwhC974/F491f9Bp8nVe2qJrN+26EUEfVJ8
dTYzk1fMoJVQrZ7RaMQyqw+lQCmzEDQQGrPgjD7h2qQcnkQkvX5aigoY8QYQUCSWcR5SHlVf7XUz
u6FdEALI+clMCw3/Xd/6BtwKnO7Yuzwg/AKLbjpYc1IOoPTRd8/H0USW/fKUPuvgdM3bau9wZMlr
M6rv0Pprj6h6bBIaRjuZwhvhsK6J/cXzvv76LMDrnTXLrbAfjGjn88ntrPzkFD9FbsI6D2YRCVN9
Jqb/gK5fU7V41zXrXFcYXuUYvo8Tbxs4NuxjjzyEMLXv80RBA+nb0KADR3CORhRAcPfOR/K0QNtB
nHGNKkPauRP94kmn3j4bDnjxWtxy/TgBQsbW6yrvjoLOa3u/yjTn2kTDzrRC3swlxYhU8ejnC6U5
bIctv6ViD72MuWyHMKVAel+QxGEBygxFztkEiF+k5JORfs30zcJ44uA8dCuiin+mmAuw5M/Vqidc
NtAi8YXGmQx/UcDWvVRNh0o7k3OB8W5xiQbE5ZyH3iVUsDTosPMhOf2X/x1t8omGDX7hYqN5Utlg
gljhSLM2kOaImh/wUEOEntVD2k0bXoEWoVbKfESyCdlgAFS1mflxEOJirwOyf4zZWh9R5ZuUKvy6
1QbjriUzOtLDC5W4fCz+4AQSH5Yhibbp6ajViDXZky9qkdmkOiHQVptfgwO7nsLrIvgKzG1bNjMZ
DtXEg54FE/DUBMyqb/lSglDam6TiBlGyh4EoVnPNn+q8mzaZ74/x8oMZCqC1e062gTcV4V/99qUG
D7AA/Df1JdXtoS7q6FPEOUZhekb3mZatNnn/ireL1rYDG5WOrrmM9hCFOdypD0on4Wol/EzNGiiy
IwhLwktNrEC8qb7Zux9vx9zK/+uQB++IKvSGtAYXXJjCKZSpYq8hw+VL3Dy5ELJdMtKk8+tXK2PE
5LuAVvhBljAYAQCMVqPnCjRGvndX49ozKUf/Wie59f3zq464SCBEXdrzSgAK1mlIdekRSyfrVI07
nYamSSe+MGlPk10erdsn1OagWIVcrtVjp/K0XSFYyZ229M0srCTLUmpEYXcuJ1KjAfAm0VubHrSO
FlebazcwUQdB55Sfp7EmvhdRjCHzZ6HUvygr5xhzTG24zYhxeFHtaet4+e1ddrA1PN29UghRq4DX
u7RBxl6PFREmXd8rMdkfuGVQxguFNiQbbLEC+xpdZMv8R2B1V1r+7kQ429e+oMITuF1E9PpfkS/q
mRjI8/GXxfJcANH25efx4V3obTaRyW3Ahz1rPYzB7Bz2ZqFL+csbe7o0RBVh72z/2k9DAkxVXkQF
6E9uPgQf1lt1ofBKdZH7h5pLLDojd0CZIdo82JccPsnbdHaVB9jePFnw8jsULlmBxhHWjN2zY+wW
zLuLT3D/9Ytkka+UotRIOiTYZzQbLXaxIX6nt6vliLdZ1VMhfJm47iUDuIYy6KNi8eb6xWGvqW6v
y106z9/jPq4oTB/We2j1GmveMtkuLRAPefpCAAcYAUAEvWbU9wjne7adrNiFIKkYVzecRL0Q0/+7
ZkxCZkS9x5p3L9dP1MlsY81J+lf0TX3ZrxR2VlnohRxLKEaSV+K6UMwqXW2Im4WM6xuItizj74I6
KJo2T3WVizQAblryz2GihjSWnYUUmwo2W7hIKXa8eF3WGaSJc9ej4WjT5mQRfHDiAt8SJ4syQu9N
2WkEIrin/x+vHrnIZYgbgWdpCVGTmLVWoNcaTsGQs975xH4XWdDp91M91hS+rAlpeSKlonrpW5lq
bGOo1/mvHxxZiQlkznjJP6jfm5G2u676+9/b1c9l7SLw5FfZIuvYJCYUC+HggW975HWFuCbuMi20
KEj/a8RrAEQrLrCEuDsaBMLbxs9OyxJoawyvjw6sBpBTCOuJ52k+v4Quf4Ire7H7yYTcNnouRRDp
4Cj4xW8MFXl0NFaiopHFUrBVHVd20urfu/+Jyvbs7YjRI6F2T0fyxz0pZdu6/KICvQ5AhqyMYZZU
M9+W8nXGKqZ5KP/0FkqqGRoj4KRPnabfseSWdWYvCBs+hoZqqQOm+K3YLSPMaeIvc6n2LQXmlRSe
yfEMg/2Dus/hDADvvSD5fXwYTDzBXs6qkVhcuZxSDPs/Jp3lkm9NQY2nV1K1Z83Ot1gphcqKbRRw
I7BsC/Ou5Fx/npCtVVQFj4qBeD1mAVMbjUhCq7D85CVSd1/0EgPI4RPcQNQufro9/FsXPugkcYMa
TwdAg+rOljuFld9G1AvIL7IuDB5la4EqAC8bL+vQfv+nyDE0QrrvvLNHfc7UqsDkPvIEYXk/6977
fdLv73GfL6jWvhXVtG48aLCjW5G7PlnGRh0BpXh/yMAirOC0KjVX7NO2sYaFMGhmKEesv3s10FpI
6HP07Q7KxvO2Oh69Tq/T9ySHiJoEWXDXOHhOzhBT0LN5CCE/hVswzi4A4MoMwvt4Emdl48ojkWoo
G15e3LZGaqiE+eSBev50qJ22D6VG5dR8T1tYLjRTBOk+gOB3Byk6XTBXrtArBQ+62kmGjlpoSaC3
DC5dYH78QxuiNBNioOirZw3K4TuTLUatfsFPoIP5ZThcjD/Moeo1/AI7x8umlw1oIJxhENzYse36
PgXmSFN0Abpphir+L4XwA49/AOMZJGnalITUB9eqCh5rbxwSetq6bU/uyXkbbITTmKFOZyAaI32I
soQRQungboYjPNd1tt1o0tVjKKeMLTAiJcqURqvk/sJowlUqRMbx9JZ/c9BgWkd2QI5knZW7XwRE
d32r1Tk+m2nJ7DiFWM6apOsngZk9s5MABRtcuIQOaZv0osPckkMxQvlt270O8aw5mNO/s57kdNeY
xXWUUKA5a+0dmYuHmj6+pFqPEbn52r7R2pgctp/MyncRt0hleicVB0/sPfHmROcXXNslYc1gr9k/
PZDacWXUsOpgAw4h2hrrOeQpYrsfFUrjfyZtaLzvVY9zgvUeL7gyhTttv+/MEk++bftXnuJApqIq
sy+7o4e4xNS3TVKeAkS2uGTY/5/epMLZkvSf35HmTf5P8uTLq8esZhrwdDVUm0vGZXfEdhZWO9Ne
mCRrQpOzwDOzS4VY5b9rigkVmScnFZZevl5tgHl/s0oqI47XVPFxlBUgOuv+6QbIttBlF8dHdnLd
t1h8ghwQ4K4xEPLRRZF7A3LX7ZAydE5koiSgqLkxcVXE6DuM6nEfJE9e1g3Htmrw3/tN7suKmx57
JhUkf34rLdaqa1Mc7BLhQQtaWhNcnMHiPJz/7YkgHSiVzWVouB+IA0htU1XOw3te95bIeAk27wlX
WVbAcBql2jFKPsISfigkVWwA8yDklIshC8wo4RYA83hf3plBgJ6jGdJ1Oye7sFHw/w5Te5uGRo1P
XnKSJyG+dsiWlNDp+j5RGM8O5SGv1hzviKZZ8GfViL7xbn77qSqXIh5/nCMs0XvwY/A00jV9tYmD
SS6JCpksBFTvk2pCzU88ie9W2SAVK5Mllg83tWXFHY2UUWUjWSe43R2uTj3+K8S7vgTBTkh+TGW/
mYGq8ssmVhyGYpNegVpZKZLq8EgED/WlitZGkF4EuvUCH2gPsIQECRrhZFdMsIrBns17gSYpS8Td
iOXKU0rvOP3KsYAyR/zHw7ASV31fFUmsLgBCS342jdzezLOsHbLM28vhTZGM2gT4VG4kFUt323Xc
+LWEJ7MSsV1zYFxMft5QXWh8GK8H7mAV7TCFvfp2WCY/lpvj/SDziubYqA+ur/LrSEcmwK9RjAQm
XFKvihQCe8GQgaUkSFcvS5tiC+erA8e+oYtavOCRm5a6jBkGayXDIHXUjHbOEPBC5KVvl+tyeZuj
+JPJ9XWlzm1GBFTVGXMnYiC1DVhygnzFo1I02OWZWt0oTp66QSkLUc0XLzTxHPR92GMbjzonHkkh
pyJAWEISCN/shlN2MPqqm9oY+bC844IL0jGn6V7zQRojDPDvNgsB1WAT/NffJZBOVzz9sBXTKwvF
ah2gZ7UQawRslRH6VMnNVIjxfR2rz9+rcgprw2QoGlyzng64hf0T3PFGb2cMkU3ub3AyJplaFzSt
uryfFPQplDtSUgKOyM5L4/S+hUW27AVqL/E3JJ6NsutCa7/LUU1XXY1wNvPVw5x5Fx/uxk137g1K
rC0kH76Xe/CYtf3eX6/psawUTkJPlEmpZy/J21Y8c/8wegmxD2/LEs3RHvwUwADDyGHCb4vKooP1
sUeQ6QxA4f/52PjSoXD/URE6hwV3xKYZ4d6fUMQYcBb2RExpRsWqp6X9cNCNvYU152DZev2Y3zhs
glVZN/JN6uV7+Yvr//cVmpSVk8lXuwb2iBjXDhpbhEIrK5m2fJtbcSH9Lwv1yN02c0VAecVcMI/5
C4Y3IgSol9bkPyP3PwIUYZ8LFfnwfKh5YTlaALXZOkcVK1agkn2ryyCjWATV0qtNNRNmYbqsI/8G
Ox7XcCKlQghlbqg89fRlwrbypizgYMfThhDPSp4bIZ/u7jVbQGQZgRUH4evqjK7aNJazWuMlCg6W
Y8xbjeDQoKn0DRinWRicm/ObSmgydcg1FBz53n65t343kb0ua9nIbpIZg4fcQLLyRVE4AG8mK3M0
GYobE73uABUkbpXz01tqP2Nal8LqArIyMQHSuiEF89zDJcNrILG/qrqkTVbX3ieYlIclpDJQj1zU
cY6VuRB85b3IBp5pNxXk7Xo39oy88belC87/RQTjM2k9e/ZktW8DK0ebmXxfCHz/187w+2xZkBh1
R9r/VYak3vjxm7Vt9IwN+Su+BfrSQ3nhPbZI7usjKOs66XKVaEMouChqteAmGeSitbGvWwx/ZKFy
yd4cpY8B9RAmZ1mo1MvmhTU6Ix3XgjiVTnH1wyu8usMPkv0+bLGdfyRNHftF7GVEqU/aa2kAiADq
B69UjwVhn4+chvj3TqNP2YfYnKEf/L5myF+FTJNy9CrOZfoTOQ4Nck7tAw4QOaGNiRg+p6frVux2
EREOOKoAiLUxSY6l9fLA91QMY+MlkDlABXML0roWQGoOJtnZUbDbRKVwqoTfLmGLVVl4fj8vt17e
I5Pb8weFNMeP8++XO+42Q/dA2iaQTTqA6hEPPsgae/WYGZCCWIo+8awpvOokvPVjpzTUqR5+dwKH
XVh0AygS6uCack7S8S963w7QsD0fwZELj1IyIJCPq07a93YcVVIOXbKPO+nb2ncJ6c7RdIcaw7bv
JFLpikp7hWlwJWQ0Q9blsUZmm2oZHfo7hQWkEK0YwacxC43ziR9ZhV/FG2L0NRlCB6CmtlSgkE5T
OJw0olYEz0AHsi3vFIQwdnM5oBFDBaz9iuuN4jKUH+JDCIYF/3FYJZcfvTU5ssaFIHVgKzUpykU4
4iKXC0ageKuwbZF0SS7D0G7bssP+iCOrTfvmsvQa7gdh8JyK74Zg3LSejgEb9qgZ4+ZkSLSSoumC
M9rePiu6Huo37aKwKqekjfOCArNEkvEM8N1aaqRfCsFwK7DIiKvZ/K0pNC2LtVbC3IBoxSrO4kMs
8cDX11i5T7v4pAKRqFnLHSeagDFkIHz6m/XgY+Y6xULr0d0PUFCDzKAXtbWmFjpjLShfEnnV7O8y
l95H4uTpnAyYCNQL2/y6kWDTEJvkEeDgelSx8baDLT3pB+mbh4SwLF02UzCa5lkeFh1iyclCcafJ
KUJvAMtzFw6fICUwO+gywYG5GPv3Wlbw8erPrLzegXpaUv5jkxm56sy3wc+aE66oFpuYMmYDqbRr
dz28ope0IwIbW7VaNphdBz5S4dxQOTY2AlSDOoy99OEmhP1EBCML6u4P8Ya60E2UCSr6riJVY5BP
uq7e9nXZnoQLdYLjvKduLs+wCq7MPIsXiDlbMsM/zKjW0PnCOB0+OXZ/NBiMgOO2y1M+ktgZkKZb
FHZl/3Fmt04IbRZFvuyoSS+yoavYFd4Mo2HnccZ+mykgChbYXRP9VyvqK53uUCTe/zO2tZueYgL4
jCmOoj0dmoCAF90PVXyl3duTRFFqzaUYIsiUqv40ZCFOlYNlsege9OpKyUp9yKsyTFj0urjl3x7o
ouISjslrR4GqOk4fjn8XS6+aqi+neWpCe/o/BN7TFlx1DzOVkzeIDaMkFlozJHnkGLjpz4URrjCz
pgTAY/EH9sy+PfXsDFN5FOA3KF+LSsFC8Ti+WC+zy9xlwDQSPPup9vRzRfH8h2NW9d9Cc04TeIP3
6juqM5FvMb5Mp/j7QvyTMtxa7tSrMgyppuYLDDsCaQIeGSEWnf6QMtPA7gJJTFPEV8XTl1lWRa3Q
I6EZ8frcwK5K8gFbd1TdVtFSF4kzRaBorj5BDctGsowcduJcOKzkGzNY8RZAXWuwiv5GJNQ+rRnu
/QHhAabW7sR/3tp0jdvGxuRw7lP2jVXuOuPL5uaO2PmV9eRnzPTDZkhqvs/P+0mEmRKBEmHNmGr6
ucQtK/TL+Al+jfle04E09kGWaJWad1ohxO2K6ikOQLBqkoYbBOmERoUjalMZzw3Uczmm7qzfV6vq
NGGRaJmqYEkXtDN8Re8g5PqZHM0JYjRURULi8eDWRaR79f4eRUCfYpGbL9qP6xHu1/o41fs0Hqxd
4445c6DkhSzGP7G4xNW0LvBzcwuTaqLmUSER40WBtCLJsnnFH95NPbbb3od7HX3z4ermxIUuB5K2
k/O4jkwIXS5x2CIEd4/y89L7osnSBFqUgOBTarDt+rwi5g9PFP2DTGSEm7LeiOelWIa4iVx10+1/
lyK0XOT0+A3yORWJz89/rteIfy6idswWp9LMt3O4q5qQs+A7+IMRWcs/61yG302NRw8rfTqfs+xq
Hd1rqw8Pe+7HV8I+4JtrjAP+hihZ+tjdqaVmckt+Vy7PqAKb5NRasfHc/eLCTSdt7ZNC1nAEAkfR
hkXto8U/hiurcxooz1L7QmQUvXOHTz7JffTen+C/Al3v6vnwhfECK7g7V2aee0abLeFT4DKB3Lm9
mC1TK2U5lHZd69GK7UjAASqSWo7kEKdrka0VxtLd4WD275MDjvDhoe5wA140QDBlmgX3naD4wW4e
DBFjo0bKNM6PJV2MQ5oTuzhOVyhgfc/W5gQA9opLnISmxrNX8AHPLBNA5a5RS4kYKIDesYPcUc+1
bnbQmrVxuZh/0h/VGidQNdS5SaTYeYP19+/tXEV8m50hkUPNSn261pBfVGizlKZdmiWgWYh1NHKr
CmKwyMupK/8zMr/57aFwI931Swzc6IyO6laCunrO3NEDpYBmENnoweHuuRcV5RxRBmFkdNp/kwZX
OR6MzJZx2PaW7+Py1BiM9BXYpD8FHM63j3/XisEqjsZhexksNWs/UKnlZHsENyM/lr/gt9z9l8Ek
RpDxcnjiO/d2myFHw8rDqI+VNtc16OCTJFP5tXi2iUtyuFlH5/1LfGIPxVj2Dy84fsQR+fzXWtDU
s4Gml8pSC8RfhCJzDrdKFPG59ce+2x0mRSIHGNlc1y+Nv8YKNow4oEvbRsoCmnLeXwGSjz64dnqC
flWYJvuCEOOxb083XlTCRDQBbHpbBbL+LCz6CrHEh1wETzVlgNsTyYE8vdD7vmQYi1lBMT9y8rNq
GGlxqdBa29UzVi8Gaj971KvQRwFm8klix39876LNZCiiahfuVmoUuiIDYlqS2k5ZYCUA3Kc+dvvW
Imsup+pCLvSgY/rIoE7Ayxyz+Ch42VZivskSqomJXeMXLJqFXQoOuKS9xS+hgT/lt+dVmj4hHlCu
WX9hAVqk7c62uqhUfTHSqTVzf12PDnfZnMywYp0p2xNfzj8EoDaVu0lxRUoLZ1A+Y2prrP0PyCvj
10ovpXOcerFQXwiYcayLzpeoZj9M8LdeiltUNggkVEOwpHq3MCkU5AT4cr9YyqyTzGA9NQxT3OWN
2xgIVYjADzLx1QdLLPgYmHZhV+OBxuj4S5KCdlKs9YCe25Tjn116scpeoSsQ4TM1gOvTKJqdTVff
6UuNLZTgP1WulUZ+OWDpEALJVK0nZofAlglkfMcVLotnEJw4niO5HTBaKDmfpqZqlouslFWtrGGL
TvdqN/LHj/fSnnjSXxDzxqep7KEYKS2EZAkPkiyp3RsvSFEdqVf08XM+JgatRHr3P6WEJZyIMxkx
u8GhGP8PwXwT4VD+kucNrU75pJvYWGf4b+SNNcF/HHSbpse5exyC5rNsD/gV3ruw4Jq4g9yyxgMC
yWxFo7M5WmV1a+KHejF2knkeNhDtSTOCxjepnKEvMpRVM9tHRGckF7FdXEXE0ogEvPctwSz9hgdq
3jieQ2SFO8260hN1xWVhBgckXq78PCWWSed7oiGsUYBLwS2wJPwCn7f+9rbky+RNqMKqLlEjlocZ
BLiC8Npxuu4issINpNhf8FvVS8/FYtyJUsTQEi5Z3pyQm+vuQaTXVFzqeCLf/hn4vydARnfivr3+
54YeO+Q9l6DIt6rTKZeO9UKR5IO72QGM6b7+UdqdQJ/J5BahzAq2SOJVrCu3Dpp8ybh1KwQe09iJ
LKbYUQxVtPPSTbFEHGXtE8H8q5yJZBHmAtZQXou45Ed/RWE30nW25XVgVKcqAp/stBOvrPN7NjEZ
mogCHZEel7FHDEkb6Cy6XiX42WzHYwH78nRJ7N0O2MWui4Hbdp6Y4i1yeMOaFHGy3Oe8AC4u7g1l
sF8FXmmkXUylvB/oOrmzGJH5HvIEoVpWX0FaIL3HkVlLMgwVBYw1pMhF6WCFuD5TKlS8g4czKt0/
txWHv3taGHT/6KKBf/kga4loi9hifxBjvO34A0kEZLKr/I6vycKCUQl0h6V3g8+CS0mc6OIXueWM
T3VmQpRhkhTTrHab1bZOgAgBmK90zL+Pp08Q2DoDu0cWEf/4OmgYxzDPdGFU0JmSP5KhzyIfdb6n
vXDHGTvnbltwzdbemwD89tVQEzZ98qrKWfXsedMLD1bBMWc7fHoQlSyp0dNKn6rJ2UV5/eZpybSd
/h97y5h0FYBE3rB/HLhEX7HoL4AaHo96FVe8hx0bLrj3NQhkJWOjdyY9nrxqMubi/Vs27DvdGTlZ
79FzLTBvoQzhvd08m9E1mFcZ+BHSPOr15xfJ1KU4PfN/cFyytI0n9LdpgNlCfzwQwDlAImj4Nx1b
xf/Tm+mWC97RSwEPGLm1+Vqrmf7/YRt9htyOjSXQAY9cwRHAVpe+L83bSCd31lz46aFzVuDE50vq
J0MWRlv42dPj/U8VeljzTMiDeaX+YkuSAyiuVZ9riPw0vHNs93fQKyR0DBkxOZK/Mial0KaPh4VY
kHQ7nrkkblLXdido2iRtub+tmzAO4OS00Jkl2ks9cpisQIDjBhYVs2UW4cZCw9GQDGTuIiPdfdZ/
weo7QQ39dvB6jAjXaEyWN7ZocPGKcvee9odKgUTY4Qai24NXtDrgi2ogAv+MHo0Qc0RKbIU0Hd4k
IN43LmiBhxXgP3G6PqGP4CZ5cL8mjv72hGf4Db0hFyTBON67Xru7g9f/9UMw0qAvyiXgcZU3YvrF
orFF/rrtHcZF0/bWLXcux3O4CopR4tuRmUaAQ/SUpOlQ3IpjSsP8EUbClNC4JXQ0FQ0aL88rsGEt
dPTd6i3s8neCrmRyFRIGP1UQD0AZzqI3ibeamtfD1C5mztr/IWedcUWR7WUus9hB3kI4awITlfLd
/oqROHyld6LdKWQeeuz7HPfW379l3sJJWbMJC9P0pGV7tHcpuof+k/C9vRBLvXsEMXV4fxd4NTrk
YZzwrDu3XZy5cY6aHpP5tSS74fL3cTpEDJzDlA+HGlbj46nzSJwP1bJnx+H7l0V53XmHpd0Jv2WU
6V8ur+Tw96837nx+JHEAePVizrjclpYWjRL0spHKcXFQ8TykaTSEnkeV1fq46V8gfNXTi4EYgDU4
CwECjTMmuzA/ZIsmL3zSm/5CpOjaLKSa1qhcIeo65NMP17EyFxL9MaK/Hag36nRyGO247R2QbSKV
ZmuT5Rg2rPxwGiRW6+KWl4IpVw9eR16ngKbZVVqU+B16dJ5bdM+CAJUmygr/49ZfLcISphSYAFHd
3QJjzw/0+Tx1eYcKnSdN2AjiYROneCK+KjxqOdwQMxIcgWlluZBzVHdRsbsqm02Mlh7ayIGHFBZG
1ogErjh5vdrRNteVCq3sZPZBz5M741mYMZf9ZJBs8ti3BJX9z4RQIU6wpz3SIbnDJakWb4OU8bpo
yFarcSAwMZZLXiMTW5EphdnhR25wpesIoMjv8egFki58ycfzFinpXbFuKH85KQZA9mMYQPrCRe36
q/QyqCE0KKRJDsKfm/UqcT0mko235mqkd+/Lw0WIWtCWMOdRFwejDWskCm7araZba9DlQQSUs/xk
BzFqovo/AM+7KeKaxXAQO3YxM4HsfLTbf37Rv629Qxr8dSAhkC4kJfONk9/aS3+zvc9mGhAyfAYo
fDVRoSYtrmaptOeez6jVr/BsaQKGPOZrc2H2N9DneCVqizo1xYr5clHxBgydQzIPAAEIoWzS8k4n
VmFdgGXZi7lmk1drAlG7WbrzIW5Zl6MjJ6zYwQ9wIXisefYR+OoYJibt9Dd+HgSYNEeY4V1S1RBo
AFtUUcGyeUIhRLGtYimyTtnlvnWT2JbhrlCoths1EcH9SJGFmADgVGxFHph8r/13PxixzkTay+qp
Ily2ZDQpKsR39vSn1iXub14gGcIiE2tIEIm3j9GA4P9C3XcpoBfvDKg5DxNgCYNHeqVuy3in1Cxa
fFbh6Zd8KnYvMJVYNTyqyb9Ctu0pBGLsSU5Dhw7BYS2dQmGdYZXVbHd0zOIP4Kzjp+tqz7ymAxbU
m55fM6rcFZ6TT3qiGeJLRL0wQTh8QfoYy2YxjrAs2lFOAmTORyVHb2dv+RpIkvSwGS1a4i7lr0EN
/jhn38UyC9PGWqisxfL4SbxdS9dA/+t8FsUtPJ+tOTSPa4SS8b54vcCGwTlrFGLyQfyrpRnueGku
CE6ZWrec5cXRewZFqVerfHu0O6+e+ngjtMvVXDox+idTqfNFAQlEycX3xADOdn5NPv/JDOCWfmGZ
5z3a2jgdEv/gLdpYGq0eVFh7x82NwYKiA1j2+RysC9aJX6TwgACu+3MTF9tn2kbSBr77lVW7Rhrs
syoQNoULON0ItQvet6P0vKg/wmJ+MLLlrJ0J2p3ar0UMXZriPLgBLqPIewiuKhDcS/A0hTkAEwbD
p+CrXJXx4vWVN8mhGCQia2TNV2heTlahaxUB7TExOM1an45h+SLPUrV250KfOzDCCJ10rMPGnAaA
lCcCYfg2XBhtOxx0IhCniJuYWdVYOrIcBK4oHCMfq/PWZAaSIhNjHHyzu1KFdVtstpaHL5SqR7q3
XYNdOF2EC7KDAYf+TrS4ufZqsXxI8iroE7wQ26a6F2N/wtEH5M928z7JvgiPFsRzoelQBt6/cUU+
P8vhVXdGrzZ0zIUgdQ83Jhp/QO6EN+RDA0rY0k8ii2kaRnle7gF7WMLzkIakq/ujryErDYNtGZT8
YDkz22lKH6omeAyaRGFcMegSuZM+G8/obM1UGDiyKtJCA36y95Cj+3cvCLm6PP8iMqkcI/FkPXGg
dRdf+OKszLo2thAiU8/9cm0tnhk8Rj7A5HmQF5/OmjLvIR5gwBSeRFlu0sF2qh5tLeaFGysns2BC
oOnMEjK0k1gxoBxG+jvL+OQOEWgFyD73DKfOlgY8RLRzzY6wwzN02A3LX5Tfxqdtme8BXBH1ygzx
fzMyaTLUNgQZB0xwhZpgjTeTP+yJQ/WPU5iFCbZSiVGp3DbQOIzz3ghUj8M/u4QrY7CVjZoo9HlW
7pEGfa6NYI7QViFqz8iyxZfCujh6lYuCMOsqJb39o3WsOGauVavgj2GX2EL1GPBXa6zxNTQaDVlI
kLl6tK+6T6YPA5jFappaDDViBdU0gDp7nxUv0ggmbpBocjengUimDcjP9ravT4DD1FRNek0ONncG
sv6ziQdoM0juAFeQrVArjYKIfGXwhAvqIJywemmEMbCGac8JYjgKGR0tmZQsoJlIg/4ycpTgr9Y1
p/D6fH8D14uzsc17ZdrxBSCJNbtmp4lnY6Uqg229FqBiE+KJVv698Cp9a5frVbFj+wZIVmUvZO3P
E1EwtxeEX4bobJ+gtnP07KdZdRU7UdGNTZ+7w/z7kex8kXQt+Cbl6hzjhYWw6y9JQ3XW7zo1HGrw
1x54Bex7PiW3zUMHVZdRBNMqoxkHercYVG6pKzPlFr/MykI88F6XmeyWuAFsAgU3VPH3D7/TyXmx
Ayy2l8JC7uy53yISIs9HozB/iuE8h4UYANi3NpcXuuB9cfHSZH19Jd/wvQ7MdKPuMrOW5/6V+Ax+
LrlLKkexoTrvfZNvWm8rol/ycDKXr43PaXNkDPeM/f2c35PUW7FkXqyukVGo/wpo2tl7gXpm3zWO
NVLCZw67eM/gwx7UaQbnQuaibJXv0yrR4Z3J2UZZ/w6xw0+3g4g4MVxEARGvMU3aeA8UFZPIs3+j
30dUBD4b0X6+y+wKQxBDpUafViRMFzD5oziNiaUoYwo+EMCoaSfIcEeaDkF2Owql6f0r/YRL/cWC
kGMTYqj9U/1ayYr8KPpHI7Vfx5RXPyL7G/mbif5MYS8bWHPcw0KxzvpSy9Nd0hTd0HYsDv+jLoah
uAl1LQRR2dWAMcmBoCe1IhisRp4o/oZB65fvnuCEoQYnEwz5UKMZWQ58da+VWwajzXLLmr84tihO
5bpeD/Ga1lw2+b2OHPFZGvD+cMoWz68tyYbNR78uwx+6M7tAmcbJUP2b5iehDWRvNel7dgM1LHAp
dJbhcptqwy+5Gu9FNd1Plus68LG1rjOZm6eAsWGJ+BT3DS3uRXZj+RpI7TlUCRjkZD4Q7FhY4CKf
jdVAeipPkUXwQUWhtGWdn69G9NahwJIooohE9Z05A5+375aKFiD47QfQ+/W6NMhhPYowBiFwlbIi
1XdV1fdTQgeW+js5sXbNn+1V/IHEm5Qu+S7HnqrZ0Meevq2RYHy0OzqDqFeIauyKrV0uEHZ6RQjO
GOc16sWvAmWqWNlLCSB3R69CHeIPouKa63jEhLLWkO13AgH3paZUF7lYkqzqAcAPvTm7DI3JrxXi
c3vnzGCxivTYwzoM9/PbppJr3wAlc9Xko5XxWWyKu2nubtzCy/O+XD22JZhvoASyDX6XGmtjRYCb
1jgeHV5QXGvpNl5gy/Aoo1rqP3zfK1PZS8/Mxn5J/HW7zKzukgFDFLi1NMBe7jFwKfnhMhVfczDb
gPShvgFclMlq+ce9noWRcw7KwTwhhVHFMYRu3/CRKolLEsMEZtMAxubX/YtQHTu1uw8U1kBXp4L7
4aRF1tGYbhcPKz+aBR7cQto+HdMLpvklNOF36FhVcLDSshJ/UcvVk7vMTsYVh0OhBtSP5MhywBi0
1RVV/6nxZR/5T0v6sqoAoGEOVsJCTLyJA/E15emuM4KxRc0Els1MiUD/3MXQqNWtg2SIxCtNY5JP
eiR0ZbR6NLxpYXvT6k/810iLocL2pMb6YY6iONC+xOCpWlbgQcIGMSAJ1fTV3e4OlfZK4AlnV+no
qcxfj2M4eWbkP3/tSdtLd+q2yEm9yT407gl3AXV23dawUUCz27tDWk3aA3UvXeUELjWhB1PLWcR2
XAF+8f9qbqaVOh2Pu+yNHCep7iW1T36CXIYilT0ENwIQQQ70HNBFLLbnKgQmcC/qW/IhumwzEJYZ
8qceWgUcSCBG0chWjfpdM5fDsp4vlCaaGDpt4ucD0jlkiDV39WJLRM2xxzDDaw9d8Qyo84k/Gjfi
vk8mfqFJHqY1oe4aH2zCDvfWJsAY6kxT9ZNp5kpGCm6KnVO84fu036T7kJ5PSzgN7p4o1QWsKnh9
B/KCIJW/1inTzaqhyXn7VwEi9zT2/wd0Rwmoe2EdHPF0UXS2HRAz2H1KZg/ge1k0IFGMnmWjG/Vo
pwLz+nBqU4fy0mtcsuDsuq2MCbxbdw2MGrJNiTWNmMdFfaFhQjX/qj34noj13W4z2up31CbIx+vE
h5xjoeyssPLayZuXBX36yI6WNZw22OeQZ/HyadLL6WUhY5NTvbxhs+UYgp8NwjBks6fC/oUb79LX
gs5SounRHArwx4NZjM+7l1J1nhrNahNABeZRkWX1T9xgSqubqlzyQWCxL/mVKrU7bjIMuWPkKvO6
zNUJw5ULch9arydrg3SwfHPCganrMf8qAV6QEEi/i2jUoo82jTmN6zwDjtsIGfst6iX/SuD0QIr9
mmq3x5cJHA62ViSIqLmkOqL9PTewkTuCEcSDGeTT7GrLJ+aocQgjMm2vg3zaL7dsoNqGCItrOAhD
FX1OngJVnBc4UMI8FEma2oCJeqsYI3UUEWF3T2TXMrJ8ebhjqhvxxnlgmaap4ZPeCdG+UXXKdjVP
KRjaxCGRU17qa1OKvXJ6P3U9XbVvd1LV+lVBkQMgw7f6THncM+Z2eGOe7YT8Sfq8Fq+Phr9IVhrm
iSXu4Z7VzQc21pHI7zEbuLUAHAF+ru3BdCT11DaGfqYWCgVm18+FBHnZgouDCD58272W1bnturr9
GKWhmNngbuQQrXWqbXPvFuE2Zlo7Fw9hVx3Mb62A/+J+7ImGr31LJfi2I0jUm1V6sEI0fSkFqxAJ
00h1zUpP+rURU1NbbPdl11RplAVfNMvknS9Msh7h2DjuJxGfp25CePItO1YNGDmQqniawVqRk5BP
6qw5g4mHjmXpSbOnidhoUxBeHcQ27Bk13gh64CNl6yIsxHaDZrj83vS2EnS4w84Vf1QOMAIjbrfo
Ow+2MUV3YxwcYDI0VmuzkcLoo4mOajLd/uI/1BdqxlXAhptjYID+oBF2S8gbdUytBjVyU/6YtfaU
RClAbJim/lSgqY5VZa1ycPFVFVefKI0VekE1w6+30ZWExDvIvzog9mup/EKQrT8oaICliwU3YeJQ
PPCf+rnFJbfCCUlo/MGdREQNMbQTnb6K/Roj0NvAENsWJot0tgW+p94kJUwUG8qF0GJZe/CdGSxy
Q886byWZoXECYbaIgYNayTJBBSIDZO2+wnq1r9dMSURirmQbywegn7IA9dUuXCyOdcCbUxHhlZ+B
2u26COEY58MO3OuqT/llTbsbFwa4cxSiTMP6zVatebyCbkg6LbNMgrjK8N/7gkazxaBTUP3NLQfD
6S7NVsEofLcNlhF1h9QtxyZHW4KDUv0rV0d60pSlPH3AbQ8APNHBsYkArywkHDRrEt9I0+ameTPL
ssGm/ru1T0QLCL7unk5A6rMuEbBzUzBjerBjAIiEZAtXqklu74l7M7ux9QKWIHZH1DvIOeEw5MSB
j8aAoduXThPqsYKERiLwkq9CKumBhqBOG1kf2ZtEDA/iN5S+23abbZyM88tDixMnovNI97F2pAFo
upRGPzkuULjbcW08JjXNrWpWNfHzowe/j2sHnAYe8QP+KnJK2I0nSeWDasH3uUFW29WLo4i8th+Y
1nNUzHxLP1yJ0aMkb3w8WWTLo9S6Zy5fSAh2ZETBzbxa7KV9C+QcFoKm3iQV/ERMcipt9U+tt6N/
YIVFLtJs1PL/FPyOHLLE5u34R8YFrthfbwasJmVQLMHzqA8wt7QWl3hJaCyy3zljTamobjquo1T/
P07pooBAFNQi20qwHCcCtfICvmvLUQoXov08tM2mwYT54ZpjatRO1k0ZSBH/4Q1Vucjd08lnFygu
q0aAoQ9K2twnEC9p8JODyRhRecYyoNlzJgivZosZa6h/SSTEqxueAGnnGBLXHwluwYRPhT+Tounz
6gQxRRYpT/p72aMCeq2HP1SmlfQ9cFiR3W7AJG2SF1pRfdheoIj0ob6FVE9XO7aEY7//jA9YC2jh
6c0CcP8d+hEjYkQElfrJiLbedaoP0hTnPgASeyqH8o4TxrVIW3s+pnMt4KWo1+TxEYVLsVkgO6Um
wboyJdbRJy/GTQfzC77PpsR/dESHPN48mybEfx9FSQI6fxkeDt8a9Hi7+Ti7ft3Adxo/Oe1+Xbv/
lsaAE6F6Zz81Oj6VG0bxj6uCAKIjCrHSCC1Qnvk0mg8dFCvLEsnEuVq90BhPsMj1qNq9MzidvluE
CxsvV5Jhz9m3x1BzXse+aR77gyf699P2CHC8q5qXToi5VRGgS3N4KcSCX61fI7W+duQXpOxn6Mi5
OXeT6dvI6h+CioZbdyyMNevw8DHSL5WWAEuH291XoLaZpKn7TpPsDTWATXcOgE0zdORDBT9rMqK4
Nsnj1toXkd31Hhg39zfzsdNGRSGNkx0NCeNf0ujJfdeKc/t96Q9ZqfFd9qlP5+fbYO+UhnMtwQGf
iqFpcGSWsv8NpUPsfk/a2A8ty36MiOJG1rdaC+MPHUQ7Q+HK+5vBzmYb2zfGLvbWchEBK57zhbNB
SvlkKg+J46pQ4NKBGVuopGEwiDgLjZFUwflaUA4SDJsR0OpxyaB5+NubPIWX7dHDD15yVcxwU3Rk
PJjpxjDbgr/UGnZPk/5wh/+J/NOGwpohgrZGgdM4Wg07V/H2AfWCxzymt3pDqCYd3jwerh6abuQi
yfA8h75bSj9oVhQ2BICpnG6vkJA5WEjhbY0P5DkL0t2PvDyHaR1VeWGb7ZlXYGsrVx69II7dwOsC
Mrye+lhsSRbyBxKRtVSUHG3YyRZFSiWq5s5ZcKaGTIG4Ww6K1EHklMUrY2iZ8LL6HFNUqR2ylWg+
wLpW9dnCV5JZBPLJc4WP/CDbED2o95YLDAXMvkP9hKwcAagjMFDuCcfx9hXsKRGIlAlhI4OHmNY2
mydnPeq8EfV70c/m4ZXZ+ndc/EvNE2WN5V0B0F4TdzpYEkv+XqTQf6ts9J3d4GvSc0YdSSfW6RdA
RarUkMim+qpDKZ6C5/6NFycPJHPvEGRYCHtOINbB/wsVIYVucZDXI+aIJKwvdhTRX7+0Z7DE7jwH
paMz1WKeGGHUgNerCrnHDIPK7laNyWhCFqx/19+MbBCLxlenE+U8BGpH/MOcvHLm2KpQQ3/XaQC/
yZE1sNLrVGcoum5yuT9rxBM5Gs6EFA+BqTEnzNohlQJVUnC2Dg4LZFHp+vdQ7Tb86N19cnrwtaOO
YUR9oqnVRIyUI86QYGwhHRbHlSN9459jmQch/ozHLEmftGh/7p+SbAeHtBJuMmM7fDMaD0+D4DYl
t5CkuX60ZY16bypMBCHWBRGXHbbJHMslRtdaV50tuqW/kQIKRUKW7oVMpZfPpbco9pY3qGu/fQ7y
WDPqmrRo7EBAfGzERwncfuwYbuIx3izy0u1XZxjbTvIVMLFEbtmtaqkdVRYkgnLCNiSGrm0o4V2r
bS+2lyna8UzavozjDJksD0GQlAuuIOfgL/B+gfk5UPwPBEZLnvt93kW/I7ihbWhtisHe4cLTIUM6
as6kelCya72NLmFfBwmpVRgiWjvK6A0bsZtcrHgbduLwSrUwUAe9QhzG9eZTLAoOIu7QEd7pwnao
T0rTeEHokp9FbDn3h8I4k/vq+tMIRVHdF2GElFgAJBKLJgXShVUjVql6NQVegKGqoUaa1vxwH25n
Au4f+fbKMGCjMD32mnBwQyl1Uzplrv2ds06jw7xV9UVmN1l37ILz0v2+XanxB377/hgde6YSNr4i
zNB8YhdWgeZUSzBTOTQ9lkKcwLmrWRDPOFpg56RFqhyWfaSnRfl3R60QrG5VjILCppTfgrnNXgXR
Z6MpCKMU4eYT8wYDXzmZZcHz6SOnw8kRNLpVpKon4BIUg2wO+JJnmy6dDKMKJ5xkd7qeTEYu8vtJ
sQHx5X2UBSEy2jytsWVWdlygSiLKZ3qo+fVo57fL9Zk0TSu/4ZxwOmOtCRdS2odOvAaUGz8u8Mel
6Nbm+AzLiuOFef8vgTD5VxT3omoVUwuPSI7vDjts1KVwfxysVClcSwZ51qUAnoRpMVCNSG4v7UHZ
vssTQouDYgC3hjEVQJbYOAn9p5DnE8Qqg/ekTXqkapsu3jTgwrStlep8T5r3o9u5+39xA8KawdH1
95Z9/YGJdrD2RqUlGZRKBknmuprLlM6tVjUJRvnKIeP90UILa7GfLbhF1p6TIwka8g1usTD8bvpW
tPsicvsB2zSOA3uv5vIBQmpM29nfCllEBfl+g/hhDNCa2OZf68ZEXjKiObnyF6Gs76ANjHfR2tbG
+ZK5ZLvo53QcBO1GBjqa+aJmVoOSYs55PYgLjg/Y2ajB8qH8Qhi/4Ksjrw6CJOXzYSmNJhaqFqwC
9H9jND97X5HbrQGTgrmYMtRia119gIMlfpYU1pFkNIrtE2B7R0VPVDpgjd3PwUfjbjdBEATYyGeb
fgk+Na8NG9s0cUAdFR5Im5994iVrvE1OTN1Iuj3kfavb8Xa5D1IrfYU0e5520enPGvQ22EdZ15EA
xZJy6kY/KnLC9HyxPxUv8OQAcDBUCKXjQ2XIknCGLwYRNXJrPtkNC2Wyl2KlsyGEFdBCH1V7A/tk
RmKS9oxD3EsX93LjOmJ+70iPJkZhd2WFiGJdcsGD84XhHc/sATUD+3kLfjVuHzSfe2KzEjyKwtp/
pymZ6zuNX7NMz4U7UUfN+oKhYOtLRQi9oTY+DUOp+4rSVH+fPt9xtk1mSb/NgrsPsa3nufyIwEA4
SHX53NrSxrQShQY0okRXDCqw1rnR4kkPsw6QsNxv4hxmKlNfTSUCo+QnGcheHxWLbk3pftSRbuYn
3p5DOPxjQQGHb5GFlusH8sR0AC/S2N43B47Yoy2nr1F0aeLG5vQOtwl6HE+HNzEjsvRiAFcMdCow
shiD0X/NjVULCoL/F/gTsEoN8QO8aBFEzTCZXoK03d1r3f79rcDS0k16kJOnUTmTulV+QafcHe/X
VF/KgSDdtEeJ+Ag1U4QwFlIfdVoY0feD+HwgjJLlLE85x1d7Vz30TN4YQCKKZAghaYU0UD0KU5h5
nBQezPyVU8RYHe51PGFxsWStZ/Qk0zIMxYqidkka5/rZ/haclXRarjukcNDaAwikyikhEaYMJK0C
2JMlKoAXif9RQC7aHjMgPslTFCsP1li59Up4z8qs31WMyRZkGUq91zN/8f0VgESZdEJqJVFlWmPt
fRcOQDvortIyjmsbtr2rA6Fh6KpuLL9hscNZ4jNRr4cnoNqkaUPcPuNdi9fq0yOSNosPqqjOqCFI
zn70G7u6j5VUBldZpXR6F51gNP4u1mSwX29mI7UulCcV+evsZLh1CDP62yEb5CH4GJnH8a5Tegea
/IfyLcfQkv/IDPgb8fsGI3dAUEaI8nXrh/XyxcftcB9nFgh19ObCuJXTe/2lE2hrxpE7qIfXyzPr
Infwg1mPXAJ2DBmeDB2ZuO7EY/sd99ycFlGv8gc=
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
