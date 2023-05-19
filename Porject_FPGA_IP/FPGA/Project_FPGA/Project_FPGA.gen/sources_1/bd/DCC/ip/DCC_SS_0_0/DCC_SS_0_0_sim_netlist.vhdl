-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May  9 14:49:10 2023
-- Host        : SUMarc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/marcs/OneDrive/Bureau/Desktop/FPGA/Project_FPGA/Project_FPGA.gen/sources_1/bd/DCC/ip/DCC_SS_0_0/DCC_SS_0_0_sim_netlist.vhdl
-- Design      : DCC_SS_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_SS_0_0_SEPT_SEGMENTS is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    SEL_SEG : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SEG : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DCC_SS_0_0_SEPT_SEGMENTS : entity is "SEPT_SEGMENTS";
end DCC_SS_0_0_SEPT_SEGMENTS;

architecture STRUCTURE of DCC_SS_0_0_SEPT_SEGMENTS is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \seg[0]_i_10_n_0\ : STD_LOGIC;
  signal \seg[0]_i_11_n_0\ : STD_LOGIC;
  signal \seg[0]_i_12_n_0\ : STD_LOGIC;
  signal \seg[0]_i_13_n_0\ : STD_LOGIC;
  signal \seg[0]_i_14_n_0\ : STD_LOGIC;
  signal \seg[0]_i_15_n_0\ : STD_LOGIC;
  signal \seg[0]_i_16_n_0\ : STD_LOGIC;
  signal \seg[0]_i_17_n_0\ : STD_LOGIC;
  signal \seg[0]_i_2_n_0\ : STD_LOGIC;
  signal \seg[0]_i_3_n_0\ : STD_LOGIC;
  signal \seg[0]_i_4_n_0\ : STD_LOGIC;
  signal \seg[0]_i_5_n_0\ : STD_LOGIC;
  signal \seg[0]_i_6_n_0\ : STD_LOGIC;
  signal \seg[0]_i_7_n_0\ : STD_LOGIC;
  signal \seg[0]_i_8_n_0\ : STD_LOGIC;
  signal \seg[0]_i_9_n_0\ : STD_LOGIC;
  signal \seg[1]_i_10_n_0\ : STD_LOGIC;
  signal \seg[1]_i_11_n_0\ : STD_LOGIC;
  signal \seg[1]_i_12_n_0\ : STD_LOGIC;
  signal \seg[1]_i_13_n_0\ : STD_LOGIC;
  signal \seg[1]_i_14_n_0\ : STD_LOGIC;
  signal \seg[1]_i_15_n_0\ : STD_LOGIC;
  signal \seg[1]_i_16_n_0\ : STD_LOGIC;
  signal \seg[1]_i_17_n_0\ : STD_LOGIC;
  signal \seg[1]_i_2_n_0\ : STD_LOGIC;
  signal \seg[1]_i_3_n_0\ : STD_LOGIC;
  signal \seg[1]_i_4_n_0\ : STD_LOGIC;
  signal \seg[1]_i_5_n_0\ : STD_LOGIC;
  signal \seg[1]_i_6_n_0\ : STD_LOGIC;
  signal \seg[1]_i_7_n_0\ : STD_LOGIC;
  signal \seg[1]_i_8_n_0\ : STD_LOGIC;
  signal \seg[1]_i_9_n_0\ : STD_LOGIC;
  signal \seg[2]_i_10_n_0\ : STD_LOGIC;
  signal \seg[2]_i_11_n_0\ : STD_LOGIC;
  signal \seg[2]_i_12_n_0\ : STD_LOGIC;
  signal \seg[2]_i_15_n_0\ : STD_LOGIC;
  signal \seg[2]_i_16_n_0\ : STD_LOGIC;
  signal \seg[2]_i_17_n_0\ : STD_LOGIC;
  signal \seg[2]_i_18_n_0\ : STD_LOGIC;
  signal \seg[2]_i_19_n_0\ : STD_LOGIC;
  signal \seg[2]_i_20_n_0\ : STD_LOGIC;
  signal \seg[2]_i_21_n_0\ : STD_LOGIC;
  signal \seg[2]_i_22_n_0\ : STD_LOGIC;
  signal \seg[2]_i_23_n_0\ : STD_LOGIC;
  signal \seg[2]_i_24_n_0\ : STD_LOGIC;
  signal \seg[2]_i_2_n_0\ : STD_LOGIC;
  signal \seg[2]_i_3_n_0\ : STD_LOGIC;
  signal \seg[2]_i_5_n_0\ : STD_LOGIC;
  signal \seg[2]_i_6_n_0\ : STD_LOGIC;
  signal \seg[2]_i_7_n_0\ : STD_LOGIC;
  signal \seg[2]_i_8_n_0\ : STD_LOGIC;
  signal \seg[2]_i_9_n_0\ : STD_LOGIC;
  signal \seg[3]_i_10_n_0\ : STD_LOGIC;
  signal \seg[3]_i_11_n_0\ : STD_LOGIC;
  signal \seg[3]_i_12_n_0\ : STD_LOGIC;
  signal \seg[3]_i_13_n_0\ : STD_LOGIC;
  signal \seg[3]_i_14_n_0\ : STD_LOGIC;
  signal \seg[3]_i_15_n_0\ : STD_LOGIC;
  signal \seg[3]_i_16_n_0\ : STD_LOGIC;
  signal \seg[3]_i_17_n_0\ : STD_LOGIC;
  signal \seg[3]_i_18_n_0\ : STD_LOGIC;
  signal \seg[3]_i_19_n_0\ : STD_LOGIC;
  signal \seg[3]_i_20_n_0\ : STD_LOGIC;
  signal \seg[3]_i_21_n_0\ : STD_LOGIC;
  signal \seg[3]_i_2_n_0\ : STD_LOGIC;
  signal \seg[3]_i_3_n_0\ : STD_LOGIC;
  signal \seg[3]_i_4_n_0\ : STD_LOGIC;
  signal \seg[3]_i_5_n_0\ : STD_LOGIC;
  signal \seg[3]_i_6_n_0\ : STD_LOGIC;
  signal \seg[3]_i_7_n_0\ : STD_LOGIC;
  signal \seg[3]_i_8_n_0\ : STD_LOGIC;
  signal \seg[3]_i_9_n_0\ : STD_LOGIC;
  signal \seg[4]_i_10_n_0\ : STD_LOGIC;
  signal \seg[4]_i_11_n_0\ : STD_LOGIC;
  signal \seg[4]_i_12_n_0\ : STD_LOGIC;
  signal \seg[4]_i_13_n_0\ : STD_LOGIC;
  signal \seg[4]_i_14_n_0\ : STD_LOGIC;
  signal \seg[4]_i_15_n_0\ : STD_LOGIC;
  signal \seg[4]_i_16_n_0\ : STD_LOGIC;
  signal \seg[4]_i_17_n_0\ : STD_LOGIC;
  signal \seg[4]_i_18_n_0\ : STD_LOGIC;
  signal \seg[4]_i_19_n_0\ : STD_LOGIC;
  signal \seg[4]_i_20_n_0\ : STD_LOGIC;
  signal \seg[4]_i_21_n_0\ : STD_LOGIC;
  signal \seg[4]_i_22_n_0\ : STD_LOGIC;
  signal \seg[4]_i_23_n_0\ : STD_LOGIC;
  signal \seg[4]_i_2_n_0\ : STD_LOGIC;
  signal \seg[4]_i_3_n_0\ : STD_LOGIC;
  signal \seg[4]_i_4_n_0\ : STD_LOGIC;
  signal \seg[4]_i_5_n_0\ : STD_LOGIC;
  signal \seg[4]_i_6_n_0\ : STD_LOGIC;
  signal \seg[4]_i_7_n_0\ : STD_LOGIC;
  signal \seg[4]_i_8_n_0\ : STD_LOGIC;
  signal \seg[4]_i_9_n_0\ : STD_LOGIC;
  signal \seg[5]_i_10_n_0\ : STD_LOGIC;
  signal \seg[5]_i_11_n_0\ : STD_LOGIC;
  signal \seg[5]_i_12_n_0\ : STD_LOGIC;
  signal \seg[5]_i_13_n_0\ : STD_LOGIC;
  signal \seg[5]_i_14_n_0\ : STD_LOGIC;
  signal \seg[5]_i_15_n_0\ : STD_LOGIC;
  signal \seg[5]_i_16_n_0\ : STD_LOGIC;
  signal \seg[5]_i_17_n_0\ : STD_LOGIC;
  signal \seg[5]_i_18_n_0\ : STD_LOGIC;
  signal \seg[5]_i_19_n_0\ : STD_LOGIC;
  signal \seg[5]_i_20_n_0\ : STD_LOGIC;
  signal \seg[5]_i_21_n_0\ : STD_LOGIC;
  signal \seg[5]_i_22_n_0\ : STD_LOGIC;
  signal \seg[5]_i_23_n_0\ : STD_LOGIC;
  signal \seg[5]_i_24_n_0\ : STD_LOGIC;
  signal \seg[5]_i_25_n_0\ : STD_LOGIC;
  signal \seg[5]_i_26_n_0\ : STD_LOGIC;
  signal \seg[5]_i_2_n_0\ : STD_LOGIC;
  signal \seg[5]_i_3_n_0\ : STD_LOGIC;
  signal \seg[5]_i_4_n_0\ : STD_LOGIC;
  signal \seg[5]_i_5_n_0\ : STD_LOGIC;
  signal \seg[5]_i_6_n_0\ : STD_LOGIC;
  signal \seg[5]_i_7_n_0\ : STD_LOGIC;
  signal \seg[5]_i_8_n_0\ : STD_LOGIC;
  signal \seg[5]_i_9_n_0\ : STD_LOGIC;
  signal \seg[6]_i_10_n_0\ : STD_LOGIC;
  signal \seg[6]_i_11_n_0\ : STD_LOGIC;
  signal \seg[6]_i_12_n_0\ : STD_LOGIC;
  signal \seg[6]_i_13_n_0\ : STD_LOGIC;
  signal \seg[6]_i_14_n_0\ : STD_LOGIC;
  signal \seg[6]_i_15_n_0\ : STD_LOGIC;
  signal \seg[6]_i_16_n_0\ : STD_LOGIC;
  signal \seg[6]_i_17_n_0\ : STD_LOGIC;
  signal \seg[6]_i_18_n_0\ : STD_LOGIC;
  signal \seg[6]_i_19_n_0\ : STD_LOGIC;
  signal \seg[6]_i_20_n_0\ : STD_LOGIC;
  signal \seg[6]_i_21_n_0\ : STD_LOGIC;
  signal \seg[6]_i_22_n_0\ : STD_LOGIC;
  signal \seg[6]_i_23_n_0\ : STD_LOGIC;
  signal \seg[6]_i_24_n_0\ : STD_LOGIC;
  signal \seg[6]_i_25_n_0\ : STD_LOGIC;
  signal \seg[6]_i_26_n_0\ : STD_LOGIC;
  signal \seg[6]_i_2_n_0\ : STD_LOGIC;
  signal \seg[6]_i_3_n_0\ : STD_LOGIC;
  signal \seg[6]_i_4_n_0\ : STD_LOGIC;
  signal \seg[6]_i_5_n_0\ : STD_LOGIC;
  signal \seg[6]_i_6_n_0\ : STD_LOGIC;
  signal \seg[6]_i_7_n_0\ : STD_LOGIC;
  signal \seg[6]_i_8_n_0\ : STD_LOGIC;
  signal \seg[6]_i_9_n_0\ : STD_LOGIC;
  signal \seg_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \seg_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \seg_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \^sel_seg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sel_seg[3]_i_10_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_11_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_12_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_13_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_14_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_15_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_4_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_5_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_6_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_7_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_8_n_0\ : STD_LOGIC;
  signal \sel_seg[3]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \counter[16]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[16]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \seg[0]_i_13\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \seg[0]_i_14\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg[0]_i_16\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \seg[0]_i_17\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \seg[0]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg[0]_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \seg[1]_i_13\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \seg[1]_i_15\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \seg[1]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg[1]_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \seg[2]_i_11\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \seg[2]_i_12\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \seg[2]_i_15\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \seg[2]_i_16\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \seg[2]_i_18\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \seg[2]_i_23\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \seg[2]_i_24\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \seg[2]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \seg[2]_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg[3]_i_11\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \seg[3]_i_15\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg[3]_i_18\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg[3]_i_19\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \seg[3]_i_21\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \seg[4]_i_14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \seg[4]_i_17\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg[4]_i_20\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \seg[4]_i_23\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \seg[5]_i_14\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \seg[5]_i_15\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \seg[5]_i_19\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \seg[5]_i_20\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \seg[5]_i_21\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \seg[5]_i_22\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \seg[5]_i_23\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \seg[5]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \seg[5]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \seg[5]_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \seg[6]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \seg[6]_i_14\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg[6]_i_16\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg[6]_i_18\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \seg[6]_i_23\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \seg[6]_i_26\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg[6]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \seg[6]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg[6]_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sel_seg[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sel_seg[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sel_seg[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sel_seg[3]_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sel_seg[3]_i_13\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sel_seg[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sel_seg[3]_i_6\ : label is "soft_lutpair7";
begin
  SR(0) <= \^sr\(0);
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \NLW_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(16)
    );
\counter[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \counter[16]_i_3_n_0\,
      I1 => \counter[16]_i_4_n_0\,
      I2 => \counter[16]_i_5_n_0\,
      I3 => counter(12),
      I4 => counter(11),
      I5 => counter(2),
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => counter(6),
      I1 => counter(4),
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(14),
      I5 => counter(9),
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter(15),
      I1 => counter(8),
      I2 => counter(10),
      I3 => counter(13),
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => counter(7),
      I1 => counter(5),
      I2 => counter(3),
      I3 => counter(16),
      O => \counter[16]_i_5_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \counter[16]_i_2_n_0\,
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(12),
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(16),
      Q => counter(16)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => counter_0(9),
      Q => counter(9)
    );
\seg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD0DFD0DFD0D0D0D"
    )
        port map (
      I0 => \seg[0]_i_2_n_0\,
      I1 => \seg[0]_i_3_n_0\,
      I2 => Q(1),
      I3 => \seg[0]_i_4_n_0\,
      I4 => \seg[5]_i_3_n_0\,
      I5 => \seg[0]_i_5_n_0\,
      O => p_1_in(0)
    );
\seg[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFFB51FB51"
    )
        port map (
      I0 => Q(3),
      I1 => counter(15),
      I2 => counter(16),
      I3 => counter(5),
      I4 => counter(4),
      I5 => Q(4),
      O => \seg[0]_i_10_n_0\
    );
\seg[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000DFFFF000D0000"
    )
        port map (
      I0 => \seg[6]_i_21_n_0\,
      I1 => \seg[5]_i_20_n_0\,
      I2 => \seg[0]_i_15_n_0\,
      I3 => \seg[0]_i_16_n_0\,
      I4 => Q(6),
      I5 => \seg[0]_i_17_n_0\,
      O => \seg[0]_i_11_n_0\
    );
\seg[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFBFFAFFFAD"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => counter(5),
      I3 => counter(4),
      I4 => Q(4),
      I5 => Q(5),
      O => \seg[0]_i_12_n_0\
    );
\seg[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      O => \seg[0]_i_13_n_0\
    );
\seg[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF54FF37"
    )
        port map (
      I0 => counter(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => counter(5),
      I4 => Q(4),
      O => \seg[0]_i_14_n_0\
    );
\seg[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => counter(16),
      I1 => counter(15),
      I2 => Q(3),
      I3 => counter(14),
      I4 => Q(4),
      I5 => Q(5),
      O => \seg[0]_i_15_n_0\
    );
\seg[0]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A0008"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => counter(4),
      I4 => counter(5),
      O => \seg[0]_i_16_n_0\
    );
\seg[0]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFF"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(5),
      O => \seg[0]_i_17_n_0\
    );
\seg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0111"
    )
        port map (
      I0 => \seg[0]_i_6_n_0\,
      I1 => \seg[0]_i_7_n_0\,
      I2 => \seg[5]_i_15_n_0\,
      I3 => \seg[0]_i_8_n_0\,
      I4 => Q(2),
      I5 => Q(8),
      O => \seg[0]_i_2_n_0\
    );
