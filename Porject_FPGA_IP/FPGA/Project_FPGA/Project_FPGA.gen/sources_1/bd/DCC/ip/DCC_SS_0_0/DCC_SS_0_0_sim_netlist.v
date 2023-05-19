// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  9 14:49:10 2023
// Host        : SUMarc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/marcs/OneDrive/Bureau/Desktop/FPGA/Project_FPGA/Project_FPGA.gen/sources_1/bd/DCC/ip/DCC_SS_0_0/DCC_SS_0_0_sim_netlist.v
// Design      : DCC_SS_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DCC_SS_0_0,SS_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "SS_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module DCC_SS_0_0
   (SEL_SEG,
    SEG,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [3:0]SEL_SEG;
  output [7:0]SEG;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire [6:0]\^SEG ;
  wire [3:0]SEL_SEG;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign SEG[7] = \<const1> ;
  assign SEG[6:0] = \^SEG [6:0];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  DCC_SS_0_0_SS_v1_0 U0
       (.SEG(\^SEG ),
        .SEL_SEG(SEL_SEG),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "SEPT_SEGMENTS" *) 
module DCC_SS_0_0_SEPT_SEGMENTS
   (SR,
    SEL_SEG,
    SEG,
    Q,
    s00_axi_aresetn,
    s00_axi_aclk);
  output [0:0]SR;
  output [3:0]SEL_SEG;
  output [6:0]SEG;
  input [8:0]Q;
  input s00_axi_aresetn;
  input s00_axi_aclk;

  wire [8:0]Q;
  wire [6:0]SEG;
  wire [3:0]SEL_SEG;
  wire [0:0]SR;
  wire [16:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire [16:0]counter_0;
  wire [16:1]data0;
  wire [6:0]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \seg[0]_i_10_n_0 ;
  wire \seg[0]_i_11_n_0 ;
  wire \seg[0]_i_12_n_0 ;
  wire \seg[0]_i_13_n_0 ;
  wire \seg[0]_i_14_n_0 ;
  wire \seg[0]_i_15_n_0 ;
  wire \seg[0]_i_16_n_0 ;
  wire \seg[0]_i_17_n_0 ;
  wire \seg[0]_i_2_n_0 ;
  wire \seg[0]_i_3_n_0 ;
  wire \seg[0]_i_4_n_0 ;
  wire \seg[0]_i_5_n_0 ;
  wire \seg[0]_i_6_n_0 ;
  wire \seg[0]_i_7_n_0 ;
  wire \seg[0]_i_8_n_0 ;
  wire \seg[0]_i_9_n_0 ;
  wire \seg[1]_i_10_n_0 ;
  wire \seg[1]_i_11_n_0 ;
  wire \seg[1]_i_12_n_0 ;
  wire \seg[1]_i_13_n_0 ;
  wire \seg[1]_i_14_n_0 ;
  wire \seg[1]_i_15_n_0 ;
  wire \seg[1]_i_16_n_0 ;
  wire \seg[1]_i_17_n_0 ;
  wire \seg[1]_i_2_n_0 ;
  wire \seg[1]_i_3_n_0 ;
  wire \seg[1]_i_4_n_0 ;
  wire \seg[1]_i_5_n_0 ;
  wire \seg[1]_i_6_n_0 ;
  wire \seg[1]_i_7_n_0 ;
  wire \seg[1]_i_8_n_0 ;
  wire \seg[1]_i_9_n_0 ;
  wire \seg[2]_i_10_n_0 ;
  wire \seg[2]_i_11_n_0 ;
  wire \seg[2]_i_12_n_0 ;
  wire \seg[2]_i_15_n_0 ;
  wire \seg[2]_i_16_n_0 ;
  wire \seg[2]_i_17_n_0 ;
  wire \seg[2]_i_18_n_0 ;
  wire \seg[2]_i_19_n_0 ;
  wire \seg[2]_i_20_n_0 ;
  wire \seg[2]_i_21_n_0 ;
  wire \seg[2]_i_22_n_0 ;
  wire \seg[2]_i_23_n_0 ;
  wire \seg[2]_i_24_n_0 ;
  wire \seg[2]_i_2_n_0 ;
  wire \seg[2]_i_3_n_0 ;
  wire \seg[2]_i_5_n_0 ;
  wire \seg[2]_i_6_n_0 ;
  wire \seg[2]_i_7_n_0 ;
  wire \seg[2]_i_8_n_0 ;
  wire \seg[2]_i_9_n_0 ;
  wire \seg[3]_i_10_n_0 ;
  wire \seg[3]_i_11_n_0 ;
  wire \seg[3]_i_12_n_0 ;
  wire \seg[3]_i_13_n_0 ;
  wire \seg[3]_i_14_n_0 ;
  wire \seg[3]_i_15_n_0 ;
  wire \seg[3]_i_16_n_0 ;
  wire \seg[3]_i_17_n_0 ;
  wire \seg[3]_i_18_n_0 ;
  wire \seg[3]_i_19_n_0 ;
  wire \seg[3]_i_20_n_0 ;
  wire \seg[3]_i_21_n_0 ;
  wire \seg[3]_i_2_n_0 ;
  wire \seg[3]_i_3_n_0 ;
  wire \seg[3]_i_4_n_0 ;
  wire \seg[3]_i_5_n_0 ;
  wire \seg[3]_i_6_n_0 ;
  wire \seg[3]_i_7_n_0 ;
  wire \seg[3]_i_8_n_0 ;
  wire \seg[3]_i_9_n_0 ;
  wire \seg[4]_i_10_n_0 ;
  wire \seg[4]_i_11_n_0 ;
  wire \seg[4]_i_12_n_0 ;
  wire \seg[4]_i_13_n_0 ;
  wire \seg[4]_i_14_n_0 ;
  wire \seg[4]_i_15_n_0 ;
  wire \seg[4]_i_16_n_0 ;
  wire \seg[4]_i_17_n_0 ;
  wire \seg[4]_i_18_n_0 ;
  wire \seg[4]_i_19_n_0 ;
  wire \seg[4]_i_20_n_0 ;
  wire \seg[4]_i_21_n_0 ;
  wire \seg[4]_i_22_n_0 ;
  wire \seg[4]_i_23_n_0 ;
  wire \seg[4]_i_2_n_0 ;
  wire \seg[4]_i_3_n_0 ;
  wire \seg[4]_i_4_n_0 ;
  wire \seg[4]_i_5_n_0 ;
  wire \seg[4]_i_6_n_0 ;
  wire \seg[4]_i_7_n_0 ;
  wire \seg[4]_i_8_n_0 ;
  wire \seg[4]_i_9_n_0 ;
  wire \seg[5]_i_10_n_0 ;
  wire \seg[5]_i_11_n_0 ;
  wire \seg[5]_i_12_n_0 ;
  wire \seg[5]_i_13_n_0 ;
  wire \seg[5]_i_14_n_0 ;
  wire \seg[5]_i_15_n_0 ;
  wire \seg[5]_i_16_n_0 ;
  wire \seg[5]_i_17_n_0 ;
  wire \seg[5]_i_18_n_0 ;
  wire \seg[5]_i_19_n_0 ;
  wire \seg[5]_i_20_n_0 ;
  wire \seg[5]_i_21_n_0 ;
  wire \seg[5]_i_22_n_0 ;
  wire \seg[5]_i_23_n_0 ;
  wire \seg[5]_i_24_n_0 ;
  wire \seg[5]_i_25_n_0 ;
  wire \seg[5]_i_26_n_0 ;
  wire \seg[5]_i_2_n_0 ;
  wire \seg[5]_i_3_n_0 ;
  wire \seg[5]_i_4_n_0 ;
  wire \seg[5]_i_5_n_0 ;
  wire \seg[5]_i_6_n_0 ;
  wire \seg[5]_i_7_n_0 ;
  wire \seg[5]_i_8_n_0 ;
  wire \seg[5]_i_9_n_0 ;
  wire \seg[6]_i_10_n_0 ;
  wire \seg[6]_i_11_n_0 ;
  wire \seg[6]_i_12_n_0 ;
  wire \seg[6]_i_13_n_0 ;
  wire \seg[6]_i_14_n_0 ;
  wire \seg[6]_i_15_n_0 ;
  wire \seg[6]_i_16_n_0 ;
  wire \seg[6]_i_17_n_0 ;
  wire \seg[6]_i_18_n_0 ;
  wire \seg[6]_i_19_n_0 ;
  wire \seg[6]_i_20_n_0 ;
  wire \seg[6]_i_21_n_0 ;
  wire \seg[6]_i_22_n_0 ;
  wire \seg[6]_i_23_n_0 ;
  wire \seg[6]_i_24_n_0 ;
  wire \seg[6]_i_25_n_0 ;
  wire \seg[6]_i_26_n_0 ;
  wire \seg[6]_i_2_n_0 ;
  wire \seg[6]_i_3_n_0 ;
  wire \seg[6]_i_4_n_0 ;
  wire \seg[6]_i_5_n_0 ;
  wire \seg[6]_i_6_n_0 ;
  wire \seg[6]_i_7_n_0 ;
  wire \seg[6]_i_8_n_0 ;
  wire \seg[6]_i_9_n_0 ;
  wire \seg_reg[2]_i_13_n_0 ;
  wire \seg_reg[2]_i_14_n_0 ;
  wire \seg_reg[2]_i_4_n_0 ;
  wire [3:0]sel_seg;
  wire \sel_seg[3]_i_10_n_0 ;
  wire \sel_seg[3]_i_11_n_0 ;
  wire \sel_seg[3]_i_12_n_0 ;
  wire \sel_seg[3]_i_13_n_0 ;
  wire \sel_seg[3]_i_14_n_0 ;
  wire \sel_seg[3]_i_15_n_0 ;
  wire \sel_seg[3]_i_1_n_0 ;
  wire \sel_seg[3]_i_4_n_0 ;
  wire \sel_seg[3]_i_5_n_0 ;
  wire \sel_seg[3]_i_6_n_0 ;
  wire \sel_seg[3]_i_7_n_0 ;
  wire \sel_seg[3]_i_8_n_0 ;
  wire \sel_seg[3]_i_9_n_0 ;
  wire [3:3]NLW_counter0_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[10]_i_1 
       (.I0(data0[10]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[11]_i_1 
       (.I0(data0[11]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_1 
       (.I0(data0[12]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[13]_i_1 
       (.I0(data0[13]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[14]_i_1 
       (.I0(data0[14]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[15]_i_1 
       (.I0(data0[15]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_1 
       (.I0(data0[16]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[16]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \counter[16]_i_2 
       (.I0(\counter[16]_i_3_n_0 ),
        .I1(\counter[16]_i_4_n_0 ),
        .I2(\counter[16]_i_5_n_0 ),
        .I3(counter[12]),
        .I4(counter[11]),
        .I5(counter[2]),
        .O(\counter[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \counter[16]_i_3 
       (.I0(counter[6]),
        .I1(counter[4]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[14]),
        .I5(counter[9]),
        .O(\counter[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[16]_i_4 
       (.I0(counter[15]),
        .I1(counter[8]),
        .I2(counter[10]),
        .I3(counter[13]),
        .O(\counter[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \counter[16]_i_5 
       (.I0(counter[7]),
        .I1(counter[5]),
        .I2(counter[3]),
        .I3(counter[16]),
        .O(\counter[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[1]_i_1 
       (.I0(data0[1]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[2]_i_1 
       (.I0(data0[2]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[3]_i_1 
       (.I0(data0[3]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_1 
       (.I0(data0[4]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[5]_i_1 
       (.I0(data0[5]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[6]_i_1 
       (.I0(data0[6]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[7]_i_1 
       (.I0(data0[7]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_1 
       (.I0(data0[8]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[9]_i_1 
       (.I0(data0[9]),
        .I1(\counter[16]_i_2_n_0 ),
        .O(counter_0[9]));
  FDCE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[16]),
        .Q(counter[16]));
  FDCE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(counter_0[9]),
        .Q(counter[9]));
  LUT6 #(
    .INIT(64'hFD0DFD0DFD0D0D0D)) 
    \seg[0]_i_1 
       (.I0(\seg[0]_i_2_n_0 ),
        .I1(\seg[0]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\seg[0]_i_4_n_0 ),
        .I4(\seg[5]_i_3_n_0 ),
        .I5(\seg[0]_i_5_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFF00FFFFFB51FB51)) 
    \seg[0]_i_10 
       (.I0(Q[3]),
        .I1(counter[15]),
        .I2(counter[16]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(Q[4]),
        .O(\seg[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000DFFFF000D0000)) 
    \seg[0]_i_11 
       (.I0(\seg[6]_i_21_n_0 ),
        .I1(\seg[5]_i_20_n_0 ),
        .I2(\seg[0]_i_15_n_0 ),
        .I3(\seg[0]_i_16_n_0 ),
        .I4(Q[6]),
        .I5(\seg[0]_i_17_n_0 ),
        .O(\seg[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFBFFAFFFAD)) 
    \seg[0]_i_12 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\seg[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg[0]_i_13 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\seg[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF54FF37)) 
    \seg[0]_i_14 
       (.I0(counter[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(counter[5]),
        .I4(Q[4]),
        .O(\seg[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \seg[0]_i_15 
       (.I0(counter[16]),
        .I1(counter[15]),
        .I2(Q[3]),
        .I3(counter[14]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\seg[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h002A0008)) 
    \seg[0]_i_16 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(counter[4]),
        .I4(counter[5]),
        .O(\seg[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFF)) 
    \seg[0]_i_17 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\seg[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0111)) 
    \seg[0]_i_2 
       (.I0(\seg[0]_i_6_n_0 ),
        .I1(\seg[0]_i_7_n_0 ),
        .I2(\seg[5]_i_15_n_0 ),
        .I3(\seg[0]_i_8_n_0 ),
        .I4(Q[2]),
        .I5(Q[8]),
        .O(\seg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FFF0E0E0)) 
    \seg[0]_i_3 
       (.I0(Q[3]),
        .I1(\seg[6]_i_16_n_0 ),
        .I2(Q[2]),
        .I3(Q[8]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(\seg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDCFCCCFFF)) 
    \seg[0]_i_4 
       (.I0(sel_seg[2]),
        .I1(Q[2]),
        .I2(\seg[0]_i_9_n_0 ),
        .I3(Q[5]),
        .I4(\seg[0]_i_10_n_0 ),
        .I5(\sel_seg[3]_i_10_n_0 ),
        .O(\seg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \seg[0]_i_5 
       (.I0(Q[0]),
        .I1(\seg[0]_i_11_n_0 ),
        .I2(Q[7]),
        .I3(\seg[0]_i_12_n_0 ),
        .I4(Q[8]),
        .I5(sel_seg[0]),
        .O(\seg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000008AAA00AA00)) 
    \seg[0]_i_6 
       (.I0(Q[7]),
        .I1(\seg[0]_i_13_n_0 ),
        .I2(Q[5]),
        .I3(counter[4]),
        .I4(Q[6]),
        .I5(counter[5]),
        .O(\seg[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00130011)) 
    \seg[0]_i_7 
       (.I0(\seg[0]_i_14_n_0 ),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(\seg[5]_i_26_n_0 ),
        .O(\seg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FBE88004FFEC84)) 
    \seg[0]_i_8 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[16]),
        .O(\seg[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hCFCE)) 
    \seg[0]_i_9 
       (.I0(Q[3]),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(Q[4]),
        .O(\seg[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \seg[1]_i_1 
       (.I0(\seg[1]_i_2_n_0 ),
        .I1(\seg[1]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\seg[1]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\seg[1]_i_5_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h0040FF7FFF7FFF7C)) 
    \seg[1]_i_10 
       (.I0(counter[16]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(\seg[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF0FFF2EEE2EE2)) 
    \seg[1]_i_11 
       (.I0(\seg[1]_i_8_n_0 ),
        .I1(Q[4]),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\seg[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8FBF8080BFBFB080)) 
    \seg[1]_i_12 
       (.I0(\seg[1]_i_8_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(sel_seg[3]),
        .I5(counter[16]),
        .O(\seg[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \seg[1]_i_13 
       (.I0(counter[4]),
        .I1(counter[5]),
        .O(\seg[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5554555544445544)) 
    \seg[1]_i_14 
       (.I0(counter[4]),
        .I1(\seg[1]_i_17_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\seg[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \seg[1]_i_15 
       (.I0(Q[7]),
        .I1(Q[4]),
        .O(\seg[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0003000000000355)) 
    \seg[1]_i_16 
       (.I0(counter[5]),
        .I1(counter[15]),
        .I2(counter[16]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\seg[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF5F0F100)) 
    \seg[1]_i_17 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(counter[5]),
        .I5(Q[8]),
        .O(\seg[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10101011)) 
    \seg[1]_i_2 
       (.I0(\sel_seg[3]_i_10_n_0 ),
        .I1(\seg[1]_i_6_n_0 ),
        .I2(\seg[1]_i_7_n_0 ),
        .I3(\seg[1]_i_8_n_0 ),
        .I4(Q[4]),
        .I5(\seg[1]_i_9_n_0 ),
        .O(\seg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBFBEEFBAAFB)) 
    \seg[1]_i_3 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(\seg[1]_i_10_n_0 ),
        .I3(Q[6]),
        .I4(\seg[1]_i_11_n_0 ),
        .I5(\seg[1]_i_12_n_0 ),
        .O(\seg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400040000)) 
    \seg[1]_i_4 
       (.I0(\sel_seg[3]_i_10_n_0 ),
        .I1(Q[5]),
        .I2(counter[4]),
        .I3(counter[5]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\seg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B888B8B8B8B)) 
    \seg[1]_i_5 
       (.I0(\seg[1]_i_13_n_0 ),
        .I1(Q[2]),
        .I2(\seg[1]_i_14_n_0 ),
        .I3(Q[8]),
        .I4(\seg[1]_i_15_n_0 ),
        .I5(\seg[1]_i_16_n_0 ),
        .O(\seg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FDFDFD)) 
    \seg[1]_i_6 
       (.I0(counter[16]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(Q[5]),
        .O(\seg[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF3333373)) 
    \seg[1]_i_7 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(counter[5]),
        .I4(counter[4]),
        .O(\seg[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h07070707F7F7F707)) 
    \seg[1]_i_8 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(Q[3]),
        .I3(counter[14]),
        .I4(counter[15]),
        .I5(counter[16]),
        .O(\seg[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \seg[1]_i_9 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(Q[8]),
        .I3(Q[0]),
        .O(\seg[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888AAAAA)) 
    \seg[2]_i_1 
       (.I0(\seg[2]_i_2_n_0 ),
        .I1(\seg[2]_i_3_n_0 ),
        .I2(Q[8]),
        .I3(\seg_reg[2]_i_4_n_0 ),
        .I4(\seg[2]_i_5_n_0 ),
        .I5(\seg[2]_i_6_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h1011101110111111)) 
    \seg[2]_i_10 
       (.I0(Q[2]),
        .I1(Q[8]),
        .I2(\seg[2]_i_18_n_0 ),
        .I3(Q[7]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(\seg[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \seg[2]_i_11 
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(\seg[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \seg[2]_i_12 
       (.I0(Q[3]),
        .I1(counter[4]),
        .I2(Q[4]),
        .I3(counter[5]),
        .O(\seg[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \seg[2]_i_15 
       (.I0(Q[3]),
        .I1(counter[15]),
        .I2(counter[16]),
        .O(\seg[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \seg[2]_i_16 
       (.I0(counter[5]),
        .I1(Q[3]),
        .I2(counter[4]),
        .O(\seg[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1001100110015445)) 
    \seg[2]_i_17 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(counter[16]),
        .I5(counter[15]),
        .O(\seg[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000001F)) 
    \seg[2]_i_18 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(counter[4]),
        .I4(Q[6]),
        .O(\seg[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3FB51F2F2F7A2)) 
    \seg[2]_i_19 
       (.I0(Q[3]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(\seg[2]_i_23_n_0 ),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\seg[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBABBBBBBBBB)) 
    \seg[2]_i_2 
       (.I0(Q[1]),
        .I1(\seg[2]_i_7_n_0 ),
        .I2(\seg[2]_i_8_n_0 ),
        .I3(\seg[2]_i_9_n_0 ),
        .I4(Q[7]),
        .I5(\seg[2]_i_10_n_0 ),
        .O(\seg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55CF55CF45CC45CF)) 
    \seg[2]_i_20 
       (.I0(\seg[2]_i_24_n_0 ),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\seg[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hEFFF400040FFEFFF)) 
    \seg[2]_i_21 
       (.I0(Q[3]),
        .I1(counter[16]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(\seg[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF00FF00FBAAB)) 
    \seg[2]_i_22 
       (.I0(\seg[4]_i_20_n_0 ),
        .I1(Q[3]),
        .I2(counter[4]),
        .I3(counter[5]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\seg[2]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \seg[2]_i_23 
       (.I0(counter[16]),
        .I1(counter[15]),
        .O(\seg[2]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \seg[2]_i_24 
       (.I0(Q[3]),
        .I1(counter[15]),
        .I2(counter[16]),
        .O(\seg[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \seg[2]_i_3 
       (.I0(\seg[2]_i_11_n_0 ),
        .I1(Q[2]),
        .I2(Q[8]),
        .I3(\seg[2]_i_12_n_0 ),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(\seg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \seg[2]_i_5 
       (.I0(Q[0]),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(Q[8]),
        .O(\seg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00540454FFFFFFFF)) 
    \seg[2]_i_6 
       (.I0(Q[0]),
        .I1(\seg[2]_i_15_n_0 ),
        .I2(\seg[6]_i_16_n_0 ),
        .I3(counter[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\seg[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAA32)) 
    \seg[2]_i_7 
       (.I0(Q[2]),
        .I1(counter[5]),
        .I2(Q[8]),
        .I3(counter[4]),
        .O(\seg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FF11B1FFFFFFFF)) 
    \seg[2]_i_8 
       (.I0(Q[3]),
        .I1(\sel_seg[3]_i_13_n_0 ),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(\seg[4]_i_22_n_0 ),
        .I5(Q[6]),
        .O(\seg[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA000000AACF)) 
    \seg[2]_i_9 
       (.I0(counter[4]),
        .I1(\seg[2]_i_16_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(\seg[2]_i_17_n_0 ),
        .O(\seg[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAEA0000AAEAAAEA)) 
    \seg[3]_i_1 
       (.I0(\seg[3]_i_2_n_0 ),
        .I1(\seg[3]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\seg[3]_i_4_n_0 ),
        .I4(\seg[3]_i_5_n_0 ),
        .I5(\seg[3]_i_6_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[3]_i_10 
       (.I0(\seg[3]_i_19_n_0 ),
        .I1(\seg[3]_i_17_n_0 ),
        .I2(Q[6]),
        .I3(\seg[3]_i_20_n_0 ),
        .I4(Q[5]),
        .I5(\seg[3]_i_21_n_0 ),
        .O(\seg[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \seg[3]_i_11 
       (.I0(counter[5]),
        .I1(Q[8]),
        .I2(Q[0]),
        .O(\seg[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0EEC1EFB1FFD1EFB)) 
    \seg[3]_i_12 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(Q[3]),
        .I5(counter[16]),
        .O(\seg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h44444777FF777C74)) 
    \seg[3]_i_13 
       (.I0(\seg[3]_i_18_n_0 ),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(\seg[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00EEFFFF00EAFFEB)) 
    \seg[3]_i_14 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(counter[4]),
        .I4(counter[5]),
        .I5(Q[3]),
        .O(\seg[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDF808FD5)) 
    \seg[3]_i_15 
       (.I0(Q[3]),
        .I1(counter[16]),
        .I2(Q[4]),
        .I3(counter[5]),
        .I4(counter[4]),
        .O(\seg[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F0F01F101010)) 
    \seg[3]_i_16 
       (.I0(counter[15]),
        .I1(counter[14]),
        .I2(Q[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[16]),
        .O(\seg[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0C3F0C0C0B0B0B0B)) 
    \seg[3]_i_17 
       (.I0(counter[4]),
        .I1(Q[4]),
        .I2(counter[5]),
        .I3(counter[16]),
        .I4(counter[15]),
        .I5(Q[3]),
        .O(\seg[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFF0FBFB)) 
    \seg[3]_i_18 
       (.I0(counter[16]),
        .I1(counter[15]),
        .I2(Q[4]),
        .I3(counter[5]),
        .I4(Q[3]),
        .O(\seg[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \seg[3]_i_19 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(Q[3]),
        .O(\seg[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h40554000FFFFFFFF)) 
    \seg[3]_i_2 
       (.I0(Q[2]),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(\sel_seg[3]_i_10_n_0 ),
        .I4(\seg[3]_i_7_n_0 ),
        .I5(Q[1]),
        .O(\seg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000F404F4040)) 
    \seg[3]_i_20 
       (.I0(counter[16]),
        .I1(counter[15]),
        .I2(Q[4]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(Q[3]),
        .O(\seg[3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h76)) 
    \seg[3]_i_21 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(Q[3]),
        .O(\seg[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FD5D)) 
    \seg[3]_i_3 
       (.I0(\seg[3]_i_8_n_0 ),
        .I1(\seg[3]_i_9_n_0 ),
        .I2(Q[7]),
        .I3(\seg[3]_i_10_n_0 ),
        .I4(Q[8]),
        .I5(\seg[3]_i_11_n_0 ),
        .O(\seg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000A0A0B08)) 
    \seg[3]_i_4 
       (.I0(counter[3]),
        .I1(\seg[6]_i_16_n_0 ),
        .I2(counter[16]),
        .I3(counter[15]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\seg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2A2AEA2A)) 
    \seg[3]_i_5 
       (.I0(\seg[5]_i_19_n_0 ),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(Q[8]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\seg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E2FFFFFFFF)) 
    \seg[3]_i_6 
       (.I0(\seg[3]_i_12_n_0 ),
        .I1(Q[6]),
        .I2(\seg[3]_i_13_n_0 ),
        .I3(Q[7]),
        .I4(\seg[3]_i_14_n_0 ),
        .I5(\seg[6]_i_9_n_0 ),
        .O(\seg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000C3FE020232)) 
    \seg[3]_i_7 
       (.I0(counter[16]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(counter[4]),
        .I4(counter[5]),
        .I5(Q[5]),
        .O(\seg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEE2E222EFFFFFFFF)) 
    \seg[3]_i_8 
       (.I0(\seg[3]_i_15_n_0 ),
        .I1(Q[5]),
        .I2(\seg[1]_i_13_n_0 ),
        .I3(Q[4]),
        .I4(\seg[3]_i_16_n_0 ),
        .I5(\seg[5]_i_15_n_0 ),
        .O(\seg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2020232023232323)) 
    \seg[3]_i_9 
       (.I0(\seg[3]_i_17_n_0 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(sel_seg[2]),
        .I5(\seg[3]_i_18_n_0 ),
        .O(\seg[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \seg[4]_i_1 
       (.I0(\seg[6]_i_5_n_0 ),
        .I1(\seg[4]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\seg[4]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\seg[4]_i_4_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFEEFBEF)) 
    \seg[4]_i_10 
       (.I0(\seg[2]_i_11_n_0 ),
        .I1(counter[5]),
        .I2(Q[5]),
        .I3(counter[4]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\seg[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3232323222222277)) 
    \seg[4]_i_11 
       (.I0(\seg[4]_i_22_n_0 ),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(counter[15]),
        .I4(counter[16]),
        .I5(Q[3]),
        .O(\seg[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1454FFFFFFFF)) 
    \seg[4]_i_12 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(counter[5]),
        .I3(Q[4]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(\seg[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000D000C000D00)) 
    \seg[4]_i_13 
       (.I0(sel_seg[1]),
        .I1(\seg[4]_i_23_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\seg[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBBBBBBBF)) 
    \seg[4]_i_14 
       (.I0(counter[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\seg[6]_i_16_n_0 ),
        .I4(counter[4]),
        .O(\seg[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h40004F0F4FFF40FF)) 
    \seg[4]_i_15 
       (.I0(counter[16]),
        .I1(counter[15]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(\seg[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7A2F7FFFFFFFF)) 
    \seg[4]_i_16 
       (.I0(Q[3]),
        .I1(counter[15]),
        .I2(counter[16]),
        .I3(counter[4]),
        .I4(counter[5]),
        .I5(Q[4]),
        .O(\seg[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0051)) 
    \seg[4]_i_17 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(counter[4]),
        .I3(counter[5]),
        .O(\seg[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0AFFA0FFFBBBB)) 
    \seg[4]_i_18 
       (.I0(Q[5]),
        .I1(counter[16]),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\seg[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h06060606F6F6F606)) 
    \seg[4]_i_19 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(Q[3]),
        .I3(counter[14]),
        .I4(counter[15]),
        .I5(counter[16]),
        .O(\seg[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8AAAAAAA8)) 
    \seg[4]_i_2 
       (.I0(\seg[2]_i_5_n_0 ),
        .I1(\seg[4]_i_5_n_0 ),
        .I2(\seg[4]_i_6_n_0 ),
        .I3(\seg[4]_i_7_n_0 ),
        .I4(\seg[4]_i_8_n_0 ),
        .I5(\seg[4]_i_9_n_0 ),
        .O(\seg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAB00)) 
    \seg[4]_i_20 
       (.I0(counter[16]),
        .I1(counter[15]),
        .I2(counter[14]),
        .I3(Q[3]),
        .O(\seg[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFAABBBFBFAABBAA)) 
    \seg[4]_i_21 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(Q[3]),
        .O(\seg[4]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg[4]_i_22 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\seg[4]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg[4]_i_23 
       (.I0(counter[4]),
        .I1(Q[3]),
        .O(\seg[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0011001100000010)) 
    \seg[4]_i_3 
       (.I0(\sel_seg[3]_i_10_n_0 ),
        .I1(counter[5]),
        .I2(Q[5]),
        .I3(counter[4]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\seg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF5D0000FFFFFFFF)) 
    \seg[4]_i_4 
       (.I0(\seg[4]_i_10_n_0 ),
        .I1(\seg[4]_i_11_n_0 ),
        .I2(\seg[4]_i_12_n_0 ),
        .I3(\seg[4]_i_13_n_0 ),
        .I4(\seg[6]_i_9_n_0 ),
        .I5(\seg[4]_i_14_n_0 ),
        .O(\seg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004000444040004)) 
    \seg[4]_i_5 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\seg[4]_i_15_n_0 ),
        .I3(Q[5]),
        .I4(\seg[4]_i_16_n_0 ),
        .I5(\seg[4]_i_17_n_0 ),
        .O(\seg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111131)) 
    \seg[4]_i_6 
       (.I0(\seg[4]_i_18_n_0 ),
        .I1(\seg[2]_i_11_n_0 ),
        .I2(Q[5]),
        .I3(\seg[4]_i_19_n_0 ),
        .I4(Q[4]),
        .I5(Q[8]),
        .O(\seg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA08A008FFFFFFFF)) 
    \seg[4]_i_7 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(counter[4]),
        .I3(counter[5]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\seg[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EF4444E5)) 
    \seg[4]_i_8 
       (.I0(Q[4]),
        .I1(\seg[4]_i_20_n_0 ),
        .I2(Q[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(Q[5]),
        .O(\seg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h40455555FFFFFFFF)) 
    \seg[4]_i_9 
       (.I0(\seg[4]_i_21_n_0 ),
        .I1(\seg[1]_i_13_n_0 ),
        .I2(Q[3]),
        .I3(counter[16]),
        .I4(\seg[5]_i_21_n_0 ),
        .I5(Q[7]),
        .O(\seg[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888AFFFF888A0000)) 
    \seg[5]_i_1 
       (.I0(\seg[5]_i_2_n_0 ),
        .I1(\seg[5]_i_3_n_0 ),
        .I2(\seg[5]_i_4_n_0 ),
        .I3(\seg[5]_i_5_n_0 ),
        .I4(Q[1]),
        .I5(\seg[5]_i_6_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hBABABABABABABAAA)) 
    \seg[5]_i_10 
       (.I0(Q[2]),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(Q[8]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\seg[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D0000000D00)) 
    \seg[5]_i_11 
       (.I0(\seg[6]_i_21_n_0 ),
        .I1(\seg[5]_i_20_n_0 ),
        .I2(Q[7]),
        .I3(\seg[5]_i_8_n_0 ),
        .I4(\seg[5]_i_21_n_0 ),
        .I5(\seg[6]_i_20_n_0 ),
        .O(\seg[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0222AAAAAAAA)) 
    \seg[5]_i_12 
       (.I0(Q[7]),
        .I1(counter[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(counter[4]),
        .I5(Q[5]),
        .O(\seg[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FC55)) 
    \seg[5]_i_13 
       (.I0(\seg[5]_i_22_n_0 ),
        .I1(\seg[5]_i_23_n_0 ),
        .I2(\seg[5]_i_24_n_0 ),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(\seg[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEBAA)) 
    \seg[5]_i_14 
       (.I0(Q[2]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(Q[8]),
        .O(\seg[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg[5]_i_15 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\seg[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3C3A3A113C3A3ABB)) 
    \seg[5]_i_16 
       (.I0(Q[5]),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(counter[16]),
        .O(\seg[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44444744)) 
    \seg[5]_i_17 
       (.I0(\seg[5]_i_25_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\seg[0]_i_9_n_0 ),
        .I5(Q[8]),
        .O(\seg[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F4)) 
    \seg[5]_i_18 
       (.I0(counter[5]),
        .I1(Q[4]),
        .I2(\seg[5]_i_26_n_0 ),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\seg[5]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \seg[5]_i_19 
       (.I0(Q[2]),
        .I1(\seg[6]_i_16_n_0 ),
        .I2(Q[3]),
        .I3(counter[4]),
        .I4(counter[5]),
        .O(\seg[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000404)) 
    \seg[5]_i_2 
       (.I0(\seg[5]_i_7_n_0 ),
        .I1(\seg[5]_i_8_n_0 ),
        .I2(\sel_seg[3]_i_10_n_0 ),
        .I3(\seg[5]_i_9_n_0 ),
        .I4(Q[5]),
        .I5(\seg[5]_i_10_n_0 ),
        .O(\seg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg[5]_i_20 
       (.I0(counter[5]),
        .I1(Q[3]),
        .O(\seg[5]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \seg[5]_i_21 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\seg[5]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFF2B)) 
    \seg[5]_i_22 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .O(\seg[5]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h13031300)) 
    \seg[5]_i_23 
       (.I0(Q[5]),
        .I1(counter[4]),
        .I2(Q[4]),
        .I3(counter[5]),
        .I4(Q[3]),
        .O(\seg[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000800888)) 
    \seg[5]_i_24 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(counter[4]),
        .I4(counter[16]),
        .I5(counter[15]),
        .O(\seg[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA55555455)) 
    \seg[5]_i_25 
       (.I0(counter[5]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(counter[4]),
        .O(\seg[5]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0040004000401151)) 
    \seg[5]_i_26 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(counter[15]),
        .I3(counter[16]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(\seg[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFEFFFFFFFF)) 
    \seg[5]_i_3 
       (.I0(\seg[6]_i_16_n_0 ),
        .I1(counter[15]),
        .I2(counter[16]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\seg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFBFBBB)) 
    \seg[5]_i_4 
       (.I0(\seg[5]_i_11_n_0 ),
        .I1(Q[6]),
        .I2(\seg[5]_i_12_n_0 ),
        .I3(\seg[6]_i_15_n_0 ),
        .I4(Q[5]),
        .I5(\seg[5]_i_13_n_0 ),
        .O(\seg[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \seg[5]_i_5 
       (.I0(counter[4]),
        .I1(Q[8]),
        .I2(Q[0]),
        .O(\seg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
    \seg[5]_i_6 
       (.I0(\seg[5]_i_14_n_0 ),
        .I1(\seg[5]_i_15_n_0 ),
        .I2(\seg[5]_i_16_n_0 ),
        .I3(\seg[5]_i_17_n_0 ),
        .I4(\seg[5]_i_18_n_0 ),
        .I5(\seg[5]_i_19_n_0 ),
        .O(\seg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00FB51)) 
    \seg[5]_i_7 
       (.I0(Q[3]),
        .I1(counter[15]),
        .I2(counter[16]),
        .I3(counter[5]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\seg[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \seg[5]_i_8 
       (.I0(Q[4]),
        .I1(counter[4]),
        .I2(Q[5]),
        .O(\seg[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5455)) 
    \seg[5]_i_9 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\seg[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABAABBBB)) 
    \seg[6]_i_1 
       (.I0(\seg[6]_i_2_n_0 ),
        .I1(\seg[6]_i_3_n_0 ),
        .I2(\seg[6]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\seg[6]_i_5_n_0 ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h22222000)) 
    \seg[6]_i_10 
       (.I0(Q[5]),
        .I1(counter[4]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(counter[5]),
        .O(\seg[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0FEE22)) 
    \seg[6]_i_11 
       (.I0(\sel_seg[3]_i_13_n_0 ),
        .I1(Q[3]),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\seg[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000F7A2FFFFFFFF)) 
    \seg[6]_i_12 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\seg[6]_i_20_n_0 ),
        .I3(sel_seg[1]),
        .I4(\seg[6]_i_21_n_0 ),
        .I5(\seg[5]_i_15_n_0 ),
        .O(\seg[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0D0D00000D0D)) 
    \seg[6]_i_13 
       (.I0(\seg[6]_i_22_n_0 ),
        .I1(\seg[6]_i_23_n_0 ),
        .I2(Q[6]),
        .I3(\seg[6]_i_24_n_0 ),
        .I4(Q[7]),
        .I5(\seg[6]_i_25_n_0 ),
        .O(\seg[6]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \seg[6]_i_14 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(\seg[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hDDCF888ADDCFDDCF)) 
    \seg[6]_i_15 
       (.I0(Q[4]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(Q[3]),
        .I4(\seg[6]_i_26_n_0 ),
        .I5(counter[14]),
        .O(\seg[6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \seg[6]_i_16 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\seg[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000EFFFEFFFE)) 
    \seg[6]_i_17 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(\seg[6]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF14)) 
    \seg[6]_i_18 
       (.I0(counter[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(counter[4]),
        .O(\seg[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFD0CFCFCFCF)) 
    \seg[6]_i_19 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(Q[4]),
        .I3(counter[16]),
        .I4(counter[15]),
        .I5(Q[3]),
        .O(\seg[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h4445554544444444)) 
    \seg[6]_i_2 
       (.I0(Q[1]),
        .I1(\seg[6]_i_6_n_0 ),
        .I2(\seg[6]_i_7_n_0 ),
        .I3(Q[7]),
        .I4(\seg[6]_i_8_n_0 ),
        .I5(\seg[6]_i_9_n_0 ),
        .O(\seg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0BBBBFFFFBBBB)) 
    \seg[6]_i_20 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[16]),
        .I3(counter[15]),
        .I4(Q[3]),
        .I5(counter[14]),
        .O(\seg[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400044404)) 
    \seg[6]_i_21 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(counter[4]),
        .I3(Q[3]),
        .I4(counter[16]),
        .I5(counter[15]),
        .O(\seg[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDDD8)) 
    \seg[6]_i_22 
       (.I0(Q[3]),
        .I1(counter[4]),
        .I2(counter[16]),
        .I3(counter[15]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\seg[6]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \seg[6]_i_23 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(counter[4]),
        .I3(counter[5]),
        .O(\seg[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAA8AAA8AAAAA)) 
    \seg[6]_i_24 
       (.I0(Q[6]),
        .I1(counter[5]),
        .I2(Q[4]),
        .I3(counter[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\seg[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000C003E)) 
    \seg[6]_i_25 
       (.I0(Q[3]),
        .I1(counter[5]),
        .I2(Q[5]),
        .I3(counter[4]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\seg[6]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \seg[6]_i_26 
       (.I0(counter[16]),
        .I1(counter[15]),
        .I2(Q[3]),
        .O(\seg[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00008B88FFFFFFFF)) 
    \seg[6]_i_3 
       (.I0(sel_seg[1]),
        .I1(\sel_seg[3]_i_10_n_0 ),
        .I2(\seg[6]_i_10_n_0 ),
        .I3(\seg[6]_i_11_n_0 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\seg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88B888B8888888B8)) 
    \seg[6]_i_4 
       (.I0(sel_seg[0]),
        .I1(Q[8]),
        .I2(\seg[6]_i_12_n_0 ),
        .I3(\seg[6]_i_13_n_0 ),
        .I4(\seg[6]_i_14_n_0 ),
        .I5(\seg[6]_i_15_n_0 ),
        .O(\seg[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \seg[6]_i_5 
       (.I0(counter[16]),
        .I1(\seg[6]_i_16_n_0 ),
        .I2(Q[3]),
        .I3(counter[4]),
        .I4(Q[0]),
        .O(\seg[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00BA)) 
    \seg[6]_i_6 
       (.I0(Q[2]),
        .I1(counter[4]),
        .I2(Q[8]),
        .I3(counter[5]),
        .O(\seg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[6]_i_7 
       (.I0(\seg[6]_i_17_n_0 ),
        .I1(\seg[6]_i_18_n_0 ),
        .I2(Q[6]),
        .I3(sel_seg[1]),
        .I4(Q[5]),
        .I5(\seg[6]_i_19_n_0 ),
        .O(\seg[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEA0511)) 
    \seg[6]_i_8 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(\seg[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg[6]_i_9 
       (.I0(Q[8]),
        .I1(Q[2]),
        .O(\seg[6]_i_9_n_0 ));
  FDPE \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(p_1_in[0]),
        .PRE(SR),
        .Q(SEG[0]));
  FDPE \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(p_1_in[1]),
        .PRE(SR),
        .Q(SEG[1]));
  FDPE \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(p_1_in[2]),
        .PRE(SR),
        .Q(SEG[2]));
  MUXF7 \seg_reg[2]_i_13 
       (.I0(\seg[2]_i_19_n_0 ),
        .I1(\seg[2]_i_20_n_0 ),
        .O(\seg_reg[2]_i_13_n_0 ),
        .S(Q[6]));
  MUXF7 \seg_reg[2]_i_14 
       (.I0(\seg[2]_i_21_n_0 ),
        .I1(\seg[2]_i_22_n_0 ),
        .O(\seg_reg[2]_i_14_n_0 ),
        .S(Q[6]));
  MUXF8 \seg_reg[2]_i_4 
       (.I0(\seg_reg[2]_i_13_n_0 ),
        .I1(\seg_reg[2]_i_14_n_0 ),
        .O(\seg_reg[2]_i_4_n_0 ),
        .S(Q[7]));
  FDPE \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(p_1_in[3]),
        .PRE(SR),
        .Q(SEG[3]));
  FDPE \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(p_1_in[4]),
        .PRE(SR),
        .Q(SEG[4]));
  FDPE \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(p_1_in[5]),
        .PRE(SR),
        .Q(SEG[5]));
  FDPE \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(p_1_in[6]),
        .PRE(SR),
        .Q(SEG[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sel_seg[0]_i_1 
       (.I0(counter[5]),
        .I1(counter[4]),
        .O(sel_seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sel_seg[1]_i_1 
       (.I0(counter[4]),
        .I1(counter[5]),
        .O(sel_seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sel_seg[2]_i_1 
       (.I0(counter[5]),
        .I1(counter[4]),
        .O(sel_seg[2]));
  LUT6 #(
    .INIT(64'h0004000400040000)) 
    \sel_seg[3]_i_1 
       (.I0(\sel_seg[3]_i_4_n_0 ),
        .I1(\sel_seg[3]_i_5_n_0 ),
        .I2(\sel_seg[3]_i_6_n_0 ),
        .I3(\sel_seg[3]_i_7_n_0 ),
        .I4(Q[2]),
        .I5(\sel_seg[3]_i_8_n_0 ),
        .O(\sel_seg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sel_seg[3]_i_10 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(\sel_seg[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0D0FFF0FFF0F0)) 
    \sel_seg[3]_i_11 
       (.I0(counter[10]),
        .I1(counter[9]),
        .I2(counter[7]),
        .I3(\sel_seg[3]_i_13_n_0 ),
        .I4(counter[14]),
        .I5(counter[13]),
        .O(\sel_seg[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \sel_seg[3]_i_12 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[8]),
        .I3(counter[14]),
        .I4(\sel_seg[3]_i_14_n_0 ),
        .I5(\sel_seg[3]_i_15_n_0 ),
        .O(\sel_seg[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sel_seg[3]_i_13 
       (.I0(counter[15]),
        .I1(counter[16]),
        .O(\sel_seg[3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sel_seg[3]_i_14 
       (.I0(counter[12]),
        .I1(counter[11]),
        .I2(counter[2]),
        .O(\sel_seg[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD0FFD0D0D0D0)) 
    \sel_seg[3]_i_15 
       (.I0(counter[7]),
        .I1(counter[8]),
        .I2(counter[10]),
        .I3(counter[13]),
        .I4(counter[14]),
        .I5(counter[16]),
        .O(\sel_seg[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sel_seg[3]_i_2 
       (.I0(counter[4]),
        .I1(counter[5]),
        .O(sel_seg[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \sel_seg[3]_i_3 
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF50545554)) 
    \sel_seg[3]_i_4 
       (.I0(counter[7]),
        .I1(counter[8]),
        .I2(counter[13]),
        .I3(counter[9]),
        .I4(counter[14]),
        .I5(\sel_seg[3]_i_9_n_0 ),
        .O(\sel_seg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF010101FFFFFFFF)) 
    \sel_seg[3]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\sel_seg[3]_i_10_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\sel_seg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFD500)) 
    \sel_seg[3]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[8]),
        .I4(\sel_seg[3]_i_11_n_0 ),
        .O(\sel_seg[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF9FF6)) 
    \sel_seg[3]_i_7 
       (.I0(counter[8]),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(counter[4]),
        .I4(\sel_seg[3]_i_12_n_0 ),
        .O(\sel_seg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h071717170717171F)) 
    \sel_seg[3]_i_8 
       (.I0(Q[1]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\sel_seg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8AFFFFFFFFFFFF8A)) 
    \sel_seg[3]_i_9 
       (.I0(counter[15]),
        .I1(counter[13]),
        .I2(counter[14]),
        .I3(counter[3]),
        .I4(counter[7]),
        .I5(counter[5]),
        .O(\sel_seg[3]_i_9_n_0 ));
  FDPE \sel_seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(sel_seg[0]),
        .PRE(SR),
        .Q(SEL_SEG[0]));
  FDPE \sel_seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(sel_seg[1]),
        .PRE(SR),
        .Q(SEL_SEG[1]));
  FDPE \sel_seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(sel_seg[2]),
        .PRE(SR),
        .Q(SEL_SEG[2]));
  FDPE \sel_seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\sel_seg[3]_i_1_n_0 ),
        .D(sel_seg[3]),
        .PRE(SR),
        .Q(SEL_SEG[3]));
endmodule

(* ORIG_REF_NAME = "SS_v1_0" *) 
module DCC_SS_0_0_SS_v1_0
   (S_AXI_AWREADY,
    SEL_SEG,
    SEG,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output [3:0]SEL_SEG;
  output [6:0]SEG;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [6:0]SEG;
  wire [3:0]SEL_SEG;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  DCC_SS_0_0_SS_v1_0_S00_AXI SS_v1_0_S00_AXI_inst
       (.SEG(SEG),
        .SEL_SEG(SEL_SEG),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "SS_v1_0_S00_AXI" *) 
module DCC_SS_0_0_SS_v1_0_S00_AXI
   (S_AXI_AWREADY,
    SEL_SEG,
    SEG,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output [3:0]SEL_SEG;
  output [6:0]SEG;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [6:0]SEG;
  wire [3:0]SEL_SEG;
  wire S_AXI_ARESET;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]led_index;
  wire [5:0]led_setting;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  DCC_SS_0_0_SEPT_SEGMENTS L0
       (.Q({led_setting,led_index,\slv_reg3_reg_n_0_[0] }),
        .SEG(SEG),
        .SEL_SEG(SEL_SEG),
        .SR(S_AXI_ARESET),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(S_AXI_ARESET));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(S_AXI_ARESET));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(S_AXI_ARESET));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(S_AXI_ARESET));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(S_AXI_ARESET));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(S_AXI_ARESET));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(\slv_reg3_reg_n_0_[0] ),
        .I2(slv_reg0[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg2[10]),
        .I2(slv_reg0[10]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg3_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg2[11]),
        .I2(slv_reg0[11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg3_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(\slv_reg3_reg_n_0_[12] ),
        .I2(slv_reg0[12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(slv_reg1[13]),
        .I2(slv_reg2[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg3_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(\slv_reg3_reg_n_0_[14] ),
        .I2(slv_reg0[14]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg0[15]),
        .I1(slv_reg1[15]),
        .I2(\slv_reg3_reg_n_0_[15] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(\slv_reg3_reg_n_0_[16] ),
        .I2(slv_reg0[16]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(\slv_reg3_reg_n_0_[17] ),
        .I2(slv_reg0[17]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg2[18]),
        .I2(slv_reg0[18]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg3_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg2[19]),
        .I2(slv_reg0[19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg3_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg0[1]),
        .I1(slv_reg1[1]),
        .I2(led_index[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(\slv_reg3_reg_n_0_[20] ),
        .I2(slv_reg0[20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(slv_reg1[21]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg3_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(\slv_reg3_reg_n_0_[22] ),
        .I2(slv_reg0[22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg0[23]),
        .I1(slv_reg1[23]),
        .I2(\slv_reg3_reg_n_0_[23] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(\slv_reg3_reg_n_0_[24] ),
        .I2(slv_reg0[24]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(\slv_reg3_reg_n_0_[25] ),
        .I2(slv_reg0[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg2[26]),
        .I2(slv_reg0[26]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg3_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg2[27]),
        .I2(slv_reg0[27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg3_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(\slv_reg3_reg_n_0_[28] ),
        .I2(slv_reg0[28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(slv_reg1[29]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg3_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg0[2]),
        .I1(slv_reg1[2]),
        .I2(led_index[1]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(\slv_reg3_reg_n_0_[30] ),
        .I2(slv_reg0[30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg0[31]),
        .I1(slv_reg1[31]),
        .I2(\slv_reg3_reg_n_0_[31] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg2[3]),
        .I2(slv_reg0[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(led_setting[0]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg2[4]),
        .I2(slv_reg0[4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(led_setting[1]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(led_setting[2]),
        .I2(slv_reg0[5]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg0[6]),
        .I1(slv_reg1[6]),
        .I2(led_setting[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(led_setting[4]),
        .I2(slv_reg0[7]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(led_setting[5]),
        .I2(slv_reg0[8]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(\slv_reg3_reg_n_0_[9] ),
        .I2(slv_reg0[9]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(S_AXI_ARESET));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(S_AXI_ARESET));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(S_AXI_ARESET));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(S_AXI_ARESET));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(led_index[0]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(led_index[1]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(led_setting[0]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(led_setting[1]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(led_setting[2]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(led_setting[3]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(led_setting[4]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(led_setting[5]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(S_AXI_ARESET));
endmodule
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
