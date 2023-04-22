// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 11 15:01:56 2023
// Host        : SE221-05 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Project_FPGA_IP_Centrale_DCC_0_0_sim_netlist.v
// Design      : Project_FPGA_IP_Centrale_DCC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CLK_DIV
   (Clk_Temp,
    s00_axi_aclk,
    AS);
  output Clk_Temp;
  input s00_axi_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire Clk_Temp;
  wire Clk_Temp__0_n_0;
  wire Clk_Temp_i_1_n_0;
  wire [5:0]Div;
  wire \Div[0]_i_1_n_0 ;
  wire [5:1]Div_0;
  wire s00_axi_aclk;

  LUT2 #(
    .INIT(4'h1)) 
    Clk_Temp__0
       (.I0(Div[1]),
        .I1(Div[2]),
        .O(Clk_Temp__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    Clk_Temp_i_1
       (.I0(Div[5]),
        .I1(Div[0]),
        .I2(Div[4]),
        .I3(Clk_Temp__0_n_0),
        .I4(Div[3]),
        .I5(Clk_Temp),
        .O(Clk_Temp_i_1_n_0));
  FDCE Clk_Temp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Clk_Temp_i_1_n_0),
        .Q(Clk_Temp));
  LUT1 #(
    .INIT(2'h1)) 
    \Div[0]_i_1 
       (.I0(Div[0]),
        .O(\Div[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55A855AA55AA55AA)) 
    \Div[1]_i_1 
       (.I0(Div[0]),
        .I1(Div[3]),
        .I2(Div[2]),
        .I3(Div[1]),
        .I4(Div[4]),
        .I5(Div[5]),
        .O(Div_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \Div[2]_i_1 
       (.I0(Div[0]),
        .I1(Div[2]),
        .I2(Div[1]),
        .O(Div_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \Div[3]_i_1 
       (.I0(Div[0]),
        .I1(Div[3]),
        .I2(Div[2]),
        .I3(Div[1]),
        .O(Div_0[3]));
  LUT6 #(
    .INIT(64'h7FFD80007FFF8000)) 
    \Div[4]_i_1 
       (.I0(Div[0]),
        .I1(Div[3]),
        .I2(Div[2]),
        .I3(Div[1]),
        .I4(Div[4]),
        .I5(Div[5]),
        .O(Div_0[4]));
  LUT6 #(
    .INIT(64'h7FFDFFFF80000000)) 
    \Div[5]_i_1 
       (.I0(Div[0]),
        .I1(Div[3]),
        .I2(Div[2]),
        .I3(Div[1]),
        .I4(Div[4]),
        .I5(Div[5]),
        .O(Div_0[5]));
  FDCE \Div_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\Div[0]_i_1_n_0 ),
        .Q(Div[0]));
  FDCE \Div_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Div_0[1]),
        .Q(Div[1]));
  FDCE \Div_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Div_0[2]),
        .Q(Div[2]));
  FDCE \Div_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Div_0[3]),
        .Q(Div[3]));
  FDCE \Div_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Div_0[4]),
        .Q(Div[4]));
  FDCE \Div_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Div_0[5]),
        .Q(Div[5]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_COMPTEUR_TEMPO
   (Q,
    D,
    Clk_Temp,
    Reset_Tempo_s,
    \FSM_onehot_EP_reg[0] ,
    s00_axi_aclk);
  output [1:0]Q;
  output [0:0]D;
  input Clk_Temp;
  input Reset_Tempo_s;
  input [1:0]\FSM_onehot_EP_reg[0] ;
  input s00_axi_aclk;

  wire Clk_Temp;
  wire \Cpt[0]_i_1_n_0 ;
  wire \Cpt[0]_i_3_n_0 ;
  wire \Cpt[0]_i_4_n_0 ;
  wire \Cpt[0]_i_5_n_0 ;
  wire \Cpt[0]_i_6_n_0 ;
  wire \Cpt[0]_i_7_n_0 ;
  wire \Cpt[12]_i_2_n_0 ;
  wire \Cpt[12]_i_3_n_0 ;
  wire \Cpt[4]_i_2_n_0 ;
  wire \Cpt[4]_i_3_n_0 ;
  wire \Cpt[4]_i_4_n_0 ;
  wire \Cpt[4]_i_5_n_0 ;
  wire \Cpt[8]_i_2_n_0 ;
  wire \Cpt[8]_i_3_n_0 ;
  wire \Cpt[8]_i_4_n_0 ;
  wire \Cpt[8]_i_5_n_0 ;
  wire [13:0]Cpt_reg;
  wire \Cpt_reg[0]_i_2_n_0 ;
  wire \Cpt_reg[0]_i_2_n_1 ;
  wire \Cpt_reg[0]_i_2_n_2 ;
  wire \Cpt_reg[0]_i_2_n_3 ;
  wire \Cpt_reg[0]_i_2_n_4 ;
  wire \Cpt_reg[0]_i_2_n_5 ;
  wire \Cpt_reg[0]_i_2_n_6 ;
  wire \Cpt_reg[0]_i_2_n_7 ;
  wire \Cpt_reg[12]_i_1_n_3 ;
  wire \Cpt_reg[12]_i_1_n_6 ;
  wire \Cpt_reg[12]_i_1_n_7 ;
  wire \Cpt_reg[4]_i_1_n_0 ;
  wire \Cpt_reg[4]_i_1_n_1 ;
  wire \Cpt_reg[4]_i_1_n_2 ;
  wire \Cpt_reg[4]_i_1_n_3 ;
  wire \Cpt_reg[4]_i_1_n_4 ;
  wire \Cpt_reg[4]_i_1_n_5 ;
  wire \Cpt_reg[4]_i_1_n_6 ;
  wire \Cpt_reg[4]_i_1_n_7 ;
  wire \Cpt_reg[8]_i_1_n_0 ;
  wire \Cpt_reg[8]_i_1_n_1 ;
  wire \Cpt_reg[8]_i_1_n_2 ;
  wire \Cpt_reg[8]_i_1_n_3 ;
  wire \Cpt_reg[8]_i_1_n_4 ;
  wire \Cpt_reg[8]_i_1_n_5 ;
  wire \Cpt_reg[8]_i_1_n_6 ;
  wire \Cpt_reg[8]_i_1_n_7 ;
  wire [0:0]D;
  wire [1:0]\FSM_onehot_EP_reg[0] ;
  wire [1:0]Q;
  wire \Q[1]_i_3_n_0 ;
  wire \Q[1]_i_4_n_0 ;
  wire \Q[1]_i_5_n_0 ;
  wire \Q[1]_i_6_n_0 ;
  wire Reset_Tempo_s;
  wire [1:0]p_1_out;
  wire s00_axi_aclk;
  wire [3:1]\NLW_Cpt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Cpt_reg[12]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hD)) 
    \Cpt[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\Cpt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[0]_i_3 
       (.I0(Cpt_reg[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[0]_i_4 
       (.I0(Cpt_reg[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[0]_i_5 
       (.I0(Cpt_reg[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[0]_i_6 
       (.I0(Cpt_reg[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \Cpt[0]_i_7 
       (.I0(Cpt_reg[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[12]_i_2 
       (.I0(Cpt_reg[13]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[12]_i_3 
       (.I0(Cpt_reg[12]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[4]_i_2 
       (.I0(Cpt_reg[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[4]_i_3 
       (.I0(Cpt_reg[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[4]_i_4 
       (.I0(Cpt_reg[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[4]_i_5 
       (.I0(Cpt_reg[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[8]_i_2 
       (.I0(Cpt_reg[11]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[8]_i_3 
       (.I0(Cpt_reg[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[8]_i_4 
       (.I0(Cpt_reg[9]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Cpt[8]_i_5 
       (.I0(Cpt_reg[8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\Cpt[8]_i_5_n_0 ));
  FDCE \Cpt_reg[0] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[0]_i_2_n_7 ),
        .Q(Cpt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Cpt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Cpt_reg[0]_i_2_n_0 ,\Cpt_reg[0]_i_2_n_1 ,\Cpt_reg[0]_i_2_n_2 ,\Cpt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\Cpt[0]_i_3_n_0 }),
        .O({\Cpt_reg[0]_i_2_n_4 ,\Cpt_reg[0]_i_2_n_5 ,\Cpt_reg[0]_i_2_n_6 ,\Cpt_reg[0]_i_2_n_7 }),
        .S({\Cpt[0]_i_4_n_0 ,\Cpt[0]_i_5_n_0 ,\Cpt[0]_i_6_n_0 ,\Cpt[0]_i_7_n_0 }));
  FDCE \Cpt_reg[10] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[8]_i_1_n_5 ),
        .Q(Cpt_reg[10]));
  FDCE \Cpt_reg[11] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[8]_i_1_n_4 ),
        .Q(Cpt_reg[11]));
  FDCE \Cpt_reg[12] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[12]_i_1_n_7 ),
        .Q(Cpt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Cpt_reg[12]_i_1 
       (.CI(\Cpt_reg[8]_i_1_n_0 ),
        .CO({\NLW_Cpt_reg[12]_i_1_CO_UNCONNECTED [3:1],\Cpt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Cpt_reg[12]_i_1_O_UNCONNECTED [3:2],\Cpt_reg[12]_i_1_n_6 ,\Cpt_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\Cpt[12]_i_2_n_0 ,\Cpt[12]_i_3_n_0 }));
  FDCE \Cpt_reg[13] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[12]_i_1_n_6 ),
        .Q(Cpt_reg[13]));
  FDCE \Cpt_reg[1] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[0]_i_2_n_6 ),
        .Q(Cpt_reg[1]));
  FDCE \Cpt_reg[2] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[0]_i_2_n_5 ),
        .Q(Cpt_reg[2]));
  FDCE \Cpt_reg[3] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[0]_i_2_n_4 ),
        .Q(Cpt_reg[3]));
  FDCE \Cpt_reg[4] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[4]_i_1_n_7 ),
        .Q(Cpt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Cpt_reg[4]_i_1 
       (.CI(\Cpt_reg[0]_i_2_n_0 ),
        .CO({\Cpt_reg[4]_i_1_n_0 ,\Cpt_reg[4]_i_1_n_1 ,\Cpt_reg[4]_i_1_n_2 ,\Cpt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Cpt_reg[4]_i_1_n_4 ,\Cpt_reg[4]_i_1_n_5 ,\Cpt_reg[4]_i_1_n_6 ,\Cpt_reg[4]_i_1_n_7 }),
        .S({\Cpt[4]_i_2_n_0 ,\Cpt[4]_i_3_n_0 ,\Cpt[4]_i_4_n_0 ,\Cpt[4]_i_5_n_0 }));
  FDCE \Cpt_reg[5] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[4]_i_1_n_6 ),
        .Q(Cpt_reg[5]));
  FDCE \Cpt_reg[6] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[4]_i_1_n_5 ),
        .Q(Cpt_reg[6]));
  FDCE \Cpt_reg[7] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[4]_i_1_n_4 ),
        .Q(Cpt_reg[7]));
  FDCE \Cpt_reg[8] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[8]_i_1_n_7 ),
        .Q(Cpt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Cpt_reg[8]_i_1 
       (.CI(\Cpt_reg[4]_i_1_n_0 ),
        .CO({\Cpt_reg[8]_i_1_n_0 ,\Cpt_reg[8]_i_1_n_1 ,\Cpt_reg[8]_i_1_n_2 ,\Cpt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Cpt_reg[8]_i_1_n_4 ,\Cpt_reg[8]_i_1_n_5 ,\Cpt_reg[8]_i_1_n_6 ,\Cpt_reg[8]_i_1_n_7 }),
        .S({\Cpt[8]_i_2_n_0 ,\Cpt[8]_i_3_n_0 ,\Cpt[8]_i_4_n_0 ,\Cpt[8]_i_5_n_0 }));
  FDCE \Cpt_reg[9] 
       (.C(Clk_Temp),
        .CE(\Cpt[0]_i_1_n_0 ),
        .CLR(Reset_Tempo_s),
        .D(\Cpt_reg[8]_i_1_n_6 ),
        .Q(Cpt_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_EP[0]_i_1 
       (.I0(\FSM_onehot_EP_reg[0] [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \Q[0]_i_1 
       (.I0(\FSM_onehot_EP_reg[0] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_1_out[0]));
  LUT6 #(
    .INIT(64'hFFFF000008000800)) 
    \Q[1]_i_1 
       (.I0(\Q[1]_i_3_n_0 ),
        .I1(Cpt_reg[12]),
        .I2(Cpt_reg[13]),
        .I3(Q[0]),
        .I4(\FSM_onehot_EP_reg[0] [0]),
        .I5(Q[1]),
        .O(p_1_out[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \Q[1]_i_3 
       (.I0(\Q[1]_i_4_n_0 ),
        .I1(Cpt_reg[6]),
        .I2(Cpt_reg[8]),
        .I3(Cpt_reg[7]),
        .I4(\Q[1]_i_5_n_0 ),
        .I5(\Q[1]_i_6_n_0 ),
        .O(\Q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \Q[1]_i_4 
       (.I0(Cpt_reg[0]),
        .I1(Cpt_reg[2]),
        .I2(Cpt_reg[1]),
        .I3(Cpt_reg[3]),
        .I4(Cpt_reg[5]),
        .I5(Cpt_reg[4]),
        .O(\Q[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Q[1]_i_5 
       (.I0(Cpt_reg[11]),
        .I1(Cpt_reg[10]),
        .I2(Cpt_reg[9]),
        .O(\Q[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[1]_i_6 
       (.I0(Cpt_reg[11]),
        .I1(Cpt_reg[10]),
        .O(\Q[1]_i_6_n_0 ));
  FDCE \Q_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Reset_Tempo_s),
        .D(p_1_out[0]),
        .Q(Q[0]));
  FDCE \Q_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Reset_Tempo_s),
        .D(p_1_out[1]),
        .Q(Q[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit0
   (Q,
    FIN_0_s,
    \FSM_onehot_EP_reg[1] ,
    s00_axi_aclk,
    AR,
    Clk_Temp);
  output [0:0]Q;
  output FIN_0_s;
  input [0:0]\FSM_onehot_EP_reg[1] ;
  input s00_axi_aclk;
  input [0:0]AR;
  input Clk_Temp;

  wire [0:0]AR;
  wire Clk_Temp;
  wire Cmd;
  wire FIN_0_s;
  wire [0:0]\FSM_onehot_EP_reg[1] ;
  wire Fin_Cpt_Low;
  wire [0:0]Q;
  wire Reset_Cpt_High;
  wire Reset_Cpt_Low;
  wire s00_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_1 Counter_High
       (.Clk_Temp(Clk_Temp),
        .FIN_0_s(FIN_0_s),
        .Q(Q),
        .Reset_Cpt_High(Reset_Cpt_High));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_2 Counter_Low
       (.Clk_Temp(Clk_Temp),
        .Fin_Cpt_Low(Fin_Cpt_Low),
        .Q(Cmd),
        .Reset_Cpt_Low(Reset_Cpt_Low));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE_3 MAE
       (.AR(AR),
        .FIN_0_s(FIN_0_s),
        .\FSM_onehot_EP_reg[1]_0 (\FSM_onehot_EP_reg[1] ),
        .Fin_Cpt_Low(Fin_Cpt_Low),
        .Q({Q,Cmd}),
        .Reset_Cpt_High(Reset_Cpt_High),
        .Reset_Cpt_Low(Reset_Cpt_Low),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit1
   (SORTIE_DCC,
    FIN_1_s,
    Q,
    \FSM_onehot_EP_reg[1] ,
    s00_axi_aclk,
    AR,
    Clk_Temp);
  output SORTIE_DCC;
  output FIN_1_s;
  input [0:0]Q;
  input [0:0]\FSM_onehot_EP_reg[1] ;
  input s00_axi_aclk;
  input [0:0]AR;
  input Clk_Temp;

  wire [0:0]AR;
  wire Clk_Temp;
  wire Cmd;
  wire DCC_1;
  wire FIN_1_s;
  wire [0:0]\FSM_onehot_EP_reg[1] ;
  wire Fin_Cpt_Low;
  wire [0:0]Q;
  wire Reset_Cpt_High;
  wire Reset_Cpt_Low;
  wire SORTIE_DCC;
  wire s00_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur Counter_High
       (.Clk_Temp(Clk_Temp),
        .FIN_1_s(FIN_1_s),
        .Q(DCC_1),
        .Reset_Cpt_High(Reset_Cpt_High));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_0 Counter_Low
       (.Clk_Temp(Clk_Temp),
        .Fin_Cpt_Low(Fin_Cpt_Low),
        .Q(Cmd),
        .Reset_Cpt_Low(Reset_Cpt_Low));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE MAE
       (.AR(AR),
        .FIN_1_s(FIN_1_s),
        .\FSM_onehot_EP_reg[1]_0 (\FSM_onehot_EP_reg[1] ),
        .Fin_Cpt_Low(Fin_Cpt_Low),
        .Q({DCC_1,Cmd}),
        .Reset_Cpt_High(Reset_Cpt_High),
        .Reset_Cpt_Low(Reset_Cpt_Low),
        .SORTIE_DCC(SORTIE_DCC),
        .SORTIE_DCC_0(Q),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur
   (FIN_1_s,
    Q,
    Clk_Temp,
    Reset_Cpt_High);
  output FIN_1_s;
  input [0:0]Q;
  input Clk_Temp;
  input Reset_Cpt_High;

  wire Clk_Temp;
  wire FIN_1_s;
  wire \FSM_onehot_EP[7]_i_11_n_0 ;
  wire \FSM_onehot_EP[7]_i_12_n_0 ;
  wire \FSM_onehot_EP[7]_i_13_n_0 ;
  wire \FSM_onehot_EP[7]_i_14_n_0 ;
  wire \FSM_onehot_EP[7]_i_15_n_0 ;
  wire \FSM_onehot_EP[7]_i_16_n_0 ;
  wire [0:0]Q;
  wire Reset_Cpt_High;
  wire \cpt[0]_i_3__2_n_0 ;
  wire [31:0]cpt_reg;
  wire \cpt_reg[0]_i_1__0_n_0 ;
  wire \cpt_reg[0]_i_1__0_n_1 ;
  wire \cpt_reg[0]_i_1__0_n_2 ;
  wire \cpt_reg[0]_i_1__0_n_3 ;
  wire \cpt_reg[0]_i_1__0_n_4 ;
  wire \cpt_reg[0]_i_1__0_n_5 ;
  wire \cpt_reg[0]_i_1__0_n_6 ;
  wire \cpt_reg[0]_i_1__0_n_7 ;
  wire \cpt_reg[12]_i_1__1_n_0 ;
  wire \cpt_reg[12]_i_1__1_n_1 ;
  wire \cpt_reg[12]_i_1__1_n_2 ;
  wire \cpt_reg[12]_i_1__1_n_3 ;
  wire \cpt_reg[12]_i_1__1_n_4 ;
  wire \cpt_reg[12]_i_1__1_n_5 ;
  wire \cpt_reg[12]_i_1__1_n_6 ;
  wire \cpt_reg[12]_i_1__1_n_7 ;
  wire \cpt_reg[16]_i_1__1_n_0 ;
  wire \cpt_reg[16]_i_1__1_n_1 ;
  wire \cpt_reg[16]_i_1__1_n_2 ;
  wire \cpt_reg[16]_i_1__1_n_3 ;
  wire \cpt_reg[16]_i_1__1_n_4 ;
  wire \cpt_reg[16]_i_1__1_n_5 ;
  wire \cpt_reg[16]_i_1__1_n_6 ;
  wire \cpt_reg[16]_i_1__1_n_7 ;
  wire \cpt_reg[20]_i_1__1_n_0 ;
  wire \cpt_reg[20]_i_1__1_n_1 ;
  wire \cpt_reg[20]_i_1__1_n_2 ;
  wire \cpt_reg[20]_i_1__1_n_3 ;
  wire \cpt_reg[20]_i_1__1_n_4 ;
  wire \cpt_reg[20]_i_1__1_n_5 ;
  wire \cpt_reg[20]_i_1__1_n_6 ;
  wire \cpt_reg[20]_i_1__1_n_7 ;
  wire \cpt_reg[24]_i_1__1_n_0 ;
  wire \cpt_reg[24]_i_1__1_n_1 ;
  wire \cpt_reg[24]_i_1__1_n_2 ;
  wire \cpt_reg[24]_i_1__1_n_3 ;
  wire \cpt_reg[24]_i_1__1_n_4 ;
  wire \cpt_reg[24]_i_1__1_n_5 ;
  wire \cpt_reg[24]_i_1__1_n_6 ;
  wire \cpt_reg[24]_i_1__1_n_7 ;
  wire \cpt_reg[28]_i_1__1_n_1 ;
  wire \cpt_reg[28]_i_1__1_n_2 ;
  wire \cpt_reg[28]_i_1__1_n_3 ;
  wire \cpt_reg[28]_i_1__1_n_4 ;
  wire \cpt_reg[28]_i_1__1_n_5 ;
  wire \cpt_reg[28]_i_1__1_n_6 ;
  wire \cpt_reg[28]_i_1__1_n_7 ;
  wire \cpt_reg[4]_i_1__1_n_0 ;
  wire \cpt_reg[4]_i_1__1_n_1 ;
  wire \cpt_reg[4]_i_1__1_n_2 ;
  wire \cpt_reg[4]_i_1__1_n_3 ;
  wire \cpt_reg[4]_i_1__1_n_4 ;
  wire \cpt_reg[4]_i_1__1_n_5 ;
  wire \cpt_reg[4]_i_1__1_n_6 ;
  wire \cpt_reg[4]_i_1__1_n_7 ;
  wire \cpt_reg[8]_i_1__1_n_0 ;
  wire \cpt_reg[8]_i_1__1_n_1 ;
  wire \cpt_reg[8]_i_1__1_n_2 ;
  wire \cpt_reg[8]_i_1__1_n_3 ;
  wire \cpt_reg[8]_i_1__1_n_4 ;
  wire \cpt_reg[8]_i_1__1_n_5 ;
  wire \cpt_reg[8]_i_1__1_n_6 ;
  wire \cpt_reg[8]_i_1__1_n_7 ;
  wire [3:3]\NLW_cpt_reg[28]_i_1__1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_11 
       (.I0(cpt_reg[24]),
        .I1(cpt_reg[25]),
        .I2(cpt_reg[26]),
        .I3(cpt_reg[27]),
        .I4(cpt_reg[28]),
        .I5(cpt_reg[29]),
        .O(\FSM_onehot_EP[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_12 
       (.I0(cpt_reg[6]),
        .I1(cpt_reg[7]),
        .I2(cpt_reg[8]),
        .I3(cpt_reg[9]),
        .I4(cpt_reg[10]),
        .I5(cpt_reg[11]),
        .O(\FSM_onehot_EP[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_13 
       (.I0(cpt_reg[18]),
        .I1(cpt_reg[19]),
        .I2(cpt_reg[20]),
        .I3(cpt_reg[21]),
        .I4(cpt_reg[22]),
        .I5(cpt_reg[23]),
        .O(\FSM_onehot_EP[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_14 
       (.I0(cpt_reg[12]),
        .I1(cpt_reg[13]),
        .I2(cpt_reg[14]),
        .I3(cpt_reg[15]),
        .I4(cpt_reg[16]),
        .I5(cpt_reg[17]),
        .O(\FSM_onehot_EP[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_EP[7]_i_15 
       (.I0(cpt_reg[30]),
        .I1(cpt_reg[31]),
        .O(\FSM_onehot_EP[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \FSM_onehot_EP[7]_i_16 
       (.I0(cpt_reg[0]),
        .I1(cpt_reg[1]),
        .I2(cpt_reg[2]),
        .I3(cpt_reg[4]),
        .I4(cpt_reg[5]),
        .I5(cpt_reg[3]),
        .O(\FSM_onehot_EP[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_EP[7]_i_3 
       (.I0(\FSM_onehot_EP[7]_i_11_n_0 ),
        .I1(\FSM_onehot_EP[7]_i_12_n_0 ),
        .I2(\FSM_onehot_EP[7]_i_13_n_0 ),
        .I3(\FSM_onehot_EP[7]_i_14_n_0 ),
        .I4(\FSM_onehot_EP[7]_i_15_n_0 ),
        .I5(\FSM_onehot_EP[7]_i_16_n_0 ),
        .O(FIN_1_s));
  LUT1 #(
    .INIT(2'h1)) 
    \cpt[0]_i_3__2 
       (.I0(cpt_reg[0]),
        .O(\cpt[0]_i_3__2_n_0 ));
  FDCE \cpt_reg[0] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[0]_i_1__0_n_7 ),
        .Q(cpt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\cpt_reg[0]_i_1__0_n_0 ,\cpt_reg[0]_i_1__0_n_1 ,\cpt_reg[0]_i_1__0_n_2 ,\cpt_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cpt_reg[0]_i_1__0_n_4 ,\cpt_reg[0]_i_1__0_n_5 ,\cpt_reg[0]_i_1__0_n_6 ,\cpt_reg[0]_i_1__0_n_7 }),
        .S({cpt_reg[3:1],\cpt[0]_i_3__2_n_0 }));
  FDCE \cpt_reg[10] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[8]_i_1__1_n_5 ),
        .Q(cpt_reg[10]));
  FDCE \cpt_reg[11] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[8]_i_1__1_n_4 ),
        .Q(cpt_reg[11]));
  FDCE \cpt_reg[12] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[12]_i_1__1_n_7 ),
        .Q(cpt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[12]_i_1__1 
       (.CI(\cpt_reg[8]_i_1__1_n_0 ),
        .CO({\cpt_reg[12]_i_1__1_n_0 ,\cpt_reg[12]_i_1__1_n_1 ,\cpt_reg[12]_i_1__1_n_2 ,\cpt_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[12]_i_1__1_n_4 ,\cpt_reg[12]_i_1__1_n_5 ,\cpt_reg[12]_i_1__1_n_6 ,\cpt_reg[12]_i_1__1_n_7 }),
        .S(cpt_reg[15:12]));
  FDCE \cpt_reg[13] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[12]_i_1__1_n_6 ),
        .Q(cpt_reg[13]));
  FDCE \cpt_reg[14] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[12]_i_1__1_n_5 ),
        .Q(cpt_reg[14]));
  FDCE \cpt_reg[15] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[12]_i_1__1_n_4 ),
        .Q(cpt_reg[15]));
  FDCE \cpt_reg[16] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[16]_i_1__1_n_7 ),
        .Q(cpt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[16]_i_1__1 
       (.CI(\cpt_reg[12]_i_1__1_n_0 ),
        .CO({\cpt_reg[16]_i_1__1_n_0 ,\cpt_reg[16]_i_1__1_n_1 ,\cpt_reg[16]_i_1__1_n_2 ,\cpt_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[16]_i_1__1_n_4 ,\cpt_reg[16]_i_1__1_n_5 ,\cpt_reg[16]_i_1__1_n_6 ,\cpt_reg[16]_i_1__1_n_7 }),
        .S(cpt_reg[19:16]));
  FDCE \cpt_reg[17] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[16]_i_1__1_n_6 ),
        .Q(cpt_reg[17]));
  FDCE \cpt_reg[18] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[16]_i_1__1_n_5 ),
        .Q(cpt_reg[18]));
  FDCE \cpt_reg[19] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[16]_i_1__1_n_4 ),
        .Q(cpt_reg[19]));
  FDCE \cpt_reg[1] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[0]_i_1__0_n_6 ),
        .Q(cpt_reg[1]));
  FDCE \cpt_reg[20] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[20]_i_1__1_n_7 ),
        .Q(cpt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[20]_i_1__1 
       (.CI(\cpt_reg[16]_i_1__1_n_0 ),
        .CO({\cpt_reg[20]_i_1__1_n_0 ,\cpt_reg[20]_i_1__1_n_1 ,\cpt_reg[20]_i_1__1_n_2 ,\cpt_reg[20]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[20]_i_1__1_n_4 ,\cpt_reg[20]_i_1__1_n_5 ,\cpt_reg[20]_i_1__1_n_6 ,\cpt_reg[20]_i_1__1_n_7 }),
        .S(cpt_reg[23:20]));
  FDCE \cpt_reg[21] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[20]_i_1__1_n_6 ),
        .Q(cpt_reg[21]));
  FDCE \cpt_reg[22] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[20]_i_1__1_n_5 ),
        .Q(cpt_reg[22]));
  FDCE \cpt_reg[23] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[20]_i_1__1_n_4 ),
        .Q(cpt_reg[23]));
  FDCE \cpt_reg[24] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[24]_i_1__1_n_7 ),
        .Q(cpt_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[24]_i_1__1 
       (.CI(\cpt_reg[20]_i_1__1_n_0 ),
        .CO({\cpt_reg[24]_i_1__1_n_0 ,\cpt_reg[24]_i_1__1_n_1 ,\cpt_reg[24]_i_1__1_n_2 ,\cpt_reg[24]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[24]_i_1__1_n_4 ,\cpt_reg[24]_i_1__1_n_5 ,\cpt_reg[24]_i_1__1_n_6 ,\cpt_reg[24]_i_1__1_n_7 }),
        .S(cpt_reg[27:24]));
  FDCE \cpt_reg[25] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[24]_i_1__1_n_6 ),
        .Q(cpt_reg[25]));
  FDCE \cpt_reg[26] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[24]_i_1__1_n_5 ),
        .Q(cpt_reg[26]));
  FDCE \cpt_reg[27] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[24]_i_1__1_n_4 ),
        .Q(cpt_reg[27]));
  FDCE \cpt_reg[28] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[28]_i_1__1_n_7 ),
        .Q(cpt_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[28]_i_1__1 
       (.CI(\cpt_reg[24]_i_1__1_n_0 ),
        .CO({\NLW_cpt_reg[28]_i_1__1_CO_UNCONNECTED [3],\cpt_reg[28]_i_1__1_n_1 ,\cpt_reg[28]_i_1__1_n_2 ,\cpt_reg[28]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[28]_i_1__1_n_4 ,\cpt_reg[28]_i_1__1_n_5 ,\cpt_reg[28]_i_1__1_n_6 ,\cpt_reg[28]_i_1__1_n_7 }),
        .S(cpt_reg[31:28]));
  FDCE \cpt_reg[29] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[28]_i_1__1_n_6 ),
        .Q(cpt_reg[29]));
  FDCE \cpt_reg[2] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[0]_i_1__0_n_5 ),
        .Q(cpt_reg[2]));
  FDCE \cpt_reg[30] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[28]_i_1__1_n_5 ),
        .Q(cpt_reg[30]));
  FDCE \cpt_reg[31] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[28]_i_1__1_n_4 ),
        .Q(cpt_reg[31]));
  FDCE \cpt_reg[3] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[0]_i_1__0_n_4 ),
        .Q(cpt_reg[3]));
  FDCE \cpt_reg[4] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[4]_i_1__1_n_7 ),
        .Q(cpt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[4]_i_1__1 
       (.CI(\cpt_reg[0]_i_1__0_n_0 ),
        .CO({\cpt_reg[4]_i_1__1_n_0 ,\cpt_reg[4]_i_1__1_n_1 ,\cpt_reg[4]_i_1__1_n_2 ,\cpt_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[4]_i_1__1_n_4 ,\cpt_reg[4]_i_1__1_n_5 ,\cpt_reg[4]_i_1__1_n_6 ,\cpt_reg[4]_i_1__1_n_7 }),
        .S(cpt_reg[7:4]));
  FDCE \cpt_reg[5] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[4]_i_1__1_n_6 ),
        .Q(cpt_reg[5]));
  FDCE \cpt_reg[6] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[4]_i_1__1_n_5 ),
        .Q(cpt_reg[6]));
  FDCE \cpt_reg[7] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[4]_i_1__1_n_4 ),
        .Q(cpt_reg[7]));
  FDCE \cpt_reg[8] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[8]_i_1__1_n_7 ),
        .Q(cpt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[8]_i_1__1 
       (.CI(\cpt_reg[4]_i_1__1_n_0 ),
        .CO({\cpt_reg[8]_i_1__1_n_0 ,\cpt_reg[8]_i_1__1_n_1 ,\cpt_reg[8]_i_1__1_n_2 ,\cpt_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[8]_i_1__1_n_4 ,\cpt_reg[8]_i_1__1_n_5 ,\cpt_reg[8]_i_1__1_n_6 ,\cpt_reg[8]_i_1__1_n_7 }),
        .S(cpt_reg[11:8]));
  FDCE \cpt_reg[9] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[8]_i_1__1_n_6 ),
        .Q(cpt_reg[9]));
endmodule

(* ORIG_REF_NAME = "DCC_Compteur" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_0
   (Fin_Cpt_Low,
    Q,
    Clk_Temp,
    Reset_Cpt_Low);
  output Fin_Cpt_Low;
  input [0:0]Q;
  input Clk_Temp;
  input Reset_Cpt_Low;

  wire Clk_Temp;
  wire \FSM_onehot_EP[2]_i_3__0_n_0 ;
  wire \FSM_onehot_EP[2]_i_4__0_n_0 ;
  wire \FSM_onehot_EP[2]_i_5__0_n_0 ;
  wire \FSM_onehot_EP[2]_i_6__0_n_0 ;
  wire \FSM_onehot_EP[2]_i_7__0_n_0 ;
  wire \FSM_onehot_EP[2]_i_8_n_0 ;
  wire Fin_Cpt_Low;
  wire [0:0]Q;
  wire Reset_Cpt_Low;
  wire \cpt[0]_i_3__3_n_0 ;
  wire [31:0]cpt_reg;
  wire \cpt_reg[0]_i_1__2_n_0 ;
  wire \cpt_reg[0]_i_1__2_n_1 ;
  wire \cpt_reg[0]_i_1__2_n_2 ;
  wire \cpt_reg[0]_i_1__2_n_3 ;
  wire \cpt_reg[0]_i_1__2_n_4 ;
  wire \cpt_reg[0]_i_1__2_n_5 ;
  wire \cpt_reg[0]_i_1__2_n_6 ;
  wire \cpt_reg[0]_i_1__2_n_7 ;
  wire \cpt_reg[12]_i_1__3_n_0 ;
  wire \cpt_reg[12]_i_1__3_n_1 ;
  wire \cpt_reg[12]_i_1__3_n_2 ;
  wire \cpt_reg[12]_i_1__3_n_3 ;
  wire \cpt_reg[12]_i_1__3_n_4 ;
  wire \cpt_reg[12]_i_1__3_n_5 ;
  wire \cpt_reg[12]_i_1__3_n_6 ;
  wire \cpt_reg[12]_i_1__3_n_7 ;
  wire \cpt_reg[16]_i_1__3_n_0 ;
  wire \cpt_reg[16]_i_1__3_n_1 ;
  wire \cpt_reg[16]_i_1__3_n_2 ;
  wire \cpt_reg[16]_i_1__3_n_3 ;
  wire \cpt_reg[16]_i_1__3_n_4 ;
  wire \cpt_reg[16]_i_1__3_n_5 ;
  wire \cpt_reg[16]_i_1__3_n_6 ;
  wire \cpt_reg[16]_i_1__3_n_7 ;
  wire \cpt_reg[20]_i_1__3_n_0 ;
  wire \cpt_reg[20]_i_1__3_n_1 ;
  wire \cpt_reg[20]_i_1__3_n_2 ;
  wire \cpt_reg[20]_i_1__3_n_3 ;
  wire \cpt_reg[20]_i_1__3_n_4 ;
  wire \cpt_reg[20]_i_1__3_n_5 ;
  wire \cpt_reg[20]_i_1__3_n_6 ;
  wire \cpt_reg[20]_i_1__3_n_7 ;
  wire \cpt_reg[24]_i_1__3_n_0 ;
  wire \cpt_reg[24]_i_1__3_n_1 ;
  wire \cpt_reg[24]_i_1__3_n_2 ;
  wire \cpt_reg[24]_i_1__3_n_3 ;
  wire \cpt_reg[24]_i_1__3_n_4 ;
  wire \cpt_reg[24]_i_1__3_n_5 ;
  wire \cpt_reg[24]_i_1__3_n_6 ;
  wire \cpt_reg[24]_i_1__3_n_7 ;
  wire \cpt_reg[28]_i_1__3_n_1 ;
  wire \cpt_reg[28]_i_1__3_n_2 ;
  wire \cpt_reg[28]_i_1__3_n_3 ;
  wire \cpt_reg[28]_i_1__3_n_4 ;
  wire \cpt_reg[28]_i_1__3_n_5 ;
  wire \cpt_reg[28]_i_1__3_n_6 ;
  wire \cpt_reg[28]_i_1__3_n_7 ;
  wire \cpt_reg[4]_i_1__3_n_0 ;
  wire \cpt_reg[4]_i_1__3_n_1 ;
  wire \cpt_reg[4]_i_1__3_n_2 ;
  wire \cpt_reg[4]_i_1__3_n_3 ;
  wire \cpt_reg[4]_i_1__3_n_4 ;
  wire \cpt_reg[4]_i_1__3_n_5 ;
  wire \cpt_reg[4]_i_1__3_n_6 ;
  wire \cpt_reg[4]_i_1__3_n_7 ;
  wire \cpt_reg[8]_i_1__3_n_0 ;
  wire \cpt_reg[8]_i_1__3_n_1 ;
  wire \cpt_reg[8]_i_1__3_n_2 ;
  wire \cpt_reg[8]_i_1__3_n_3 ;
  wire \cpt_reg[8]_i_1__3_n_4 ;
  wire \cpt_reg[8]_i_1__3_n_5 ;
  wire \cpt_reg[8]_i_1__3_n_6 ;
  wire \cpt_reg[8]_i_1__3_n_7 ;
  wire [3:3]\NLW_cpt_reg[28]_i_1__3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_EP[2]_i_2__0 
       (.I0(\FSM_onehot_EP[2]_i_3__0_n_0 ),
        .I1(\FSM_onehot_EP[2]_i_4__0_n_0 ),
        .I2(\FSM_onehot_EP[2]_i_5__0_n_0 ),
        .I3(\FSM_onehot_EP[2]_i_6__0_n_0 ),
        .I4(\FSM_onehot_EP[2]_i_7__0_n_0 ),
        .I5(\FSM_onehot_EP[2]_i_8_n_0 ),
        .O(Fin_Cpt_Low));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[2]_i_3__0 
       (.I0(cpt_reg[24]),
        .I1(cpt_reg[25]),
        .I2(cpt_reg[26]),
        .I3(cpt_reg[27]),
        .I4(cpt_reg[28]),
        .I5(cpt_reg[29]),
        .O(\FSM_onehot_EP[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[2]_i_4__0 
       (.I0(cpt_reg[6]),
        .I1(cpt_reg[7]),
        .I2(cpt_reg[8]),
        .I3(cpt_reg[9]),
        .I4(cpt_reg[10]),
        .I5(cpt_reg[11]),
        .O(\FSM_onehot_EP[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[2]_i_5__0 
       (.I0(cpt_reg[18]),
        .I1(cpt_reg[19]),
        .I2(cpt_reg[20]),
        .I3(cpt_reg[21]),
        .I4(cpt_reg[22]),
        .I5(cpt_reg[23]),
        .O(\FSM_onehot_EP[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[2]_i_6__0 
       (.I0(cpt_reg[12]),
        .I1(cpt_reg[13]),
        .I2(cpt_reg[14]),
        .I3(cpt_reg[15]),
        .I4(cpt_reg[16]),
        .I5(cpt_reg[17]),
        .O(\FSM_onehot_EP[2]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_EP[2]_i_7__0 
       (.I0(cpt_reg[30]),
        .I1(cpt_reg[31]),
        .O(\FSM_onehot_EP[2]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \FSM_onehot_EP[2]_i_8 
       (.I0(cpt_reg[0]),
        .I1(cpt_reg[1]),
        .I2(cpt_reg[2]),
        .I3(cpt_reg[4]),
        .I4(cpt_reg[5]),
        .I5(cpt_reg[3]),
        .O(\FSM_onehot_EP[2]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cpt[0]_i_3__3 
       (.I0(cpt_reg[0]),
        .O(\cpt[0]_i_3__3_n_0 ));
  FDCE \cpt_reg[0] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[0]_i_1__2_n_7 ),
        .Q(cpt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[0]_i_1__2 
       (.CI(1'b0),
        .CO({\cpt_reg[0]_i_1__2_n_0 ,\cpt_reg[0]_i_1__2_n_1 ,\cpt_reg[0]_i_1__2_n_2 ,\cpt_reg[0]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cpt_reg[0]_i_1__2_n_4 ,\cpt_reg[0]_i_1__2_n_5 ,\cpt_reg[0]_i_1__2_n_6 ,\cpt_reg[0]_i_1__2_n_7 }),
        .S({cpt_reg[3:1],\cpt[0]_i_3__3_n_0 }));
  FDCE \cpt_reg[10] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[8]_i_1__3_n_5 ),
        .Q(cpt_reg[10]));
  FDCE \cpt_reg[11] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[8]_i_1__3_n_4 ),
        .Q(cpt_reg[11]));
  FDCE \cpt_reg[12] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[12]_i_1__3_n_7 ),
        .Q(cpt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[12]_i_1__3 
       (.CI(\cpt_reg[8]_i_1__3_n_0 ),
        .CO({\cpt_reg[12]_i_1__3_n_0 ,\cpt_reg[12]_i_1__3_n_1 ,\cpt_reg[12]_i_1__3_n_2 ,\cpt_reg[12]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[12]_i_1__3_n_4 ,\cpt_reg[12]_i_1__3_n_5 ,\cpt_reg[12]_i_1__3_n_6 ,\cpt_reg[12]_i_1__3_n_7 }),
        .S(cpt_reg[15:12]));
  FDCE \cpt_reg[13] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[12]_i_1__3_n_6 ),
        .Q(cpt_reg[13]));
  FDCE \cpt_reg[14] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[12]_i_1__3_n_5 ),
        .Q(cpt_reg[14]));
  FDCE \cpt_reg[15] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[12]_i_1__3_n_4 ),
        .Q(cpt_reg[15]));
  FDCE \cpt_reg[16] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[16]_i_1__3_n_7 ),
        .Q(cpt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[16]_i_1__3 
       (.CI(\cpt_reg[12]_i_1__3_n_0 ),
        .CO({\cpt_reg[16]_i_1__3_n_0 ,\cpt_reg[16]_i_1__3_n_1 ,\cpt_reg[16]_i_1__3_n_2 ,\cpt_reg[16]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[16]_i_1__3_n_4 ,\cpt_reg[16]_i_1__3_n_5 ,\cpt_reg[16]_i_1__3_n_6 ,\cpt_reg[16]_i_1__3_n_7 }),
        .S(cpt_reg[19:16]));
  FDCE \cpt_reg[17] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[16]_i_1__3_n_6 ),
        .Q(cpt_reg[17]));
  FDCE \cpt_reg[18] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[16]_i_1__3_n_5 ),
        .Q(cpt_reg[18]));
  FDCE \cpt_reg[19] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[16]_i_1__3_n_4 ),
        .Q(cpt_reg[19]));
  FDCE \cpt_reg[1] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[0]_i_1__2_n_6 ),
        .Q(cpt_reg[1]));
  FDCE \cpt_reg[20] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[20]_i_1__3_n_7 ),
        .Q(cpt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[20]_i_1__3 
       (.CI(\cpt_reg[16]_i_1__3_n_0 ),
        .CO({\cpt_reg[20]_i_1__3_n_0 ,\cpt_reg[20]_i_1__3_n_1 ,\cpt_reg[20]_i_1__3_n_2 ,\cpt_reg[20]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[20]_i_1__3_n_4 ,\cpt_reg[20]_i_1__3_n_5 ,\cpt_reg[20]_i_1__3_n_6 ,\cpt_reg[20]_i_1__3_n_7 }),
        .S(cpt_reg[23:20]));
  FDCE \cpt_reg[21] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[20]_i_1__3_n_6 ),
        .Q(cpt_reg[21]));
  FDCE \cpt_reg[22] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[20]_i_1__3_n_5 ),
        .Q(cpt_reg[22]));
  FDCE \cpt_reg[23] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[20]_i_1__3_n_4 ),
        .Q(cpt_reg[23]));
  FDCE \cpt_reg[24] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[24]_i_1__3_n_7 ),
        .Q(cpt_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[24]_i_1__3 
       (.CI(\cpt_reg[20]_i_1__3_n_0 ),
        .CO({\cpt_reg[24]_i_1__3_n_0 ,\cpt_reg[24]_i_1__3_n_1 ,\cpt_reg[24]_i_1__3_n_2 ,\cpt_reg[24]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[24]_i_1__3_n_4 ,\cpt_reg[24]_i_1__3_n_5 ,\cpt_reg[24]_i_1__3_n_6 ,\cpt_reg[24]_i_1__3_n_7 }),
        .S(cpt_reg[27:24]));
  FDCE \cpt_reg[25] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[24]_i_1__3_n_6 ),
        .Q(cpt_reg[25]));
  FDCE \cpt_reg[26] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[24]_i_1__3_n_5 ),
        .Q(cpt_reg[26]));
  FDCE \cpt_reg[27] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[24]_i_1__3_n_4 ),
        .Q(cpt_reg[27]));
  FDCE \cpt_reg[28] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[28]_i_1__3_n_7 ),
        .Q(cpt_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[28]_i_1__3 
       (.CI(\cpt_reg[24]_i_1__3_n_0 ),
        .CO({\NLW_cpt_reg[28]_i_1__3_CO_UNCONNECTED [3],\cpt_reg[28]_i_1__3_n_1 ,\cpt_reg[28]_i_1__3_n_2 ,\cpt_reg[28]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[28]_i_1__3_n_4 ,\cpt_reg[28]_i_1__3_n_5 ,\cpt_reg[28]_i_1__3_n_6 ,\cpt_reg[28]_i_1__3_n_7 }),
        .S(cpt_reg[31:28]));
  FDCE \cpt_reg[29] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[28]_i_1__3_n_6 ),
        .Q(cpt_reg[29]));
  FDCE \cpt_reg[2] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[0]_i_1__2_n_5 ),
        .Q(cpt_reg[2]));
  FDCE \cpt_reg[30] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[28]_i_1__3_n_5 ),
        .Q(cpt_reg[30]));
  FDCE \cpt_reg[31] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[28]_i_1__3_n_4 ),
        .Q(cpt_reg[31]));
  FDCE \cpt_reg[3] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[0]_i_1__2_n_4 ),
        .Q(cpt_reg[3]));
  FDCE \cpt_reg[4] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[4]_i_1__3_n_7 ),
        .Q(cpt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[4]_i_1__3 
       (.CI(\cpt_reg[0]_i_1__2_n_0 ),
        .CO({\cpt_reg[4]_i_1__3_n_0 ,\cpt_reg[4]_i_1__3_n_1 ,\cpt_reg[4]_i_1__3_n_2 ,\cpt_reg[4]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[4]_i_1__3_n_4 ,\cpt_reg[4]_i_1__3_n_5 ,\cpt_reg[4]_i_1__3_n_6 ,\cpt_reg[4]_i_1__3_n_7 }),
        .S(cpt_reg[7:4]));
  FDCE \cpt_reg[5] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[4]_i_1__3_n_6 ),
        .Q(cpt_reg[5]));
  FDCE \cpt_reg[6] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[4]_i_1__3_n_5 ),
        .Q(cpt_reg[6]));
  FDCE \cpt_reg[7] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[4]_i_1__3_n_4 ),
        .Q(cpt_reg[7]));
  FDCE \cpt_reg[8] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[8]_i_1__3_n_7 ),
        .Q(cpt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[8]_i_1__3 
       (.CI(\cpt_reg[4]_i_1__3_n_0 ),
        .CO({\cpt_reg[8]_i_1__3_n_0 ,\cpt_reg[8]_i_1__3_n_1 ,\cpt_reg[8]_i_1__3_n_2 ,\cpt_reg[8]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[8]_i_1__3_n_4 ,\cpt_reg[8]_i_1__3_n_5 ,\cpt_reg[8]_i_1__3_n_6 ,\cpt_reg[8]_i_1__3_n_7 }),
        .S(cpt_reg[11:8]));
  FDCE \cpt_reg[9] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[8]_i_1__3_n_6 ),
        .Q(cpt_reg[9]));