\seg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FFF0E0E0"
    )
        port map (
      I0 => Q(3),
      I1 => \seg[6]_i_16_n_0\,
      I2 => Q(2),
      I3 => Q(8),
      I4 => counter(4),
      I5 => counter(5),
      O => \seg[0]_i_3_n_0\
    );
\seg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDCFCCCFFF"
    )
        port map (
      I0 => \^sel_seg\(2),
      I1 => Q(2),
      I2 => \seg[0]_i_9_n_0\,
      I3 => Q(5),
      I4 => \seg[0]_i_10_n_0\,
      I5 => \sel_seg[3]_i_10_n_0\,
      O => \seg[0]_i_4_n_0\
    );
\seg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => Q(0),
      I1 => \seg[0]_i_11_n_0\,
      I2 => Q(7),
      I3 => \seg[0]_i_12_n_0\,
      I4 => Q(8),
      I5 => \^sel_seg\(0),
      O => \seg[0]_i_5_n_0\
    );
\seg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008AAA00AA00"
    )
        port map (
      I0 => Q(7),
      I1 => \seg[0]_i_13_n_0\,
      I2 => Q(5),
      I3 => counter(4),
      I4 => Q(6),
      I5 => counter(5),
      O => \seg[0]_i_6_n_0\
    );
