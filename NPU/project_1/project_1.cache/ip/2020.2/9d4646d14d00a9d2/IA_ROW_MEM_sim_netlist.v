// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov 23 16:06:35 2025
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32736)
`pragma protect data_block
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
9OnHwY7P8DwjrF3426nkZBW9
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