endmodule

(* ORIG_REF_NAME = "DCC_Compteur" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_1
   (FIN_0_s,
    Q,
    Clk_Temp,
    Reset_Cpt_High);
  output FIN_0_s;
  input [0:0]Q;
  input Clk_Temp;
  input Reset_Cpt_High;

  wire Clk_Temp;
  wire FIN_0_s;
  wire \FSM_onehot_EP[7]_i_10_n_0 ;
  wire \FSM_onehot_EP[7]_i_5_n_0 ;
  wire \FSM_onehot_EP[7]_i_6_n_0 ;
  wire \FSM_onehot_EP[7]_i_7_n_0 ;
  wire \FSM_onehot_EP[7]_i_8_n_0 ;
  wire \FSM_onehot_EP[7]_i_9_n_0 ;
  wire [0:0]Q;
  wire Reset_Cpt_High;
  wire \cpt[0]_i_3__0_n_0 ;
  wire [31:0]cpt_reg;
  wire \cpt_reg[0]_i_1_n_0 ;
  wire \cpt_reg[0]_i_1_n_1 ;
  wire \cpt_reg[0]_i_1_n_2 ;
  wire \cpt_reg[0]_i_1_n_3 ;
  wire \cpt_reg[0]_i_1_n_4 ;
  wire \cpt_reg[0]_i_1_n_5 ;
  wire \cpt_reg[0]_i_1_n_6 ;
  wire \cpt_reg[0]_i_1_n_7 ;
  wire \cpt_reg[12]_i_1_n_0 ;
  wire \cpt_reg[12]_i_1_n_1 ;
  wire \cpt_reg[12]_i_1_n_2 ;
  wire \cpt_reg[12]_i_1_n_3 ;
  wire \cpt_reg[12]_i_1_n_4 ;
  wire \cpt_reg[12]_i_1_n_5 ;
  wire \cpt_reg[12]_i_1_n_6 ;
  wire \cpt_reg[12]_i_1_n_7 ;
  wire \cpt_reg[16]_i_1_n_0 ;
  wire \cpt_reg[16]_i_1_n_1 ;
  wire \cpt_reg[16]_i_1_n_2 ;
  wire \cpt_reg[16]_i_1_n_3 ;
  wire \cpt_reg[16]_i_1_n_4 ;
  wire \cpt_reg[16]_i_1_n_5 ;
  wire \cpt_reg[16]_i_1_n_6 ;
  wire \cpt_reg[16]_i_1_n_7 ;
  wire \cpt_reg[20]_i_1_n_0 ;
  wire \cpt_reg[20]_i_1_n_1 ;
  wire \cpt_reg[20]_i_1_n_2 ;
  wire \cpt_reg[20]_i_1_n_3 ;
  wire \cpt_reg[20]_i_1_n_4 ;
  wire \cpt_reg[20]_i_1_n_5 ;
  wire \cpt_reg[20]_i_1_n_6 ;
  wire \cpt_reg[20]_i_1_n_7 ;
  wire \cpt_reg[24]_i_1_n_0 ;
  wire \cpt_reg[24]_i_1_n_1 ;
  wire \cpt_reg[24]_i_1_n_2 ;
  wire \cpt_reg[24]_i_1_n_3 ;
  wire \cpt_reg[24]_i_1_n_4 ;
  wire \cpt_reg[24]_i_1_n_5 ;
  wire \cpt_reg[24]_i_1_n_6 ;
  wire \cpt_reg[24]_i_1_n_7 ;
  wire \cpt_reg[28]_i_1_n_1 ;
  wire \cpt_reg[28]_i_1_n_2 ;
  wire \cpt_reg[28]_i_1_n_3 ;
  wire \cpt_reg[28]_i_1_n_4 ;
  wire \cpt_reg[28]_i_1_n_5 ;
  wire \cpt_reg[28]_i_1_n_6 ;
  wire \cpt_reg[28]_i_1_n_7 ;
  wire \cpt_reg[4]_i_1_n_0 ;
  wire \cpt_reg[4]_i_1_n_1 ;
  wire \cpt_reg[4]_i_1_n_2 ;
  wire \cpt_reg[4]_i_1_n_3 ;
  wire \cpt_reg[4]_i_1_n_4 ;
  wire \cpt_reg[4]_i_1_n_5 ;
  wire \cpt_reg[4]_i_1_n_6 ;
  wire \cpt_reg[4]_i_1_n_7 ;
  wire \cpt_reg[8]_i_1_n_0 ;
  wire \cpt_reg[8]_i_1_n_1 ;
  wire \cpt_reg[8]_i_1_n_2 ;
  wire \cpt_reg[8]_i_1_n_3 ;
  wire \cpt_reg[8]_i_1_n_4 ;
  wire \cpt_reg[8]_i_1_n_5 ;
  wire \cpt_reg[8]_i_1_n_6 ;
  wire \cpt_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_cpt_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \FSM_onehot_EP[7]_i_10 
       (.I0(cpt_reg[0]),
        .I1(cpt_reg[2]),
        .I2(cpt_reg[1]),
        .I3(cpt_reg[3]),
        .I4(cpt_reg[5]),
        .I5(cpt_reg[4]),
        .O(\FSM_onehot_EP[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_EP[7]_i_2 
       (.I0(\FSM_onehot_EP[7]_i_5_n_0 ),
        .I1(\FSM_onehot_EP[7]_i_6_n_0 ),
        .I2(\FSM_onehot_EP[7]_i_7_n_0 ),
        .I3(\FSM_onehot_EP[7]_i_8_n_0 ),
        .I4(\FSM_onehot_EP[7]_i_9_n_0 ),
        .I5(\FSM_onehot_EP[7]_i_10_n_0 ),
        .O(FIN_0_s));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_5 
       (.I0(cpt_reg[24]),
        .I1(cpt_reg[25]),
        .I2(cpt_reg[26]),
        .I3(cpt_reg[27]),
        .I4(cpt_reg[28]),
        .I5(cpt_reg[29]),
        .O(\FSM_onehot_EP[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_onehot_EP[7]_i_6 
       (.I0(cpt_reg[7]),
        .I1(cpt_reg[8]),
        .I2(cpt_reg[6]),
        .I3(cpt_reg[9]),
        .I4(cpt_reg[10]),
        .I5(cpt_reg[11]),
        .O(\FSM_onehot_EP[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_7 
       (.I0(cpt_reg[18]),
        .I1(cpt_reg[19]),
        .I2(cpt_reg[20]),
        .I3(cpt_reg[21]),
        .I4(cpt_reg[22]),
        .I5(cpt_reg[23]),
        .O(\FSM_onehot_EP[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_8 
       (.I0(cpt_reg[12]),
        .I1(cpt_reg[13]),
        .I2(cpt_reg[14]),
        .I3(cpt_reg[15]),
        .I4(cpt_reg[16]),
        .I5(cpt_reg[17]),
        .O(\FSM_onehot_EP[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_EP[7]_i_9 
       (.I0(cpt_reg[30]),
        .I1(cpt_reg[31]),
        .O(\FSM_onehot_EP[7]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cpt[0]_i_3__0 
       (.I0(cpt_reg[0]),
        .O(\cpt[0]_i_3__0_n_0 ));
  FDCE \cpt_reg[0] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[0]_i_1_n_7 ),
        .Q(cpt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cpt_reg[0]_i_1_n_0 ,\cpt_reg[0]_i_1_n_1 ,\cpt_reg[0]_i_1_n_2 ,\cpt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cpt_reg[0]_i_1_n_4 ,\cpt_reg[0]_i_1_n_5 ,\cpt_reg[0]_i_1_n_6 ,\cpt_reg[0]_i_1_n_7 }),
        .S({cpt_reg[3:1],\cpt[0]_i_3__0_n_0 }));
  FDCE \cpt_reg[10] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[8]_i_1_n_5 ),
        .Q(cpt_reg[10]));
  FDCE \cpt_reg[11] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[8]_i_1_n_4 ),
        .Q(cpt_reg[11]));
  FDCE \cpt_reg[12] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[12]_i_1_n_7 ),
        .Q(cpt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[12]_i_1 
       (.CI(\cpt_reg[8]_i_1_n_0 ),
        .CO({\cpt_reg[12]_i_1_n_0 ,\cpt_reg[12]_i_1_n_1 ,\cpt_reg[12]_i_1_n_2 ,\cpt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[12]_i_1_n_4 ,\cpt_reg[12]_i_1_n_5 ,\cpt_reg[12]_i_1_n_6 ,\cpt_reg[12]_i_1_n_7 }),
        .S(cpt_reg[15:12]));
  FDCE \cpt_reg[13] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[12]_i_1_n_6 ),
        .Q(cpt_reg[13]));
  FDCE \cpt_reg[14] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[12]_i_1_n_5 ),
        .Q(cpt_reg[14]));
  FDCE \cpt_reg[15] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[12]_i_1_n_4 ),
        .Q(cpt_reg[15]));
  FDCE \cpt_reg[16] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[16]_i_1_n_7 ),
        .Q(cpt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[16]_i_1 
       (.CI(\cpt_reg[12]_i_1_n_0 ),
        .CO({\cpt_reg[16]_i_1_n_0 ,\cpt_reg[16]_i_1_n_1 ,\cpt_reg[16]_i_1_n_2 ,\cpt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[16]_i_1_n_4 ,\cpt_reg[16]_i_1_n_5 ,\cpt_reg[16]_i_1_n_6 ,\cpt_reg[16]_i_1_n_7 }),
        .S(cpt_reg[19:16]));
  FDCE \cpt_reg[17] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[16]_i_1_n_6 ),
        .Q(cpt_reg[17]));
  FDCE \cpt_reg[18] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[16]_i_1_n_5 ),
        .Q(cpt_reg[18]));
  FDCE \cpt_reg[19] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[16]_i_1_n_4 ),
        .Q(cpt_reg[19]));
  FDCE \cpt_reg[1] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[0]_i_1_n_6 ),
        .Q(cpt_reg[1]));
  FDCE \cpt_reg[20] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[20]_i_1_n_7 ),
        .Q(cpt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[20]_i_1 
       (.CI(\cpt_reg[16]_i_1_n_0 ),
        .CO({\cpt_reg[20]_i_1_n_0 ,\cpt_reg[20]_i_1_n_1 ,\cpt_reg[20]_i_1_n_2 ,\cpt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[20]_i_1_n_4 ,\cpt_reg[20]_i_1_n_5 ,\cpt_reg[20]_i_1_n_6 ,\cpt_reg[20]_i_1_n_7 }),
        .S(cpt_reg[23:20]));
  FDCE \cpt_reg[21] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[20]_i_1_n_6 ),
        .Q(cpt_reg[21]));
  FDCE \cpt_reg[22] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[20]_i_1_n_5 ),
        .Q(cpt_reg[22]));
  FDCE \cpt_reg[23] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[20]_i_1_n_4 ),
        .Q(cpt_reg[23]));
  FDCE \cpt_reg[24] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[24]_i_1_n_7 ),
        .Q(cpt_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[24]_i_1 
       (.CI(\cpt_reg[20]_i_1_n_0 ),
        .CO({\cpt_reg[24]_i_1_n_0 ,\cpt_reg[24]_i_1_n_1 ,\cpt_reg[24]_i_1_n_2 ,\cpt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[24]_i_1_n_4 ,\cpt_reg[24]_i_1_n_5 ,\cpt_reg[24]_i_1_n_6 ,\cpt_reg[24]_i_1_n_7 }),
        .S(cpt_reg[27:24]));
  FDCE \cpt_reg[25] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[24]_i_1_n_6 ),
        .Q(cpt_reg[25]));
  FDCE \cpt_reg[26] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[24]_i_1_n_5 ),
        .Q(cpt_reg[26]));
  FDCE \cpt_reg[27] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[24]_i_1_n_4 ),
        .Q(cpt_reg[27]));
  FDCE \cpt_reg[28] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[28]_i_1_n_7 ),
        .Q(cpt_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[28]_i_1 
       (.CI(\cpt_reg[24]_i_1_n_0 ),
        .CO({\NLW_cpt_reg[28]_i_1_CO_UNCONNECTED [3],\cpt_reg[28]_i_1_n_1 ,\cpt_reg[28]_i_1_n_2 ,\cpt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[28]_i_1_n_4 ,\cpt_reg[28]_i_1_n_5 ,\cpt_reg[28]_i_1_n_6 ,\cpt_reg[28]_i_1_n_7 }),
        .S(cpt_reg[31:28]));
  FDCE \cpt_reg[29] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[28]_i_1_n_6 ),
        .Q(cpt_reg[29]));
  FDCE \cpt_reg[2] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[0]_i_1_n_5 ),
        .Q(cpt_reg[2]));
  FDCE \cpt_reg[30] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[28]_i_1_n_5 ),
        .Q(cpt_reg[30]));
  FDCE \cpt_reg[31] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[28]_i_1_n_4 ),
        .Q(cpt_reg[31]));
  FDCE \cpt_reg[3] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[0]_i_1_n_4 ),
        .Q(cpt_reg[3]));
  FDCE \cpt_reg[4] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[4]_i_1_n_7 ),
        .Q(cpt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[4]_i_1 
       (.CI(\cpt_reg[0]_i_1_n_0 ),
        .CO({\cpt_reg[4]_i_1_n_0 ,\cpt_reg[4]_i_1_n_1 ,\cpt_reg[4]_i_1_n_2 ,\cpt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[4]_i_1_n_4 ,\cpt_reg[4]_i_1_n_5 ,\cpt_reg[4]_i_1_n_6 ,\cpt_reg[4]_i_1_n_7 }),
        .S(cpt_reg[7:4]));
  FDCE \cpt_reg[5] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[4]_i_1_n_6 ),
        .Q(cpt_reg[5]));
  FDCE \cpt_reg[6] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[4]_i_1_n_5 ),
        .Q(cpt_reg[6]));
  FDCE \cpt_reg[7] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[4]_i_1_n_4 ),
        .Q(cpt_reg[7]));
  FDCE \cpt_reg[8] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[8]_i_1_n_7 ),
        .Q(cpt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[8]_i_1 
       (.CI(\cpt_reg[4]_i_1_n_0 ),
        .CO({\cpt_reg[8]_i_1_n_0 ,\cpt_reg[8]_i_1_n_1 ,\cpt_reg[8]_i_1_n_2 ,\cpt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[8]_i_1_n_4 ,\cpt_reg[8]_i_1_n_5 ,\cpt_reg[8]_i_1_n_6 ,\cpt_reg[8]_i_1_n_7 }),
        .S(cpt_reg[11:8]));
  FDCE \cpt_reg[9] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_High),
        .D(\cpt_reg[8]_i_1_n_6 ),
        .Q(cpt_reg[9]));