\seg[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00130011"
    )
        port map (
      I0 => \seg[0]_i_14_n_0\,
      I1 => Q(7),
      I2 => Q(5),
      I3 => Q(6),
      I4 => \seg[5]_i_26_n_0\,
      O => \seg[0]_i_7_n_0\
    );
\seg[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FBE88004FFEC84"
    )
        port map (
      I0 => Q(3),
      I1 => Q(5),
      I2 => Q(4),
      I3 => counter(5),
      I4 => counter(4),
      I5 => counter(16),
      O => \seg[0]_i_8_n_0\
    );
\seg[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CFCE"
    )
        port map (
      I0 => Q(3),
      I1 => counter(5),
      I2 => counter(4),
      I3 => Q(4),
      O => \seg[0]_i_9_n_0\
    );
\seg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \seg[1]_i_2_n_0\,
      I1 => \seg[1]_i_3_n_0\,
      I2 => Q(2),
      I3 => \seg[1]_i_4_n_0\,
      I4 => Q(1),
      I5 => \seg[1]_i_5_n_0\,
      O => p_1_in(1)
    );
\seg[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FF7FFF7FFF7C"
    )
        port map (
      I0 => counter(16),
      I1 => Q(5),
      I2 => Q(4),
      I3 => Q(3),
      I4 => counter(4),
      I5 => counter(5),
      O => \seg[1]_i_10_n_0\
    );
\seg[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF2EEE2EE2"
    )
        port map (
      I0 => \seg[1]_i_8_n_0\,
      I1 => Q(4),
      I2 => counter(5),
      I3 => counter(4),
      I4 => Q(3),
      I5 => Q(5),
      O => \seg[1]_i_11_n_0\
    );
\seg[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FBF8080BFBFB080"
    )
        port map (
      I0 => \seg[1]_i_8_n_0\,
      I1 => Q(5),
      I2 => Q(4),
      I3 => Q(3),
      I4 => \^sel_seg\(3),
      I5 => counter(16),
      O => \seg[1]_i_12_n_0\
    );
\seg[1]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      O => \seg[1]_i_13_n_0\
    );
\seg[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555544445544"
    )
        port map (
      I0 => counter(4),
      I1 => \seg[1]_i_17_n_0\,
      I2 => Q(3),
      I3 => Q(4),
      I4 => Q(5),
      I5 => Q(6),
      O => \seg[1]_i_14_n_0\
    );
\seg[1]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(7),
      I1 => Q(4),
      O => \seg[1]_i_15_n_0\
    );
\seg[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000000000355"
    )
        port map (
      I0 => counter(5),
      I1 => counter(15),
      I2 => counter(16),
      I3 => Q(3),
      I4 => Q(5),
      I5 => Q(6),
      O => \seg[1]_i_16_n_0\
    );
\seg[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF5F0F100"
    )
        port map (
      I0 => Q(6),
      I1 => Q(4),
      I2 => Q(7),
      I3 => Q(5),
      I4 => counter(5),
      I5 => Q(8),
      O => \seg[1]_i_17_n_0\
    );
\seg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10101011"
    )
        port map (
      I0 => \sel_seg[3]_i_10_n_0\,
      I1 => \seg[1]_i_6_n_0\,
      I2 => \seg[1]_i_7_n_0\,
      I3 => \seg[1]_i_8_n_0\,
      I4 => Q(4),
      I5 => \seg[1]_i_9_n_0\,
      O => \seg[1]_i_2_n_0\
    );
\seg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBFBEEFBAAFB"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => \seg[1]_i_10_n_0\,
      I3 => Q(6),
      I4 => \seg[1]_i_11_n_0\,
      I5 => \seg[1]_i_12_n_0\,
      O => \seg[1]_i_3_n_0\
    );
\seg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400040000"
    )
        port map (
      I0 => \sel_seg[3]_i_10_n_0\,
      I1 => Q(5),
      I2 => counter(4),
      I3 => counter(5),
      I4 => Q(3),
      I5 => Q(4),
      O => \seg[1]_i_4_n_0\
    );
\seg[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8B888B8B8B8B"
    )
        port map (
      I0 => \seg[1]_i_13_n_0\,
      I1 => Q(2),
      I2 => \seg[1]_i_14_n_0\,
      I3 => Q(8),
      I4 => \seg[1]_i_15_n_0\,
      I5 => \seg[1]_i_16_n_0\,
      O => \seg[1]_i_5_n_0\
    );
\seg[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FDFDFD"
    )
        port map (
      I0 => counter(16),
      I1 => Q(3),
      I2 => Q(4),
      I3 => counter(5),
      I4 => counter(4),
      I5 => Q(5),
      O => \seg[1]_i_6_n_0\
    );
\seg[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3333373"
    )
        port map (
      I0 => Q(3),
      I1 => Q(5),
      I2 => Q(4),
      I3 => counter(5),
      I4 => counter(4),
      O => \seg[1]_i_7_n_0\
    );
\seg[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07070707F7F7F707"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      I2 => Q(3),
      I3 => counter(14),
      I4 => counter(15),
      I5 => counter(16),
      O => \seg[1]_i_8_n_0\
    );
\seg[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      I2 => Q(8),
      I3 => Q(0),
      O => \seg[1]_i_9_n_0\
    );
\seg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888AAAAA"
    )
        port map (
      I0 => \seg[2]_i_2_n_0\,
      I1 => \seg[2]_i_3_n_0\,
      I2 => Q(8),
      I3 => \seg_reg[2]_i_4_n_0\,
      I4 => \seg[2]_i_5_n_0\,
      I5 => \seg[2]_i_6_n_0\,
      O => p_1_in(2)
    );
\seg[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011101110111111"
    )
        port map (
      I0 => Q(2),
      I1 => Q(8),
      I2 => \seg[2]_i_18_n_0\,
      I3 => Q(7),
      I4 => counter(5),
      I5 => counter(4),
      O => \seg[2]_i_10_n_0\
    );
\seg[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \seg[2]_i_11_n_0\
    );
\seg[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => Q(3),
      I1 => counter(4),
      I2 => Q(4),
      I3 => counter(5),
      O => \seg[2]_i_12_n_0\
    );
\seg[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => Q(3),
      I1 => counter(15),
      I2 => counter(16),
      O => \seg[2]_i_15_n_0\
    );
\seg[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => counter(5),
      I1 => Q(3),
      I2 => counter(4),
      O => \seg[2]_i_16_n_0\
    );
\seg[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001100110015445"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => counter(5),
      I3 => counter(4),
      I4 => counter(16),
      I5 => counter(15),
      O => \seg[2]_i_17_n_0\
    );
\seg[2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001F"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(5),
      I3 => counter(4),
      I4 => Q(6),
      O => \seg[2]_i_18_n_0\
    );
\seg[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3FB51F2F2F7A2"
    )
        port map (
      I0 => Q(3),
      I1 => counter(4),
      I2 => counter(5),
      I3 => \seg[2]_i_23_n_0\,
      I4 => Q(4),
      I5 => Q(5),
      O => \seg[2]_i_19_n_0\
    );
\seg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBABBBBBBBBB"
    )
        port map (
      I0 => Q(1),
      I1 => \seg[2]_i_7_n_0\,
      I2 => \seg[2]_i_8_n_0\,
      I3 => \seg[2]_i_9_n_0\,
      I4 => Q(7),
      I5 => \seg[2]_i_10_n_0\,
      O => \seg[2]_i_2_n_0\
    );
\seg[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55CF55CF45CC45CF"
    )
        port map (
      I0 => \seg[2]_i_24_n_0\,
      I1 => counter(5),
      I2 => counter(4),
      I3 => Q(4),
      I4 => Q(5),
      I5 => Q(3),
      O => \seg[2]_i_20_n_0\
    );
\seg[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFF400040FFEFFF"
    )
        port map (
      I0 => Q(3),
      I1 => counter(16),
      I2 => Q(4),
      I3 => Q(5),
      I4 => counter(5),
      I5 => counter(4),
      O => \seg[2]_i_21_n_0\
    );
\seg[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FF00FF00FBAAB"
    )
        port map (
      I0 => \seg[4]_i_20_n_0\,
      I1 => Q(3),
      I2 => counter(4),
      I3 => counter(5),
      I4 => Q(5),
      I5 => Q(4),
      O => \seg[2]_i_22_n_0\
    );
\seg[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter(16),
      I1 => counter(15),
      O => \seg[2]_i_23_n_0\
    );
\seg[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(3),
      I1 => counter(15),
      I2 => counter(16),
      O => \seg[2]_i_24_n_0\
    );
\seg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000100FFFFFFFF"
    )
        port map (
      I0 => \seg[2]_i_11_n_0\,
      I1 => Q(2),
      I2 => Q(8),
      I3 => \seg[2]_i_12_n_0\,
      I4 => Q(5),
      I5 => Q(1),
      O => \seg[2]_i_3_n_0\
    );
\seg[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => Q(0),
      I1 => counter(5),
      I2 => counter(4),
      I3 => Q(8),
      O => \seg[2]_i_5_n_0\
    );
\seg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00540454FFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => \seg[2]_i_15_n_0\,
      I2 => \seg[6]_i_16_n_0\,
      I3 => counter(4),
      I4 => Q(3),
      I5 => Q(2),
      O => \seg[2]_i_6_n_0\
    );
\seg[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA32"
    )
        port map (
      I0 => Q(2),
      I1 => counter(5),
      I2 => Q(8),
      I3 => counter(4),
      O => \seg[2]_i_7_n_0\
    );
\seg[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF11B1FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => \sel_seg[3]_i_13_n_0\,
      I2 => counter(5),
      I3 => counter(4),
      I4 => \seg[4]_i_22_n_0\,
      I5 => Q(6),
      O => \seg[2]_i_8_n_0\
    );
\seg[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA000000AACF"
    )
        port map (
      I0 => counter(4),
      I1 => \seg[2]_i_16_n_0\,
      I2 => Q(4),
      I3 => Q(5),
      I4 => Q(6),
      I5 => \seg[2]_i_17_n_0\,
      O => \seg[2]_i_9_n_0\
    );
\seg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEA0000AAEAAAEA"
    )
        port map (
      I0 => \seg[3]_i_2_n_0\,
      I1 => \seg[3]_i_3_n_0\,
      I2 => Q(2),
      I3 => \seg[3]_i_4_n_0\,
      I4 => \seg[3]_i_5_n_0\,
      I5 => \seg[3]_i_6_n_0\,
      O => p_1_in(3)
    );
\seg[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg[3]_i_19_n_0\,
      I1 => \seg[3]_i_17_n_0\,
      I2 => Q(6),
      I3 => \seg[3]_i_20_n_0\,
      I4 => Q(5),
      I5 => \seg[3]_i_21_n_0\,
      O => \seg[3]_i_10_n_0\
    );
\seg[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => counter(5),
      I1 => Q(8),
      I2 => Q(0),
      O => \seg[3]_i_11_n_0\
    );
\seg[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEC1EFB1FFD1EFB"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => counter(5),
      I3 => counter(4),
      I4 => Q(3),
      I5 => counter(16),
      O => \seg[3]_i_12_n_0\
    );
\seg[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444777FF777C74"
    )
        port map (
      I0 => \seg[3]_i_18_n_0\,
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(4),
      I4 => counter(4),
      I5 => counter(5),
      O => \seg[3]_i_13_n_0\
    );
\seg[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EEFFFF00EAFFEB"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(4),
      I3 => counter(4),
      I4 => counter(5),
      I5 => Q(3),
      O => \seg[3]_i_14_n_0\
    );
\seg[3]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF808FD5"
    )
        port map (
      I0 => Q(3),
      I1 => counter(16),
      I2 => Q(4),
      I3 => counter(5),
      I4 => counter(4),
      O => \seg[3]_i_15_n_0\
    );
\seg[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0F01F101010"
    )
        port map (
      I0 => counter(15),
      I1 => counter(14),
      I2 => Q(3),
      I3 => counter(5),
      I4 => counter(4),
      I5 => counter(16),
      O => \seg[3]_i_16_n_0\
    );
\seg[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C3F0C0C0B0B0B0B"
    )
        port map (
      I0 => counter(4),
      I1 => Q(4),
      I2 => counter(5),
      I3 => counter(16),
      I4 => counter(15),
      I5 => Q(3),
      O => \seg[3]_i_17_n_0\
    );
\seg[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0FBFB"
    )
        port map (
      I0 => counter(16),
      I1 => counter(15),
      I2 => Q(4),
      I3 => counter(5),
      I4 => Q(3),
      O => \seg[3]_i_18_n_0\
    );
\seg[3]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => Q(3),
      O => \seg[3]_i_19_n_0\
    );
\seg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40554000FFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => counter(5),
      I2 => counter(4),
      I3 => \sel_seg[3]_i_10_n_0\,
      I4 => \seg[3]_i_7_n_0\,
      I5 => Q(1),
      O => \seg[3]_i_2_n_0\
    );
\seg[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000F404F4040"
    )
        port map (
      I0 => counter(16),
      I1 => counter(15),
      I2 => Q(4),
      I3 => counter(5),
      I4 => counter(4),
      I5 => Q(3),
      O => \seg[3]_i_20_n_0\
    );
\seg[3]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"76"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => Q(3),
      O => \seg[3]_i_21_n_0\
    );
\seg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FD5D"
    )
        port map (
      I0 => \seg[3]_i_8_n_0\,
      I1 => \seg[3]_i_9_n_0\,
      I2 => Q(7),
      I3 => \seg[3]_i_10_n_0\,
      I4 => Q(8),
      I5 => \seg[3]_i_11_n_0\,
      O => \seg[3]_i_3_n_0\
    );