endmodule

(* ORIG_REF_NAME = "DCC_Compteur" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_2
   (Fin_Cpt_Low,
    Q,
    Clk_Temp,
    Reset_Cpt_Low);
  output Fin_Cpt_Low;
  input [0:0]Q;
  input Clk_Temp;
  input Reset_Cpt_Low;

  wire Clk_Temp;
  wire \FSM_onehot_EP[2]_i_4_n_0 ;
  wire \FSM_onehot_EP[2]_i_5_n_0 ;
  wire \FSM_onehot_EP[2]_i_6_n_0 ;
  wire \FSM_onehot_EP[2]_i_7_n_0 ;
  wire \FSM_onehot_EP[2]_i_8__0_n_0 ;
  wire \FSM_onehot_EP[2]_i_9_n_0 ;
  wire Fin_Cpt_Low;
  wire [0:0]Q;
  wire Reset_Cpt_Low;
  wire \cpt[0]_i_3__1_n_0 ;
  wire [31:0]cpt_reg;
  wire \cpt_reg[0]_i_1__1_n_0 ;
  wire \cpt_reg[0]_i_1__1_n_1 ;
  wire \cpt_reg[0]_i_1__1_n_2 ;
  wire \cpt_reg[0]_i_1__1_n_3 ;
  wire \cpt_reg[0]_i_1__1_n_4 ;
  wire \cpt_reg[0]_i_1__1_n_5 ;
  wire \cpt_reg[0]_i_1__1_n_6 ;
  wire \cpt_reg[0]_i_1__1_n_7 ;
  wire \cpt_reg[12]_i_1__2_n_0 ;
  wire \cpt_reg[12]_i_1__2_n_1 ;
  wire \cpt_reg[12]_i_1__2_n_2 ;
  wire \cpt_reg[12]_i_1__2_n_3 ;
  wire \cpt_reg[12]_i_1__2_n_4 ;
  wire \cpt_reg[12]_i_1__2_n_5 ;
  wire \cpt_reg[12]_i_1__2_n_6 ;
  wire \cpt_reg[12]_i_1__2_n_7 ;
  wire \cpt_reg[16]_i_1__2_n_0 ;
  wire \cpt_reg[16]_i_1__2_n_1 ;
  wire \cpt_reg[16]_i_1__2_n_2 ;
  wire \cpt_reg[16]_i_1__2_n_3 ;
  wire \cpt_reg[16]_i_1__2_n_4 ;
  wire \cpt_reg[16]_i_1__2_n_5 ;
  wire \cpt_reg[16]_i_1__2_n_6 ;
  wire \cpt_reg[16]_i_1__2_n_7 ;
  wire \cpt_reg[20]_i_1__2_n_0 ;
  wire \cpt_reg[20]_i_1__2_n_1 ;
  wire \cpt_reg[20]_i_1__2_n_2 ;
  wire \cpt_reg[20]_i_1__2_n_3 ;
  wire \cpt_reg[20]_i_1__2_n_4 ;
  wire \cpt_reg[20]_i_1__2_n_5 ;
  wire \cpt_reg[20]_i_1__2_n_6 ;
  wire \cpt_reg[20]_i_1__2_n_7 ;
  wire \cpt_reg[24]_i_1__2_n_0 ;
  wire \cpt_reg[24]_i_1__2_n_1 ;
  wire \cpt_reg[24]_i_1__2_n_2 ;
  wire \cpt_reg[24]_i_1__2_n_3 ;
  wire \cpt_reg[24]_i_1__2_n_4 ;
  wire \cpt_reg[24]_i_1__2_n_5 ;
  wire \cpt_reg[24]_i_1__2_n_6 ;
  wire \cpt_reg[24]_i_1__2_n_7 ;
  wire \cpt_reg[28]_i_1__2_n_1 ;
  wire \cpt_reg[28]_i_1__2_n_2 ;
  wire \cpt_reg[28]_i_1__2_n_3 ;
  wire \cpt_reg[28]_i_1__2_n_4 ;
  wire \cpt_reg[28]_i_1__2_n_5 ;
  wire \cpt_reg[28]_i_1__2_n_6 ;
  wire \cpt_reg[28]_i_1__2_n_7 ;
  wire \cpt_reg[4]_i_1__2_n_0 ;
  wire \cpt_reg[4]_i_1__2_n_1 ;
  wire \cpt_reg[4]_i_1__2_n_2 ;
  wire \cpt_reg[4]_i_1__2_n_3 ;
  wire \cpt_reg[4]_i_1__2_n_4 ;
  wire \cpt_reg[4]_i_1__2_n_5 ;
  wire \cpt_reg[4]_i_1__2_n_6 ;
  wire \cpt_reg[4]_i_1__2_n_7 ;
  wire \cpt_reg[8]_i_1__2_n_0 ;
  wire \cpt_reg[8]_i_1__2_n_1 ;
  wire \cpt_reg[8]_i_1__2_n_2 ;
  wire \cpt_reg[8]_i_1__2_n_3 ;
  wire \cpt_reg[8]_i_1__2_n_4 ;
  wire \cpt_reg[8]_i_1__2_n_5 ;
  wire \cpt_reg[8]_i_1__2_n_6 ;
  wire \cpt_reg[8]_i_1__2_n_7 ;
  wire [3:3]\NLW_cpt_reg[28]_i_1__2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_EP[2]_i_3 
       (.I0(\FSM_onehot_EP[2]_i_4_n_0 ),
        .I1(\FSM_onehot_EP[2]_i_5_n_0 ),
        .I2(\FSM_onehot_EP[2]_i_6_n_0 ),
        .I3(\FSM_onehot_EP[2]_i_7_n_0 ),
        .I4(\FSM_onehot_EP[2]_i_8__0_n_0 ),
        .I5(\FSM_onehot_EP[2]_i_9_n_0 ),
        .O(Fin_Cpt_Low));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[2]_i_4 
       (.I0(cpt_reg[24]),
        .I1(cpt_reg[25]),
        .I2(cpt_reg[26]),
        .I3(cpt_reg[27]),
        .I4(cpt_reg[28]),
        .I5(cpt_reg[29]),
        .O(\FSM_onehot_EP[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_onehot_EP[2]_i_5 
       (.I0(cpt_reg[7]),
        .I1(cpt_reg[8]),
        .I2(cpt_reg[6]),
        .I3(cpt_reg[9]),
        .I4(cpt_reg[10]),
        .I5(cpt_reg[11]),
        .O(\FSM_onehot_EP[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[2]_i_6 
       (.I0(cpt_reg[18]),
        .I1(cpt_reg[19]),
        .I2(cpt_reg[20]),
        .I3(cpt_reg[21]),
        .I4(cpt_reg[22]),
        .I5(cpt_reg[23]),
        .O(\FSM_onehot_EP[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[2]_i_7 
       (.I0(cpt_reg[12]),
        .I1(cpt_reg[13]),
        .I2(cpt_reg[14]),
        .I3(cpt_reg[15]),
        .I4(cpt_reg[16]),
        .I5(cpt_reg[17]),
        .O(\FSM_onehot_EP[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_EP[2]_i_8__0 
       (.I0(cpt_reg[30]),
        .I1(cpt_reg[31]),
        .O(\FSM_onehot_EP[2]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \FSM_onehot_EP[2]_i_9 
       (.I0(cpt_reg[0]),
        .I1(cpt_reg[2]),
        .I2(cpt_reg[1]),
        .I3(cpt_reg[3]),
        .I4(cpt_reg[5]),
        .I5(cpt_reg[4]),
        .O(\FSM_onehot_EP[2]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cpt[0]_i_3__1 
       (.I0(cpt_reg[0]),
        .O(\cpt[0]_i_3__1_n_0 ));
  FDCE \cpt_reg[0] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[0]_i_1__1_n_7 ),
        .Q(cpt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[0]_i_1__1 
       (.CI(1'b0),
        .CO({\cpt_reg[0]_i_1__1_n_0 ,\cpt_reg[0]_i_1__1_n_1 ,\cpt_reg[0]_i_1__1_n_2 ,\cpt_reg[0]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cpt_reg[0]_i_1__1_n_4 ,\cpt_reg[0]_i_1__1_n_5 ,\cpt_reg[0]_i_1__1_n_6 ,\cpt_reg[0]_i_1__1_n_7 }),
        .S({cpt_reg[3:1],\cpt[0]_i_3__1_n_0 }));
  FDCE \cpt_reg[10] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[8]_i_1__2_n_5 ),
        .Q(cpt_reg[10]));
  FDCE \cpt_reg[11] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[8]_i_1__2_n_4 ),
        .Q(cpt_reg[11]));
  FDCE \cpt_reg[12] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[12]_i_1__2_n_7 ),
        .Q(cpt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[12]_i_1__2 
       (.CI(\cpt_reg[8]_i_1__2_n_0 ),
        .CO({\cpt_reg[12]_i_1__2_n_0 ,\cpt_reg[12]_i_1__2_n_1 ,\cpt_reg[12]_i_1__2_n_2 ,\cpt_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[12]_i_1__2_n_4 ,\cpt_reg[12]_i_1__2_n_5 ,\cpt_reg[12]_i_1__2_n_6 ,\cpt_reg[12]_i_1__2_n_7 }),
        .S(cpt_reg[15:12]));
  FDCE \cpt_reg[13] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[12]_i_1__2_n_6 ),
        .Q(cpt_reg[13]));
  FDCE \cpt_reg[14] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[12]_i_1__2_n_5 ),
        .Q(cpt_reg[14]));
  FDCE \cpt_reg[15] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[12]_i_1__2_n_4 ),
        .Q(cpt_reg[15]));
  FDCE \cpt_reg[16] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[16]_i_1__2_n_7 ),
        .Q(cpt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[16]_i_1__2 
       (.CI(\cpt_reg[12]_i_1__2_n_0 ),
        .CO({\cpt_reg[16]_i_1__2_n_0 ,\cpt_reg[16]_i_1__2_n_1 ,\cpt_reg[16]_i_1__2_n_2 ,\cpt_reg[16]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[16]_i_1__2_n_4 ,\cpt_reg[16]_i_1__2_n_5 ,\cpt_reg[16]_i_1__2_n_6 ,\cpt_reg[16]_i_1__2_n_7 }),
        .S(cpt_reg[19:16]));
  FDCE \cpt_reg[17] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[16]_i_1__2_n_6 ),
        .Q(cpt_reg[17]));
  FDCE \cpt_reg[18] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[16]_i_1__2_n_5 ),
        .Q(cpt_reg[18]));
  FDCE \cpt_reg[19] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[16]_i_1__2_n_4 ),
        .Q(cpt_reg[19]));
  FDCE \cpt_reg[1] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[0]_i_1__1_n_6 ),
        .Q(cpt_reg[1]));
  FDCE \cpt_reg[20] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[20]_i_1__2_n_7 ),
        .Q(cpt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[20]_i_1__2 
       (.CI(\cpt_reg[16]_i_1__2_n_0 ),
        .CO({\cpt_reg[20]_i_1__2_n_0 ,\cpt_reg[20]_i_1__2_n_1 ,\cpt_reg[20]_i_1__2_n_2 ,\cpt_reg[20]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[20]_i_1__2_n_4 ,\cpt_reg[20]_i_1__2_n_5 ,\cpt_reg[20]_i_1__2_n_6 ,\cpt_reg[20]_i_1__2_n_7 }),
        .S(cpt_reg[23:20]));
  FDCE \cpt_reg[21] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[20]_i_1__2_n_6 ),
        .Q(cpt_reg[21]));
  FDCE \cpt_reg[22] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[20]_i_1__2_n_5 ),
        .Q(cpt_reg[22]));
  FDCE \cpt_reg[23] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[20]_i_1__2_n_4 ),
        .Q(cpt_reg[23]));
  FDCE \cpt_reg[24] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[24]_i_1__2_n_7 ),
        .Q(cpt_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[24]_i_1__2 
       (.CI(\cpt_reg[20]_i_1__2_n_0 ),
        .CO({\cpt_reg[24]_i_1__2_n_0 ,\cpt_reg[24]_i_1__2_n_1 ,\cpt_reg[24]_i_1__2_n_2 ,\cpt_reg[24]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[24]_i_1__2_n_4 ,\cpt_reg[24]_i_1__2_n_5 ,\cpt_reg[24]_i_1__2_n_6 ,\cpt_reg[24]_i_1__2_n_7 }),
        .S(cpt_reg[27:24]));
  FDCE \cpt_reg[25] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[24]_i_1__2_n_6 ),
        .Q(cpt_reg[25]));
  FDCE \cpt_reg[26] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[24]_i_1__2_n_5 ),
        .Q(cpt_reg[26]));
  FDCE \cpt_reg[27] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[24]_i_1__2_n_4 ),
        .Q(cpt_reg[27]));
  FDCE \cpt_reg[28] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[28]_i_1__2_n_7 ),
        .Q(cpt_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[28]_i_1__2 
       (.CI(\cpt_reg[24]_i_1__2_n_0 ),
        .CO({\NLW_cpt_reg[28]_i_1__2_CO_UNCONNECTED [3],\cpt_reg[28]_i_1__2_n_1 ,\cpt_reg[28]_i_1__2_n_2 ,\cpt_reg[28]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[28]_i_1__2_n_4 ,\cpt_reg[28]_i_1__2_n_5 ,\cpt_reg[28]_i_1__2_n_6 ,\cpt_reg[28]_i_1__2_n_7 }),
        .S(cpt_reg[31:28]));
  FDCE \cpt_reg[29] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[28]_i_1__2_n_6 ),
        .Q(cpt_reg[29]));
  FDCE \cpt_reg[2] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[0]_i_1__1_n_5 ),
        .Q(cpt_reg[2]));
  FDCE \cpt_reg[30] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[28]_i_1__2_n_5 ),
        .Q(cpt_reg[30]));
  FDCE \cpt_reg[31] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[28]_i_1__2_n_4 ),
        .Q(cpt_reg[31]));
  FDCE \cpt_reg[3] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[0]_i_1__1_n_4 ),
        .Q(cpt_reg[3]));
  FDCE \cpt_reg[4] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[4]_i_1__2_n_7 ),
        .Q(cpt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[4]_i_1__2 
       (.CI(\cpt_reg[0]_i_1__1_n_0 ),
        .CO({\cpt_reg[4]_i_1__2_n_0 ,\cpt_reg[4]_i_1__2_n_1 ,\cpt_reg[4]_i_1__2_n_2 ,\cpt_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[4]_i_1__2_n_4 ,\cpt_reg[4]_i_1__2_n_5 ,\cpt_reg[4]_i_1__2_n_6 ,\cpt_reg[4]_i_1__2_n_7 }),
        .S(cpt_reg[7:4]));
  FDCE \cpt_reg[5] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[4]_i_1__2_n_6 ),
        .Q(cpt_reg[5]));
  FDCE \cpt_reg[6] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[4]_i_1__2_n_5 ),
        .Q(cpt_reg[6]));
  FDCE \cpt_reg[7] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[4]_i_1__2_n_4 ),
        .Q(cpt_reg[7]));
  FDCE \cpt_reg[8] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[8]_i_1__2_n_7 ),
        .Q(cpt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[8]_i_1__2 
       (.CI(\cpt_reg[4]_i_1__2_n_0 ),
        .CO({\cpt_reg[8]_i_1__2_n_0 ,\cpt_reg[8]_i_1__2_n_1 ,\cpt_reg[8]_i_1__2_n_2 ,\cpt_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[8]_i_1__2_n_4 ,\cpt_reg[8]_i_1__2_n_5 ,\cpt_reg[8]_i_1__2_n_6 ,\cpt_reg[8]_i_1__2_n_7 }),
        .S(cpt_reg[11:8]));
  FDCE \cpt_reg[9] 
       (.C(Clk_Temp),
        .CE(Q),
        .CLR(Reset_Cpt_Low),
        .D(\cpt_reg[8]_i_1__2_n_6 ),
        .Q(cpt_reg[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE
   (Reset_Cpt_High,
    Q,
    Reset_Cpt_Low,
    SORTIE_DCC,
    SORTIE_DCC_0,
    \FSM_onehot_EP_reg[1]_0 ,
    FIN_1_s,
    Fin_Cpt_Low,
    s00_axi_aclk,
    AR);
  output Reset_Cpt_High;
  output [1:0]Q;
  output Reset_Cpt_Low;
  output SORTIE_DCC;
  input [0:0]SORTIE_DCC_0;
  input [0:0]\FSM_onehot_EP_reg[1]_0 ;
  input FIN_1_s;
  input Fin_Cpt_Low;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire FIN_1_s;
  wire \FSM_onehot_EP[0]_i_1__1_n_0 ;
  wire \FSM_onehot_EP[1]_i_1__0_n_0 ;
  wire \FSM_onehot_EP[2]_i_1__0_n_0 ;
  wire [0:0]\FSM_onehot_EP_reg[1]_0 ;
  wire \FSM_onehot_EP_reg_n_0_[0] ;
  wire Fin_Cpt_Low;
  wire [1:0]Q;
  wire Reset_Cpt_High;
  wire Reset_Cpt_Low;
  wire SORTIE_DCC;
  wire [0:0]SORTIE_DCC_0;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_EP[0]_i_1__1 
       (.I0(\FSM_onehot_EP_reg[1]_0 ),
        .I1(\FSM_onehot_EP_reg_n_0_[0] ),
        .I2(FIN_1_s),
        .I3(Q[1]),
        .O(\FSM_onehot_EP[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_EP[1]_i_1__0 
       (.I0(\FSM_onehot_EP_reg[1]_0 ),
        .I1(\FSM_onehot_EP_reg_n_0_[0] ),
        .I2(Fin_Cpt_Low),
        .I3(Q[0]),
        .O(\FSM_onehot_EP[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_EP[2]_i_1__0 
       (.I0(Fin_Cpt_Low),
        .I1(Q[0]),
        .I2(FIN_1_s),
        .I3(Q[1]),
        .O(\FSM_onehot_EP[2]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "lvl_low:010,lvl_high:100,idle:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_EP_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_EP[0]_i_1__1_n_0 ),
        .PRE(AR),
        .Q(\FSM_onehot_EP_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "lvl_low:010,lvl_high:100,idle:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_EP[1]_i_1__0_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "lvl_low:010,lvl_high:100,idle:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_EP[2]_i_1__0_n_0 ),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    SORTIE_DCC_INST_0
       (.I0(Q[1]),
        .I1(SORTIE_DCC_0),
        .O(SORTIE_DCC));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cpt[0]_i_2__1 
       (.I0(\FSM_onehot_EP_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(Reset_Cpt_High));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cpt[0]_i_2__2 
       (.I0(\FSM_onehot_EP_reg_n_0_[0] ),
        .I1(Q[1]),
        .O(Reset_Cpt_Low));
endmodule

(* ORIG_REF_NAME = "DDC_MAE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE_3
   (Reset_Cpt_High,
    Q,
    Reset_Cpt_Low,
    \FSM_onehot_EP_reg[1]_0 ,
    FIN_0_s,
    Fin_Cpt_Low,
    s00_axi_aclk,
    AR);
  output Reset_Cpt_High;
  output [1:0]Q;
  output Reset_Cpt_Low;
  input [0:0]\FSM_onehot_EP_reg[1]_0 ;
  input FIN_0_s;
  input Fin_Cpt_Low;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire FIN_0_s;
  wire \FSM_onehot_EP[0]_i_1__0_n_0 ;
  wire \FSM_onehot_EP[1]_i_1_n_0 ;
  wire \FSM_onehot_EP[2]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_EP_reg[1]_0 ;
  wire \FSM_onehot_EP_reg_n_0_[0] ;
  wire Fin_Cpt_Low;
  wire [1:0]Q;
  wire Reset_Cpt_High;
  wire Reset_Cpt_Low;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_EP[0]_i_1__0 
       (.I0(\FSM_onehot_EP_reg[1]_0 ),
        .I1(\FSM_onehot_EP_reg_n_0_[0] ),
        .I2(FIN_0_s),
        .I3(Q[1]),
        .O(\FSM_onehot_EP[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_EP[1]_i_1 
       (.I0(\FSM_onehot_EP_reg[1]_0 ),
        .I1(\FSM_onehot_EP_reg_n_0_[0] ),
        .I2(Fin_Cpt_Low),
        .I3(Q[0]),
        .O(\FSM_onehot_EP[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_EP[2]_i_1 
       (.I0(Fin_Cpt_Low),
        .I1(Q[0]),
        .I2(FIN_0_s),
        .I3(Q[1]),
        .O(\FSM_onehot_EP[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "lvl_low:010,lvl_high:100,idle:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_EP_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_EP[0]_i_1__0_n_0 ),
        .PRE(AR),
        .Q(\FSM_onehot_EP_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "lvl_low:010,lvl_high:100,idle:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_EP[1]_i_1_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "lvl_low:010,lvl_high:100,idle:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_EP[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cpt[0]_i_2 
       (.I0(\FSM_onehot_EP_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(Reset_Cpt_High));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cpt[0]_i_2__0 
       (.I0(\FSM_onehot_EP_reg_n_0_[0] ),
        .I1(Q[1]),
        .O(Reset_Cpt_Low));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_Centrale_DCC_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    SORTIE_DCC,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output SORTIE_DCC;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire SORTIE_DCC;
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_Centrale_DCC_v1_0_S00_AXI IP_Centrale_DCC_v1_0_S00_AXI_inst
       (.SORTIE_DCC(SORTIE_DCC),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_Centrale_DCC_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    SORTIE_DCC,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output SORTIE_DCC;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire SORTIE_DCC;
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
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
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
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
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
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
        .Q(slv_reg3[0]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(S_AXI_ARESET));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TOP top0
       (.SORTIE_DCC(SORTIE_DCC),
        .SR(S_AXI_ARESET),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE
   (Q,
    AS,
    AR,
    Reset_Tempo_s,
    \FSM_onehot_EP_reg[2]_0 ,
    s00_axi_aclk,
    bit_out_s,
    s00_axi_aresetn,
    \FSM_onehot_EP_reg[8]_0 ,
    FIN_0_s,
    FIN_1_s,
    D);
  output [4:0]Q;
  output [0:0]AS;
  output [0:0]AR;
  output Reset_Tempo_s;
  output \FSM_onehot_EP_reg[2]_0 ;
  input s00_axi_aclk;
  input bit_out_s;
  input s00_axi_aresetn;
  input [1:0]\FSM_onehot_EP_reg[8]_0 ;
  input FIN_0_s;
  input FIN_1_s;
  input [0:0]D;

  wire [0:0]AR;
  wire [0:0]AS;
  wire [0:0]Com_REG_s;
  wire Counter_MAE_n_0;
  wire Counter_MAE_n_1;
  wire [0:0]D;
  wire FIN_0_s;
  wire FIN_1_s;
  wire \FSM_onehot_EP[3]_i_1_n_0 ;
  wire \FSM_onehot_EP[4]_i_1_n_0 ;
  wire \FSM_onehot_EP[5]_i_1_n_0 ;
  wire \FSM_onehot_EP[6]_i_1_n_0 ;
  wire \FSM_onehot_EP[8]_i_1_n_0 ;
  wire \FSM_onehot_EP_reg[2]_0 ;
  wire [1:0]\FSM_onehot_EP_reg[8]_0 ;
  wire \FSM_onehot_EP_reg_n_0_[0] ;
  wire \FSM_onehot_EP_reg_n_0_[4] ;
  wire \FSM_onehot_EP_reg_n_0_[6] ;
  wire [4:0]Q;
  wire Reset_Tempo_s;
  wire bit_out_s;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE_Compteur Counter_MAE
       (.D({Counter_MAE_n_0,Counter_MAE_n_1}),
        .FIN_0_s(FIN_0_s),
        .FIN_1_s(FIN_1_s),
        .Q({Q[3],\FSM_onehot_EP_reg_n_0_[6] ,\FSM_onehot_EP_reg_n_0_[4] ,Q[1],Com_REG_s,Q[0],\FSM_onehot_EP_reg_n_0_[0] }),
        .s00_axi_aclk(s00_axi_aclk));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_EP[2]_i_2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(\FSM_onehot_EP_reg_n_0_[0] ),
        .I3(Q[4]),
        .I4(Com_REG_s),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_EP[3]_i_1 
       (.I0(Com_REG_s),
        .I1(bit_out_s),
        .O(\FSM_onehot_EP[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_EP[4]_i_1 
       (.I0(Q[1]),
        .I1(FIN_0_s),
        .I2(\FSM_onehot_EP_reg_n_0_[4] ),
        .O(\FSM_onehot_EP[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_EP[5]_i_1 
       (.I0(Com_REG_s),
        .I1(bit_out_s),
        .O(\FSM_onehot_EP[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_EP[6]_i_1 
       (.I0(Q[2]),
        .I1(FIN_1_s),
        .I2(\FSM_onehot_EP_reg_n_0_[6] ),
        .O(\FSM_onehot_EP[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \FSM_onehot_EP[8]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_onehot_EP_reg[8]_0 [1]),
        .I2(\FSM_onehot_EP_reg[8]_0 [0]),
        .I3(Q[4]),
        .O(\FSM_onehot_EP[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_EP_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D),
        .PRE(AS),
        .Q(\FSM_onehot_EP_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_EP_reg_n_0_[0] ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Counter_MAE_n_1),
        .Q(Com_REG_s));
  (* FSM_ENCODED_STATES = "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_EP[3]_i_1_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_EP[4]_i_1_n_0 ),
        .Q(\FSM_onehot_EP_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_EP[5]_i_1_n_0 ),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_EP[6]_i_1_n_0 ),
        .Q(\FSM_onehot_EP_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Counter_MAE_n_0),
        .Q(Q[3]));
  (* FSM_ENCODED_STATES = "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_EP_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_EP[8]_i_1_n_0 ),
        .Q(Q[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[1]_i_2 
       (.I0(Q[0]),
        .I1(\FSM_onehot_EP_reg_n_0_[0] ),
        .I2(Com_REG_s),
        .O(Reset_Tempo_s));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AS));
  LUT2 #(
    .INIT(4'h6)) 
    bit_out_s_i_1
       (.I0(Com_REG_s),
        .I1(Q[0]),
        .O(\FSM_onehot_EP_reg[2]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE_Compteur
   (D,
    s00_axi_aclk,
    Q,
    FIN_0_s,
    FIN_1_s);
  output [1:0]D;
  input s00_axi_aclk;
  input [6:0]Q;
  input FIN_0_s;
  input FIN_1_s;

  wire Cmd_Compteur;
  wire [1:0]D;
  wire FIN_0_s;
  wire FIN_1_s;
  wire \FSM_onehot_EP[7]_i_17_n_0 ;
  wire \FSM_onehot_EP[7]_i_18_n_0 ;
  wire \FSM_onehot_EP[7]_i_19_n_0 ;
  wire \FSM_onehot_EP[7]_i_20_n_0 ;
  wire \FSM_onehot_EP[7]_i_21_n_0 ;
  wire \FSM_onehot_EP[7]_i_22_n_0 ;
  wire [6:0]Q;
  wire Reset_Compteur;
  wire \cpt[0]_i_4_n_0 ;
  wire [31:0]cpt_reg;
  wire \cpt_reg[0]_i_2_n_0 ;
  wire \cpt_reg[0]_i_2_n_1 ;
  wire \cpt_reg[0]_i_2_n_2 ;
  wire \cpt_reg[0]_i_2_n_3 ;
  wire \cpt_reg[0]_i_2_n_4 ;
  wire \cpt_reg[0]_i_2_n_5 ;
  wire \cpt_reg[0]_i_2_n_6 ;
  wire \cpt_reg[0]_i_2_n_7 ;
  wire \cpt_reg[12]_i_1__0_n_0 ;
  wire \cpt_reg[12]_i_1__0_n_1 ;
  wire \cpt_reg[12]_i_1__0_n_2 ;
  wire \cpt_reg[12]_i_1__0_n_3 ;
  wire \cpt_reg[12]_i_1__0_n_4 ;
  wire \cpt_reg[12]_i_1__0_n_5 ;
  wire \cpt_reg[12]_i_1__0_n_6 ;
  wire \cpt_reg[12]_i_1__0_n_7 ;
  wire \cpt_reg[16]_i_1__0_n_0 ;
  wire \cpt_reg[16]_i_1__0_n_1 ;
  wire \cpt_reg[16]_i_1__0_n_2 ;
  wire \cpt_reg[16]_i_1__0_n_3 ;
  wire \cpt_reg[16]_i_1__0_n_4 ;
  wire \cpt_reg[16]_i_1__0_n_5 ;
  wire \cpt_reg[16]_i_1__0_n_6 ;
  wire \cpt_reg[16]_i_1__0_n_7 ;
  wire \cpt_reg[20]_i_1__0_n_0 ;
  wire \cpt_reg[20]_i_1__0_n_1 ;
  wire \cpt_reg[20]_i_1__0_n_2 ;
  wire \cpt_reg[20]_i_1__0_n_3 ;
  wire \cpt_reg[20]_i_1__0_n_4 ;
  wire \cpt_reg[20]_i_1__0_n_5 ;
  wire \cpt_reg[20]_i_1__0_n_6 ;
  wire \cpt_reg[20]_i_1__0_n_7 ;
  wire \cpt_reg[24]_i_1__0_n_0 ;
  wire \cpt_reg[24]_i_1__0_n_1 ;
  wire \cpt_reg[24]_i_1__0_n_2 ;
  wire \cpt_reg[24]_i_1__0_n_3 ;
  wire \cpt_reg[24]_i_1__0_n_4 ;
  wire \cpt_reg[24]_i_1__0_n_5 ;
  wire \cpt_reg[24]_i_1__0_n_6 ;
  wire \cpt_reg[24]_i_1__0_n_7 ;
  wire \cpt_reg[28]_i_1__0_n_1 ;
  wire \cpt_reg[28]_i_1__0_n_2 ;
  wire \cpt_reg[28]_i_1__0_n_3 ;
  wire \cpt_reg[28]_i_1__0_n_4 ;
  wire \cpt_reg[28]_i_1__0_n_5 ;
  wire \cpt_reg[28]_i_1__0_n_6 ;
  wire \cpt_reg[28]_i_1__0_n_7 ;
  wire \cpt_reg[4]_i_1__0_n_0 ;
  wire \cpt_reg[4]_i_1__0_n_1 ;
  wire \cpt_reg[4]_i_1__0_n_2 ;
  wire \cpt_reg[4]_i_1__0_n_3 ;
  wire \cpt_reg[4]_i_1__0_n_4 ;
  wire \cpt_reg[4]_i_1__0_n_5 ;
  wire \cpt_reg[4]_i_1__0_n_6 ;
  wire \cpt_reg[4]_i_1__0_n_7 ;
  wire \cpt_reg[8]_i_1__0_n_0 ;
  wire \cpt_reg[8]_i_1__0_n_1 ;
  wire \cpt_reg[8]_i_1__0_n_2 ;
  wire \cpt_reg[8]_i_1__0_n_3 ;
  wire \cpt_reg[8]_i_1__0_n_4 ;
  wire \cpt_reg[8]_i_1__0_n_5 ;
  wire \cpt_reg[8]_i_1__0_n_6 ;
  wire \cpt_reg[8]_i_1__0_n_7 ;
  wire in4;
  wire s00_axi_aclk;
  wire [3:3]\NLW_cpt_reg[28]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAFAFAEAAAEAAAEAA)) 
    \FSM_onehot_EP[2]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(in4),
        .I3(FIN_1_s),
        .I4(Q[4]),
        .I5(FIN_0_s),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \FSM_onehot_EP[7]_i_1 
       (.I0(FIN_0_s),
        .I1(Q[4]),
        .I2(FIN_1_s),
        .I3(in4),
        .I4(Q[5]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_17 
       (.I0(cpt_reg[24]),
        .I1(cpt_reg[25]),
        .I2(cpt_reg[26]),
        .I3(cpt_reg[27]),
        .I4(cpt_reg[28]),
        .I5(cpt_reg[29]),
        .O(\FSM_onehot_EP[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_18 
       (.I0(cpt_reg[6]),
        .I1(cpt_reg[7]),
        .I2(cpt_reg[8]),
        .I3(cpt_reg[9]),
        .I4(cpt_reg[10]),
        .I5(cpt_reg[11]),
        .O(\FSM_onehot_EP[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_19 
       (.I0(cpt_reg[18]),
        .I1(cpt_reg[19]),
        .I2(cpt_reg[20]),
        .I3(cpt_reg[21]),
        .I4(cpt_reg[22]),
        .I5(cpt_reg[23]),
        .O(\FSM_onehot_EP[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_EP[7]_i_20 
       (.I0(cpt_reg[12]),
        .I1(cpt_reg[13]),
        .I2(cpt_reg[14]),
        .I3(cpt_reg[15]),
        .I4(cpt_reg[16]),
        .I5(cpt_reg[17]),
        .O(\FSM_onehot_EP[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_EP[7]_i_21 
       (.I0(cpt_reg[30]),
        .I1(cpt_reg[31]),
        .O(\FSM_onehot_EP[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \FSM_onehot_EP[7]_i_22 
       (.I0(cpt_reg[1]),
        .I1(cpt_reg[2]),
        .I2(cpt_reg[0]),
        .I3(cpt_reg[3]),
        .I4(cpt_reg[4]),
        .I5(cpt_reg[5]),
        .O(\FSM_onehot_EP[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_EP[7]_i_4 
       (.I0(\FSM_onehot_EP[7]_i_17_n_0 ),
        .I1(\FSM_onehot_EP[7]_i_18_n_0 ),
        .I2(\FSM_onehot_EP[7]_i_19_n_0 ),
        .I3(\FSM_onehot_EP[7]_i_20_n_0 ),
        .I4(\FSM_onehot_EP[7]_i_21_n_0 ),
        .I5(\FSM_onehot_EP[7]_i_22_n_0 ),
        .O(in4));
  LUT2 #(
    .INIT(4'hE)) 
    \cpt[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(Cmd_Compteur));
  LUT2 #(
    .INIT(4'hE)) 
    \cpt[0]_i_3 
       (.I0(Q[0]),
        .I1(Q[6]),
        .O(Reset_Compteur));
  LUT1 #(
    .INIT(2'h1)) 
    \cpt[0]_i_4 
       (.I0(cpt_reg[0]),
        .O(\cpt[0]_i_4_n_0 ));
  FDCE \cpt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[0]_i_2_n_7 ),
        .Q(cpt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cpt_reg[0]_i_2_n_0 ,\cpt_reg[0]_i_2_n_1 ,\cpt_reg[0]_i_2_n_2 ,\cpt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cpt_reg[0]_i_2_n_4 ,\cpt_reg[0]_i_2_n_5 ,\cpt_reg[0]_i_2_n_6 ,\cpt_reg[0]_i_2_n_7 }),
        .S({cpt_reg[3:1],\cpt[0]_i_4_n_0 }));
  FDCE \cpt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[8]_i_1__0_n_5 ),
        .Q(cpt_reg[10]));
  FDCE \cpt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[8]_i_1__0_n_4 ),
        .Q(cpt_reg[11]));
  FDCE \cpt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[12]_i_1__0_n_7 ),
        .Q(cpt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[12]_i_1__0 
       (.CI(\cpt_reg[8]_i_1__0_n_0 ),
        .CO({\cpt_reg[12]_i_1__0_n_0 ,\cpt_reg[12]_i_1__0_n_1 ,\cpt_reg[12]_i_1__0_n_2 ,\cpt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[12]_i_1__0_n_4 ,\cpt_reg[12]_i_1__0_n_5 ,\cpt_reg[12]_i_1__0_n_6 ,\cpt_reg[12]_i_1__0_n_7 }),
        .S(cpt_reg[15:12]));
  FDCE \cpt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[12]_i_1__0_n_6 ),
        .Q(cpt_reg[13]));
  FDCE \cpt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[12]_i_1__0_n_5 ),
        .Q(cpt_reg[14]));
  FDCE \cpt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[12]_i_1__0_n_4 ),
        .Q(cpt_reg[15]));
  FDCE \cpt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[16]_i_1__0_n_7 ),
        .Q(cpt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[16]_i_1__0 
       (.CI(\cpt_reg[12]_i_1__0_n_0 ),
        .CO({\cpt_reg[16]_i_1__0_n_0 ,\cpt_reg[16]_i_1__0_n_1 ,\cpt_reg[16]_i_1__0_n_2 ,\cpt_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[16]_i_1__0_n_4 ,\cpt_reg[16]_i_1__0_n_5 ,\cpt_reg[16]_i_1__0_n_6 ,\cpt_reg[16]_i_1__0_n_7 }),
        .S(cpt_reg[19:16]));
  FDCE \cpt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[16]_i_1__0_n_6 ),
        .Q(cpt_reg[17]));
  FDCE \cpt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[16]_i_1__0_n_5 ),
        .Q(cpt_reg[18]));
  FDCE \cpt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[16]_i_1__0_n_4 ),
        .Q(cpt_reg[19]));
  FDCE \cpt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[0]_i_2_n_6 ),
        .Q(cpt_reg[1]));
  FDCE \cpt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[20]_i_1__0_n_7 ),
        .Q(cpt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[20]_i_1__0 
       (.CI(\cpt_reg[16]_i_1__0_n_0 ),
        .CO({\cpt_reg[20]_i_1__0_n_0 ,\cpt_reg[20]_i_1__0_n_1 ,\cpt_reg[20]_i_1__0_n_2 ,\cpt_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[20]_i_1__0_n_4 ,\cpt_reg[20]_i_1__0_n_5 ,\cpt_reg[20]_i_1__0_n_6 ,\cpt_reg[20]_i_1__0_n_7 }),
        .S(cpt_reg[23:20]));
  FDCE \cpt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[20]_i_1__0_n_6 ),
        .Q(cpt_reg[21]));
  FDCE \cpt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[20]_i_1__0_n_5 ),
        .Q(cpt_reg[22]));
  FDCE \cpt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[20]_i_1__0_n_4 ),
        .Q(cpt_reg[23]));
  FDCE \cpt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[24]_i_1__0_n_7 ),
        .Q(cpt_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[24]_i_1__0 
       (.CI(\cpt_reg[20]_i_1__0_n_0 ),
        .CO({\cpt_reg[24]_i_1__0_n_0 ,\cpt_reg[24]_i_1__0_n_1 ,\cpt_reg[24]_i_1__0_n_2 ,\cpt_reg[24]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[24]_i_1__0_n_4 ,\cpt_reg[24]_i_1__0_n_5 ,\cpt_reg[24]_i_1__0_n_6 ,\cpt_reg[24]_i_1__0_n_7 }),
        .S(cpt_reg[27:24]));
  FDCE \cpt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[24]_i_1__0_n_6 ),
        .Q(cpt_reg[25]));
  FDCE \cpt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[24]_i_1__0_n_5 ),
        .Q(cpt_reg[26]));
  FDCE \cpt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[24]_i_1__0_n_4 ),
        .Q(cpt_reg[27]));
  FDCE \cpt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[28]_i_1__0_n_7 ),
        .Q(cpt_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[28]_i_1__0 
       (.CI(\cpt_reg[24]_i_1__0_n_0 ),
        .CO({\NLW_cpt_reg[28]_i_1__0_CO_UNCONNECTED [3],\cpt_reg[28]_i_1__0_n_1 ,\cpt_reg[28]_i_1__0_n_2 ,\cpt_reg[28]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[28]_i_1__0_n_4 ,\cpt_reg[28]_i_1__0_n_5 ,\cpt_reg[28]_i_1__0_n_6 ,\cpt_reg[28]_i_1__0_n_7 }),
        .S(cpt_reg[31:28]));
  FDCE \cpt_reg[29] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[28]_i_1__0_n_6 ),
        .Q(cpt_reg[29]));
  FDCE \cpt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[0]_i_2_n_5 ),
        .Q(cpt_reg[2]));
  FDCE \cpt_reg[30] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[28]_i_1__0_n_5 ),
        .Q(cpt_reg[30]));
  FDCE \cpt_reg[31] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[28]_i_1__0_n_4 ),
        .Q(cpt_reg[31]));
  FDCE \cpt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[0]_i_2_n_4 ),
        .Q(cpt_reg[3]));
  FDCE \cpt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[4]_i_1__0_n_7 ),
        .Q(cpt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[4]_i_1__0 
       (.CI(\cpt_reg[0]_i_2_n_0 ),
        .CO({\cpt_reg[4]_i_1__0_n_0 ,\cpt_reg[4]_i_1__0_n_1 ,\cpt_reg[4]_i_1__0_n_2 ,\cpt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[4]_i_1__0_n_4 ,\cpt_reg[4]_i_1__0_n_5 ,\cpt_reg[4]_i_1__0_n_6 ,\cpt_reg[4]_i_1__0_n_7 }),
        .S(cpt_reg[7:4]));
  FDCE \cpt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[4]_i_1__0_n_6 ),
        .Q(cpt_reg[5]));
  FDCE \cpt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[4]_i_1__0_n_5 ),
        .Q(cpt_reg[6]));
  FDCE \cpt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[4]_i_1__0_n_4 ),
        .Q(cpt_reg[7]));
  FDCE \cpt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[8]_i_1__0_n_7 ),
        .Q(cpt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cpt_reg[8]_i_1__0 
       (.CI(\cpt_reg[4]_i_1__0_n_0 ),
        .CO({\cpt_reg[8]_i_1__0_n_0 ,\cpt_reg[8]_i_1__0_n_1 ,\cpt_reg[8]_i_1__0_n_2 ,\cpt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cpt_reg[8]_i_1__0_n_4 ,\cpt_reg[8]_i_1__0_n_5 ,\cpt_reg[8]_i_1__0_n_6 ,\cpt_reg[8]_i_1__0_n_7 }),
        .S(cpt_reg[11:8]));
  FDCE \cpt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Cmd_Compteur),
        .CLR(Reset_Compteur),
        .D(\cpt_reg[8]_i_1__0_n_6 ),
        .Q(cpt_reg[9]));
endmodule

(* CHECK_LICENSE_TYPE = "Project_FPGA_IP_Centrale_DCC_0_0,IP_Centrale_DCC_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "IP_Centrale_DCC_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (SORTIE_DCC,
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
  output SORTIE_DCC;
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
  wire SORTIE_DCC;
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

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_Centrale_DCC_v1_0 U0
       (.SORTIE_DCC(SORTIE_DCC),
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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REGISTRE_DCC
   (bit_out_s,
    bit_out_s_reg_0,
    Q,
    s00_axi_aclk,
    SR);
  output bit_out_s;
  input bit_out_s_reg_0;
  input [0:0]Q;
  input s00_axi_aclk;
  input [0:0]SR;

  wire [0:0]Q;
  wire [0:0]SR;
  wire bit_out_s;
  wire bit_out_s_reg_0;
  wire s00_axi_aclk;

  FDPE bit_out_s_reg
       (.C(s00_axi_aclk),
        .CE(bit_out_s_reg_0),
        .D(Q),
        .PRE(SR),
        .Q(bit_out_s));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TOP
   (SR,
    SORTIE_DCC,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [0:0]SR;
  output SORTIE_DCC;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire COMPTEUR_TEMPO_0_n_1;
  wire COMPTEUR_TEMPO_0_n_2;
  wire Clk_Temp;
  wire [1:1]Com_REG_s;
  wire DCC_0;
  wire FIN_0_s;
  wire FIN_1_s;
  wire GO_0_s;
  wire GO_1_s;
  wire MAE_0_n_0;
  wire MAE_0_n_8;
  wire Reset_DDC1_s;
  wire Reset_Tempo_s;
  wire SORTIE_DCC;
  wire [0:0]SR;
  wire Start_Tempo_s;
  wire bit_out_s;
  wire p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CLK_DIV CLK_DIV_0
       (.AS(SR),
        .Clk_Temp(Clk_Temp),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_COMPTEUR_TEMPO COMPTEUR_TEMPO_0
       (.Clk_Temp(Clk_Temp),
        .D(COMPTEUR_TEMPO_0_n_2),
        .\FSM_onehot_EP_reg[0] ({MAE_0_n_0,Start_Tempo_s}),
        .Q({p_1_in,COMPTEUR_TEMPO_0_n_1}),
        .Reset_Tempo_s(Reset_Tempo_s),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit0 DCC_Bit0_0
       (.AR(Reset_DDC1_s),
        .Clk_Temp(Clk_Temp),
        .FIN_0_s(FIN_0_s),
        .\FSM_onehot_EP_reg[1] (GO_0_s),
        .Q(DCC_0),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit1 DCC_Bit1_0
       (.AR(Reset_DDC1_s),
        .Clk_Temp(Clk_Temp),
        .FIN_1_s(FIN_1_s),
        .\FSM_onehot_EP_reg[1] (GO_1_s),
        .Q(DCC_0),
        .SORTIE_DCC(SORTIE_DCC),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE MAE_0
       (.AR(Reset_DDC1_s),
        .AS(SR),
        .D(COMPTEUR_TEMPO_0_n_2),
        .FIN_0_s(FIN_0_s),
        .FIN_1_s(FIN_1_s),
        .\FSM_onehot_EP_reg[2]_0 (MAE_0_n_8),
        .\FSM_onehot_EP_reg[8]_0 ({p_1_in,COMPTEUR_TEMPO_0_n_1}),
        .Q({MAE_0_n_0,Start_Tempo_s,GO_1_s,GO_0_s,Com_REG_s}),
        .Reset_Tempo_s(Reset_Tempo_s),
        .bit_out_s(bit_out_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REGISTRE_DCC REGISTRE_DCC_0
       (.Q(Com_REG_s),
        .SR(SR),
        .bit_out_s(bit_out_s),
        .bit_out_s_reg_0(MAE_0_n_8),
        .s00_axi_aclk(s00_axi_aclk));
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