\seg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A0A0B08"
    )
        port map (
      I0 => counter(3),
      I1 => \seg[6]_i_16_n_0\,
      I2 => counter(16),
      I3 => counter(15),
      I4 => Q(3),
      I5 => Q(0),
      O => \seg[3]_i_4_n_0\
    );
\seg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2A2AEA2A"
    )
        port map (
      I0 => \seg[5]_i_19_n_0\,
      I1 => counter(4),
      I2 => counter(5),
      I3 => Q(8),
      I4 => Q(2),
      I5 => Q(1),
      O => \seg[3]_i_5_n_0\
    );
\seg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E2FFFFFFFF"
    )
        port map (
      I0 => \seg[3]_i_12_n_0\,
      I1 => Q(6),
      I2 => \seg[3]_i_13_n_0\,
      I3 => Q(7),
      I4 => \seg[3]_i_14_n_0\,
      I5 => \seg[6]_i_9_n_0\,
      O => \seg[3]_i_6_n_0\
    );
\seg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000C3FE020232"
    )
        port map (
      I0 => counter(16),
      I1 => Q(4),
      I2 => Q(3),
      I3 => counter(4),
      I4 => counter(5),
      I5 => Q(5),
      O => \seg[3]_i_7_n_0\
    );
\seg[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2E222EFFFFFFFF"
    )
        port map (
      I0 => \seg[3]_i_15_n_0\,
      I1 => Q(5),
      I2 => \seg[1]_i_13_n_0\,
      I3 => Q(4),
      I4 => \seg[3]_i_16_n_0\,
      I5 => \seg[5]_i_15_n_0\,
      O => \seg[3]_i_8_n_0\
    );
\seg[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020232023232323"
    )
        port map (
      I0 => \seg[3]_i_17_n_0\,
      I1 => Q(6),
      I2 => Q(5),
      I3 => Q(4),
      I4 => \^sel_seg\(2),
      I5 => \seg[3]_i_18_n_0\,
      O => \seg[3]_i_9_n_0\
    );
\seg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \seg[6]_i_5_n_0\,
      I1 => \seg[4]_i_2_n_0\,
      I2 => Q(2),
      I3 => \seg[4]_i_3_n_0\,
      I4 => Q(1),
      I5 => \seg[4]_i_4_n_0\,
      O => p_1_in(4)
    );
\seg[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFEEFBEF"
    )
        port map (
      I0 => \seg[2]_i_11_n_0\,
      I1 => counter(5),
      I2 => Q(5),
      I3 => counter(4),
      I4 => Q(4),
      I5 => Q(3),
      O => \seg[4]_i_10_n_0\
    );
\seg[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232323222222277"
    )
        port map (
      I0 => \seg[4]_i_22_n_0\,
      I1 => counter(4),
      I2 => counter(5),
      I3 => counter(15),
      I4 => counter(16),
      I5 => Q(3),
      O => \seg[4]_i_11_n_0\
    );
\seg[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1454FFFFFFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => counter(5),
      I3 => Q(4),
      I4 => Q(7),
      I5 => Q(6),
      O => \seg[4]_i_12_n_0\
    );
\seg[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000D000C000D00"
    )
        port map (
      I0 => \^sel_seg\(1),
      I1 => \seg[4]_i_23_n_0\,
      I2 => Q(6),
      I3 => Q(7),
      I4 => Q(5),
      I5 => Q(4),
      O => \seg[4]_i_13_n_0\
    );
\seg[4]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBBF"
    )
        port map (
      I0 => counter(5),
      I1 => Q(2),
      I2 => Q(3),
      I3 => \seg[6]_i_16_n_0\,
      I4 => counter(4),
      O => \seg[4]_i_14_n_0\
    );
\seg[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40004F0F4FFF40FF"
    )
        port map (
      I0 => counter(16),
      I1 => counter(15),
      I2 => Q(4),
      I3 => Q(3),
      I4 => counter(4),
      I5 => counter(5),
      O => \seg[4]_i_15_n_0\
    );
\seg[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7A2F7FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => counter(15),
      I2 => counter(16),
      I3 => counter(4),
      I4 => counter(5),
      I5 => Q(4),
      O => \seg[4]_i_16_n_0\
    );
\seg[4]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0051"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => counter(4),
      I3 => counter(5),
      O => \seg[4]_i_17_n_0\
    );
\seg[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0AFFA0FFFBBBB"
    )
        port map (
      I0 => Q(5),
      I1 => counter(16),
      I2 => counter(5),
      I3 => counter(4),
      I4 => Q(4),
      I5 => Q(3),
      O => \seg[4]_i_18_n_0\
    );
\seg[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06060606F6F6F606"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      I2 => Q(3),
      I3 => counter(14),
      I4 => counter(15),
      I5 => counter(16),
      O => \seg[4]_i_19_n_0\
    );
\seg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8AAAAAAA8"
    )
        port map (
      I0 => \seg[2]_i_5_n_0\,
      I1 => \seg[4]_i_5_n_0\,
      I2 => \seg[4]_i_6_n_0\,
      I3 => \seg[4]_i_7_n_0\,
      I4 => \seg[4]_i_8_n_0\,
      I5 => \seg[4]_i_9_n_0\,
      O => \seg[4]_i_2_n_0\
    );
\seg[4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => counter(16),
      I1 => counter(15),
      I2 => counter(14),
      I3 => Q(3),
      O => \seg[4]_i_20_n_0\
    );
\seg[4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAABBBFBFAABBAA"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(4),
      I3 => counter(5),
      I4 => counter(4),
      I5 => Q(3),
      O => \seg[4]_i_21_n_0\
    );
\seg[4]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \seg[4]_i_22_n_0\
    );
\seg[4]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(4),
      I1 => Q(3),
      O => \seg[4]_i_23_n_0\
    );
\seg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001100000010"
    )
        port map (
      I0 => \sel_seg[3]_i_10_n_0\,
      I1 => counter(5),
      I2 => Q(5),
      I3 => counter(4),
      I4 => Q(4),
      I5 => Q(3),
      O => \seg[4]_i_3_n_0\
    );
\seg[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5D0000FFFFFFFF"
    )
        port map (
      I0 => \seg[4]_i_10_n_0\,
      I1 => \seg[4]_i_11_n_0\,
      I2 => \seg[4]_i_12_n_0\,
      I3 => \seg[4]_i_13_n_0\,
      I4 => \seg[6]_i_9_n_0\,
      I5 => \seg[4]_i_14_n_0\,
      O => \seg[4]_i_4_n_0\
    );
\seg[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000444040004"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => \seg[4]_i_15_n_0\,
      I3 => Q(5),
      I4 => \seg[4]_i_16_n_0\,
      I5 => \seg[4]_i_17_n_0\,
      O => \seg[4]_i_5_n_0\
    );
\seg[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11111131"
    )
        port map (
      I0 => \seg[4]_i_18_n_0\,
      I1 => \seg[2]_i_11_n_0\,
      I2 => Q(5),
      I3 => \seg[4]_i_19_n_0\,
      I4 => Q(4),
      I5 => Q(8),
      O => \seg[4]_i_6_n_0\
    );
\seg[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08A008FFFFFFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => counter(4),
      I3 => counter(5),
      I4 => Q(4),
      I5 => Q(6),
      O => \seg[4]_i_7_n_0\
    );
\seg[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EF4444E5"
    )
        port map (
      I0 => Q(4),
      I1 => \seg[4]_i_20_n_0\,
      I2 => Q(3),
      I3 => counter(5),
      I4 => counter(4),
      I5 => Q(5),
      O => \seg[4]_i_8_n_0\
    );
\seg[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40455555FFFFFFFF"
    )
        port map (
      I0 => \seg[4]_i_21_n_0\,
      I1 => \seg[1]_i_13_n_0\,
      I2 => Q(3),
      I3 => counter(16),
      I4 => \seg[5]_i_21_n_0\,
      I5 => Q(7),
      O => \seg[4]_i_9_n_0\
    );
\seg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AFFFF888A0000"
    )
        port map (
      I0 => \seg[5]_i_2_n_0\,
      I1 => \seg[5]_i_3_n_0\,
      I2 => \seg[5]_i_4_n_0\,
      I3 => \seg[5]_i_5_n_0\,
      I4 => Q(1),
      I5 => \seg[5]_i_6_n_0\,
      O => p_1_in(5)
    );
\seg[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABABABABAAA"
    )
        port map (
      I0 => Q(2),
      I1 => counter(5),
      I2 => counter(4),
      I3 => Q(8),
      I4 => Q(6),
      I5 => Q(7),
      O => \seg[5]_i_10_n_0\
    );
\seg[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D000D0000000D00"
    )
        port map (
      I0 => \seg[6]_i_21_n_0\,
      I1 => \seg[5]_i_20_n_0\,
      I2 => Q(7),
      I3 => \seg[5]_i_8_n_0\,
      I4 => \seg[5]_i_21_n_0\,
      I5 => \seg[6]_i_20_n_0\,
      O => \seg[5]_i_11_n_0\
    );
\seg[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0222AAAAAAAA"
    )
        port map (
      I0 => Q(7),
      I1 => counter(5),
      I2 => Q(3),
      I3 => Q(4),
      I4 => counter(4),
      I5 => Q(5),
      O => \seg[5]_i_12_n_0\
    );
\seg[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FC55"
    )
        port map (
      I0 => \seg[5]_i_22_n_0\,
      I1 => \seg[5]_i_23_n_0\,
      I2 => \seg[5]_i_24_n_0\,
      I3 => Q(7),
      I4 => Q(6),
      I5 => Q(8),
      O => \seg[5]_i_13_n_0\
    );
\seg[5]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBAA"
    )
        port map (
      I0 => Q(2),
      I1 => counter(4),
      I2 => counter(5),
      I3 => Q(8),
      O => \seg[5]_i_14_n_0\
    );
\seg[5]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => \seg[5]_i_15_n_0\
    );
\seg[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3A3A113C3A3ABB"
    )
        port map (
      I0 => Q(5),
      I1 => counter(5),
      I2 => counter(4),
      I3 => Q(4),
      I4 => Q(3),
      I5 => counter(16),
      O => \seg[5]_i_16_n_0\
    );
\seg[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44444744"
    )
        port map (
      I0 => \seg[5]_i_25_n_0\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(5),
      I4 => \seg[0]_i_9_n_0\,
      I5 => Q(8),
      O => \seg[5]_i_17_n_0\
    );
\seg[5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000F4"
    )
        port map (
      I0 => counter(5),
      I1 => Q(4),
      I2 => \seg[5]_i_26_n_0\,
      I3 => Q(6),
      I4 => Q(5),
      I5 => Q(7),
      O => \seg[5]_i_18_n_0\
    );
\seg[5]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => Q(2),
      I1 => \seg[6]_i_16_n_0\,
      I2 => Q(3),
      I3 => counter(4),
      I4 => counter(5),
      O => \seg[5]_i_19_n_0\
    );
\seg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04000404"
    )
        port map (
      I0 => \seg[5]_i_7_n_0\,
      I1 => \seg[5]_i_8_n_0\,
      I2 => \sel_seg[3]_i_10_n_0\,
      I3 => \seg[5]_i_9_n_0\,
      I4 => Q(5),
      I5 => \seg[5]_i_10_n_0\,
      O => \seg[5]_i_2_n_0\
    );
\seg[5]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(5),
      I1 => Q(3),
      O => \seg[5]_i_20_n_0\
    );
\seg[5]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \seg[5]_i_21_n_0\
    );
\seg[5]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF2B"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => counter(5),
      I4 => counter(4),
      O => \seg[5]_i_22_n_0\
    );
\seg[5]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13031300"
    )
        port map (
      I0 => Q(5),
      I1 => counter(4),
      I2 => Q(4),
      I3 => counter(5),
      I4 => Q(3),
      O => \seg[5]_i_23_n_0\
    );
\seg[5]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000800888"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => counter(4),
      I4 => counter(16),
      I5 => counter(15),
      O => \seg[5]_i_24_n_0\
    );
\seg[5]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55555455"
    )
        port map (
      I0 => counter(5),
      I1 => Q(6),
      I2 => Q(5),
      I3 => Q(4),
      I4 => Q(3),
      I5 => counter(4),
      O => \seg[5]_i_25_n_0\
    );
\seg[5]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000401151"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => counter(15),
      I3 => counter(16),
      I4 => counter(4),
      I5 => counter(5),
      O => \seg[5]_i_26_n_0\
    );
\seg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFEFFFFFFFF"
    )
        port map (
      I0 => \seg[6]_i_16_n_0\,
      I1 => counter(15),
      I2 => counter(16),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => \seg[5]_i_3_n_0\
    );
\seg[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFBFBBB"
    )
        port map (
      I0 => \seg[5]_i_11_n_0\,
      I1 => Q(6),
      I2 => \seg[5]_i_12_n_0\,
      I3 => \seg[6]_i_15_n_0\,
      I4 => Q(5),
      I5 => \seg[5]_i_13_n_0\,
      O => \seg[5]_i_4_n_0\
    );
\seg[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => counter(4),
      I1 => Q(8),
      I2 => Q(0),
      O => \seg[5]_i_5_n_0\
    );
\seg[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555540"
    )
        port map (
      I0 => \seg[5]_i_14_n_0\,
      I1 => \seg[5]_i_15_n_0\,
      I2 => \seg[5]_i_16_n_0\,
      I3 => \seg[5]_i_17_n_0\,
      I4 => \seg[5]_i_18_n_0\,
      I5 => \seg[5]_i_19_n_0\,
      O => \seg[5]_i_6_n_0\
    );
\seg[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00FB51"
    )
        port map (
      I0 => Q(3),
      I1 => counter(15),
      I2 => counter(16),
      I3 => counter(5),
      I4 => Q(4),
      I5 => Q(5),
      O => \seg[5]_i_7_n_0\
    );
\seg[5]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Q(4),
      I1 => counter(4),
      I2 => Q(5),
      O => \seg[5]_i_8_n_0\
    );
\seg[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5455"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => Q(3),
      I3 => Q(4),
      O => \seg[5]_i_9_n_0\
    );
\seg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBABAABBBB"
    )
        port map (
      I0 => \seg[6]_i_2_n_0\,
      I1 => \seg[6]_i_3_n_0\,
      I2 => \seg[6]_i_4_n_0\,
      I3 => Q(0),
      I4 => Q(2),
      I5 => \seg[6]_i_5_n_0\,
      O => p_1_in(6)
    );
\seg[6]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222000"
    )
        port map (
      I0 => Q(5),
      I1 => counter(4),
      I2 => Q(4),
      I3 => Q(3),
      I4 => counter(5),
      O => \seg[6]_i_10_n_0\
    );
\seg[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF0FEE22"
    )
        port map (
      I0 => \sel_seg[3]_i_13_n_0\,
      I1 => Q(3),
      I2 => counter(5),
      I3 => counter(4),
      I4 => Q(4),
      I5 => Q(5),
      O => \seg[6]_i_11_n_0\
    );
\seg[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F7A2FFFFFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => \seg[6]_i_20_n_0\,
      I3 => \^sel_seg\(1),
      I4 => \seg[6]_i_21_n_0\,
      I5 => \seg[5]_i_15_n_0\,
      O => \seg[6]_i_12_n_0\
    );
\seg[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0D0D00000D0D"
    )
        port map (
      I0 => \seg[6]_i_22_n_0\,
      I1 => \seg[6]_i_23_n_0\,
      I2 => Q(6),
      I3 => \seg[6]_i_24_n_0\,
      I4 => Q(7),
      I5 => \seg[6]_i_25_n_0\,
      O => \seg[6]_i_13_n_0\
    );
\seg[6]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(7),
      O => \seg[6]_i_14_n_0\
    );
\seg[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDCF888ADDCFDDCF"
    )
        port map (
      I0 => Q(4),
      I1 => counter(4),
      I2 => counter(5),
      I3 => Q(3),
      I4 => \seg[6]_i_26_n_0\,
      I5 => counter(14),
      O => \seg[6]_i_15_n_0\
    );
\seg[6]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(8),
      I3 => Q(4),
      I4 => Q(5),
      O => \seg[6]_i_16_n_0\
    );
\seg[6]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000EFFFEFFFE"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => Q(3),
      I3 => Q(4),
      I4 => counter(4),
      I5 => counter(5),
      O => \seg[6]_i_17_n_0\
    );
\seg[6]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF14"
    )
        port map (
      I0 => counter(5),
      I1 => Q(3),
      I2 => Q(4),
      I3 => counter(4),
      O => \seg[6]_i_18_n_0\
    );
\seg[6]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFD0CFCFCFCF"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => Q(4),
      I3 => counter(16),
      I4 => counter(15),
      I5 => Q(3),
      O => \seg[6]_i_19_n_0\
    );
\seg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445554544444444"
    )
        port map (
      I0 => Q(1),
      I1 => \seg[6]_i_6_n_0\,
      I2 => \seg[6]_i_7_n_0\,
      I3 => Q(7),
      I4 => \seg[6]_i_8_n_0\,
      I5 => \seg[6]_i_9_n_0\,
      O => \seg[6]_i_2_n_0\
    );
\seg[6]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0BBBBFFFFBBBB"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      I2 => counter(16),
      I3 => counter(15),
      I4 => Q(3),
      I5 => counter(14),
      O => \seg[6]_i_20_n_0\
    );
\seg[6]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400044404"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => counter(4),
      I3 => Q(3),
      I4 => counter(16),
      I5 => counter(15),
      O => \seg[6]_i_21_n_0\
    );
\seg[6]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDDD8"
    )
        port map (
      I0 => Q(3),
      I1 => counter(4),
      I2 => counter(16),
      I3 => counter(15),
      I4 => Q(4),
      I5 => Q(5),
      O => \seg[6]_i_22_n_0\
    );
\seg[6]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => counter(4),
      I3 => counter(5),
      O => \seg[6]_i_23_n_0\
    );
\seg[6]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAA8AAA8AAAAA"
    )
        port map (
      I0 => Q(6),
      I1 => counter(5),
      I2 => Q(4),
      I3 => counter(4),
      I4 => Q(5),
      I5 => Q(3),
      O => \seg[6]_i_24_n_0\
    );
\seg[6]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000C003E"
    )
        port map (
      I0 => Q(3),
      I1 => counter(5),
      I2 => Q(5),
      I3 => counter(4),
      I4 => Q(4),
      I5 => Q(6),
      O => \seg[6]_i_25_n_0\
    );
\seg[6]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => counter(16),
      I1 => counter(15),
      I2 => Q(3),
      O => \seg[6]_i_26_n_0\
    );
\seg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008B88FFFFFFFF"
    )
        port map (
      I0 => \^sel_seg\(1),
      I1 => \sel_seg[3]_i_10_n_0\,
      I2 => \seg[6]_i_10_n_0\,
      I3 => \seg[6]_i_11_n_0\,
      I4 => Q(2),
      I5 => Q(1),
      O => \seg[6]_i_3_n_0\
    );
\seg[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B888B8888888B8"
    )
        port map (
      I0 => \^sel_seg\(0),
      I1 => Q(8),
      I2 => \seg[6]_i_12_n_0\,
      I3 => \seg[6]_i_13_n_0\,
      I4 => \seg[6]_i_14_n_0\,
      I5 => \seg[6]_i_15_n_0\,
      O => \seg[6]_i_4_n_0\
    );
\seg[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE02"
    )
        port map (
      I0 => counter(16),
      I1 => \seg[6]_i_16_n_0\,
      I2 => Q(3),
      I3 => counter(4),
      I4 => Q(0),
      O => \seg[6]_i_5_n_0\
    );
\seg[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BA"
    )
        port map (
      I0 => Q(2),
      I1 => counter(4),
      I2 => Q(8),
      I3 => counter(5),
      O => \seg[6]_i_6_n_0\
    );
\seg[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg[6]_i_17_n_0\,
      I1 => \seg[6]_i_18_n_0\,
      I2 => Q(6),
      I3 => \^sel_seg\(1),
      I4 => Q(5),
      I5 => \seg[6]_i_19_n_0\,
      O => \seg[6]_i_7_n_0\
    );
\seg[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFAEA0511"
    )
        port map (
      I0 => Q(6),
      I1 => Q(4),
      I2 => Q(5),
      I3 => Q(3),
      I4 => counter(5),
      I5 => counter(4),
      O => \seg[6]_i_8_n_0\
    );
\seg[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      I1 => Q(2),
      O => \seg[6]_i_9_n_0\
    );
\seg_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => p_1_in(0),
      PRE => \^sr\(0),
      Q => SEG(0)
    );
\seg_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => p_1_in(1),
      PRE => \^sr\(0),
      Q => SEG(1)
    );
\seg_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => p_1_in(2),
      PRE => \^sr\(0),
      Q => SEG(2)
    );
\seg_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[2]_i_19_n_0\,
      I1 => \seg[2]_i_20_n_0\,
      O => \seg_reg[2]_i_13_n_0\,
      S => Q(6)
    );
\seg_reg[2]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \seg[2]_i_21_n_0\,
      I1 => \seg[2]_i_22_n_0\,
      O => \seg_reg[2]_i_14_n_0\,
      S => Q(6)
    );
\seg_reg[2]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_reg[2]_i_13_n_0\,
      I1 => \seg_reg[2]_i_14_n_0\,
      O => \seg_reg[2]_i_4_n_0\,
      S => Q(7)
    );
\seg_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => p_1_in(3),
      PRE => \^sr\(0),
      Q => SEG(3)
    );
\seg_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => p_1_in(4),
      PRE => \^sr\(0),
      Q => SEG(4)
    );
\seg_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => p_1_in(5),
      PRE => \^sr\(0),
      Q => SEG(5)
    );
\seg_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => p_1_in(6),
      PRE => \^sr\(0),
      Q => SEG(6)
    );
\sel_seg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      O => \^sel_seg\(0)
    );
\sel_seg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      O => \^sel_seg\(1)
    );
\sel_seg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      O => \^sel_seg\(2)
    );
\sel_seg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400040000"
    )
        port map (
      I0 => \sel_seg[3]_i_4_n_0\,
      I1 => \sel_seg[3]_i_5_n_0\,
      I2 => \sel_seg[3]_i_6_n_0\,
      I3 => \sel_seg[3]_i_7_n_0\,
      I4 => Q(2),
      I5 => \sel_seg[3]_i_8_n_0\,
      O => \sel_seg[3]_i_1_n_0\
    );
\sel_seg[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(6),
      I2 => Q(7),
      O => \sel_seg[3]_i_10_n_0\
    );
\sel_seg[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0D0FFF0FFF0F0"
    )
        port map (
      I0 => counter(10),
      I1 => counter(9),
      I2 => counter(7),
      I3 => \sel_seg[3]_i_13_n_0\,
      I4 => counter(14),
      I5 => counter(13),
      O => \sel_seg[3]_i_11_n_0\
    );
\sel_seg[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(8),
      I3 => counter(14),
      I4 => \sel_seg[3]_i_14_n_0\,
      I5 => \sel_seg[3]_i_15_n_0\,
      O => \sel_seg[3]_i_12_n_0\
    );
\sel_seg[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      O => \sel_seg[3]_i_13_n_0\
    );
\sel_seg[3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter(12),
      I1 => counter(11),
      I2 => counter(2),
      O => \sel_seg[3]_i_14_n_0\
    );
\sel_seg[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD0FFD0D0D0D0"
    )
        port map (
      I0 => counter(7),
      I1 => counter(8),
      I2 => counter(10),
      I3 => counter(13),
      I4 => counter(14),
      I5 => counter(16),
      O => \sel_seg[3]_i_15_n_0\
    );
\sel_seg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      O => \^sel_seg\(3)
    );
\sel_seg[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\sel_seg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF50545554"
    )
        port map (
      I0 => counter(7),
      I1 => counter(8),
      I2 => counter(13),
      I3 => counter(9),
      I4 => counter(14),
      I5 => \sel_seg[3]_i_9_n_0\,
      O => \sel_seg[3]_i_4_n_0\
    );
\sel_seg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF010101FFFFFFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => \sel_seg[3]_i_10_n_0\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \sel_seg[3]_i_5_n_0\
    );
\sel_seg[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD500"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(8),
      I4 => \sel_seg[3]_i_11_n_0\,
      O => \sel_seg[3]_i_6_n_0\
    );
\sel_seg[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF9FF6"
    )
        port map (
      I0 => counter(8),
      I1 => counter(7),
      I2 => counter(6),
      I3 => counter(4),
      I4 => \sel_seg[3]_i_12_n_0\,
      O => \sel_seg[3]_i_7_n_0\
    );
\sel_seg[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"071717170717171F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(6),
      I2 => Q(7),
      I3 => Q(4),
      I4 => Q(5),
      I5 => Q(3),
      O => \sel_seg[3]_i_8_n_0\
    );
\sel_seg[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFFFFFFFFFFFF8A"
    )
        port map (
      I0 => counter(15),
      I1 => counter(13),
      I2 => counter(14),
      I3 => counter(3),
      I4 => counter(7),
      I5 => counter(5),
      O => \sel_seg[3]_i_9_n_0\
    );
\sel_seg_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => \^sel_seg\(0),
      PRE => \^sr\(0),
      Q => SEL_SEG(0)
    );
\sel_seg_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => \^sel_seg\(1),
      PRE => \^sr\(0),
      Q => SEL_SEG(1)
    );
\sel_seg_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => \^sel_seg\(2),
      PRE => \^sr\(0),
      Q => SEL_SEG(2)
    );
\sel_seg_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \sel_seg[3]_i_1_n_0\,
      D => \^sel_seg\(3),
      PRE => \^sr\(0),
      Q => SEL_SEG(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_SS_0_0_SS_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    SEL_SEG : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SEG : out STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DCC_SS_0_0_SS_v1_0_S00_AXI : entity is "SS_v1_0_S00_AXI";
end DCC_SS_0_0_SS_v1_0_S00_AXI;

architecture STRUCTURE of DCC_SS_0_0_SS_v1_0_S00_AXI is
  signal S_AXI_ARESET : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal led_index : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal led_setting : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair36";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
L0: entity work.DCC_SS_0_0_SEPT_SEGMENTS
     port map (
      Q(8 downto 3) => led_setting(5 downto 0),
      Q(2 downto 1) => led_index(1 downto 0),
      Q(0) => \slv_reg3_reg_n_0_[0]\,
      SEG(6 downto 0) => SEG(6 downto 0),
      SEL_SEG(3 downto 0) => SEL_SEG(3 downto 0),
      SR(0) => S_AXI_ARESET,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => S_AXI_ARESET
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => S_AXI_ARESET
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => S_AXI_ARESET
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => S_AXI_ARESET
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => S_AXI_ARESET
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => S_AXI_ARESET
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => S_AXI_ARESET
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => S_AXI_ARESET
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => \slv_reg3_reg_n_0_[0]\,
      I2 => slv_reg0(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg2(10),
      I2 => slv_reg0(10),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg2(11),
      I2 => slv_reg0(11),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[11]\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => \slv_reg3_reg_n_0_[12]\,
      I2 => slv_reg0(12),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => slv_reg0(13),
      I1 => slv_reg1(13),
      I2 => slv_reg2(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => \slv_reg3_reg_n_0_[14]\,
      I2 => slv_reg0(14),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => slv_reg1(15),
      I2 => \slv_reg3_reg_n_0_[15]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => \slv_reg3_reg_n_0_[16]\,
      I2 => slv_reg0(16),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => \slv_reg3_reg_n_0_[17]\,
      I2 => slv_reg0(17),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg2(18),
      I2 => slv_reg0(18),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg2(19),
      I2 => slv_reg0(19),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg1(1),
      I2 => led_index(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => \slv_reg3_reg_n_0_[20]\,
      I2 => slv_reg0(20),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => slv_reg1(21),
      I2 => slv_reg2(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => \slv_reg3_reg_n_0_[22]\,
      I2 => slv_reg0(22),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => slv_reg1(23),
      I2 => \slv_reg3_reg_n_0_[23]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => \slv_reg3_reg_n_0_[24]\,
      I2 => slv_reg0(24),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => \slv_reg3_reg_n_0_[25]\,
      I2 => slv_reg0(25),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg2(26),
      I2 => slv_reg0(26),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg2(27),
      I2 => slv_reg0(27),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => \slv_reg3_reg_n_0_[28]\,
      I2 => slv_reg0(28),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => slv_reg1(29),
      I2 => slv_reg2(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg1(2),
      I2 => led_index(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => \slv_reg3_reg_n_0_[30]\,
      I2 => slv_reg0(30),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => slv_reg1(31),
      I2 => \slv_reg3_reg_n_0_[31]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg2(3),
      I2 => slv_reg0(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => led_setting(0),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg2(4),
      I2 => slv_reg0(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => led_setting(1),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => led_setting(2),
      I2 => slv_reg0(5),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(6),
      I1 => slv_reg1(6),
      I2 => led_setting(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => led_setting(4),
      I2 => slv_reg0(7),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => led_setting(5),
      I2 => slv_reg0(8),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => \slv_reg3_reg_n_0_[9]\,
      I2 => slv_reg0(9),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => S_AXI_ARESET
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => S_AXI_ARESET
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => S_AXI_ARESET
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => S_AXI_ARESET
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => S_AXI_ARESET
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => S_AXI_ARESET
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => S_AXI_ARESET
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => S_AXI_ARESET
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => led_index(0),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => led_index(1),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg3_reg_n_0_[30]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg3_reg_n_0_[31]\,
      R => S_AXI_ARESET
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => led_setting(0),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => led_setting(1),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => led_setting(2),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => led_setting(3),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => led_setting(4),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => led_setting(5),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => S_AXI_ARESET
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_SS_0_0_SS_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    SEL_SEG : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SEG : out STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DCC_SS_0_0_SS_v1_0 : entity is "SS_v1_0";
end DCC_SS_0_0_SS_v1_0;

architecture STRUCTURE of DCC_SS_0_0_SS_v1_0 is
begin
SS_v1_0_S00_AXI_inst: entity work.DCC_SS_0_0_SS_v1_0_S00_AXI
     port map (
      SEG(6 downto 0) => SEG(6 downto 0),
      SEL_SEG(3 downto 0) => SEL_SEG(3 downto 0),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_SS_0_0 is
  port (
    SEL_SEG : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SEG : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DCC_SS_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DCC_SS_0_0 : entity is "DCC_SS_0_0,SS_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DCC_SS_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of DCC_SS_0_0 : entity is "SS_v1_0,Vivado 2020.2";
end DCC_SS_0_0;

architecture STRUCTURE of DCC_SS_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^seg\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  SEG(7) <= \<const1>\;
  SEG(6 downto 0) <= \^seg\(6 downto 0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.DCC_SS_0_0_SS_v1_0
     port map (
      SEG(6 downto 0) => \^seg\(6 downto 0),
      SEL_SEG(3 downto 0) => SEL_SEG(3 downto 0),
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
