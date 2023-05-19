-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri May 19 16:39:56 2023
-- Host        : PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/chmis/Desktop/Project_FPGA/Project_FPGA.sim/sim_1/synth/func/xsim/TOP_tb_func_synth.vhd
-- Design      : TOP
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CLK_DIV is
  port (
    Clk_Temp : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Reset_IBUF : in STD_LOGIC
  );
end CLK_DIV;

architecture STRUCTURE of CLK_DIV is
  signal \^clk_temp\ : STD_LOGIC;
  signal \Clk_Temp__0_n_0\ : STD_LOGIC;
  signal Clk_Temp_i_1_n_0 : STD_LOGIC;
  signal Div : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \Div[0]_i_1_n_0\ : STD_LOGIC;
  signal Div_0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Div[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Div[3]_i_1\ : label is "soft_lutpair0";
begin
  Clk_Temp <= \^clk_temp\;
\Clk_Temp__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Div(1),
      I1 => Div(2),
      O => \Clk_Temp__0_n_0\
    );
Clk_Temp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => Div(5),
      I1 => Div(0),
      I2 => Div(4),
      I3 => \Clk_Temp__0_n_0\,
      I4 => Div(3),
      I5 => \^clk_temp\,
      O => Clk_Temp_i_1_n_0
    );
Clk_Temp_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => Clk_Temp_i_1_n_0,
      Q => \^clk_temp\
    );
\Div[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Div(0),
      O => \Div[0]_i_1_n_0\
    );
\Div[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A855AA55AA55AA"
    )
        port map (
      I0 => Div(0),
      I1 => Div(3),
      I2 => Div(2),
      I3 => Div(1),
      I4 => Div(4),
      I5 => Div(5),
      O => Div_0(1)
    );
\Div[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => Div(0),
      I1 => Div(2),
      I2 => Div(1),
      O => Div_0(2)
    );
\Div[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => Div(0),
      I1 => Div(3),
      I2 => Div(2),
      I3 => Div(1),
      O => Div_0(3)
    );
\Div[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFD80007FFF8000"
    )
        port map (
      I0 => Div(0),
      I1 => Div(3),
      I2 => Div(2),
      I3 => Div(1),
      I4 => Div(4),
      I5 => Div(5),
      O => Div_0(4)
    );
\Div[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFDFFFF80000000"
    )
        port map (
      I0 => Div(0),
      I1 => Div(3),
      I2 => Div(2),
      I3 => Div(1),
      I4 => Div(4),
      I5 => Div(5),
      O => Div_0(5)
    );
\Div_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => \Div[0]_i_1_n_0\,
      Q => Div(0)
    );
\Div_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => Div_0(1),
      Q => Div(1)
    );
\Div_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => Div_0(2),
      Q => Div(2)
    );
\Div_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => Div_0(3),
      Q => Div(3)
    );
\Div_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => Div_0(4),
      Q => Div(4)
    );
\Div_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => Div_0(5),
      Q => Div(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity COMPTEUR_TEMPO is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp_BUFG : in STD_LOGIC;
    Reset_Tempo_s : in STD_LOGIC;
    \FSM_onehot_EP_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC
  );
end COMPTEUR_TEMPO;

architecture STRUCTURE of COMPTEUR_TEMPO is
  signal \Cpt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cpt[0]_i_3_n_0\ : STD_LOGIC;
  signal \Cpt[0]_i_4_n_0\ : STD_LOGIC;
  signal \Cpt[0]_i_5_n_0\ : STD_LOGIC;
  signal \Cpt[0]_i_6_n_0\ : STD_LOGIC;
  signal \Cpt[0]_i_7_n_0\ : STD_LOGIC;
  signal \Cpt[12]_i_2_n_0\ : STD_LOGIC;
  signal \Cpt[12]_i_3_n_0\ : STD_LOGIC;
  signal \Cpt[4]_i_2_n_0\ : STD_LOGIC;
  signal \Cpt[4]_i_3_n_0\ : STD_LOGIC;
  signal \Cpt[4]_i_4_n_0\ : STD_LOGIC;
  signal \Cpt[4]_i_5_n_0\ : STD_LOGIC;
  signal \Cpt[8]_i_2_n_0\ : STD_LOGIC;
  signal \Cpt[8]_i_3_n_0\ : STD_LOGIC;
  signal \Cpt[8]_i_4_n_0\ : STD_LOGIC;
  signal \Cpt[8]_i_5_n_0\ : STD_LOGIC;
  signal Cpt_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \Cpt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \Cpt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \Cpt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \Cpt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \Cpt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \Cpt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \Cpt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \Cpt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \Cpt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Cpt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Cpt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Cpt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Cpt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Cpt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Cpt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Cpt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Cpt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Cpt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Cpt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Cpt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Cpt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Cpt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Cpt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Cpt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Cpt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Cpt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Cpt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \Q[1]_i_3_n_0\ : STD_LOGIC;
  signal \Q[1]_i_4_n_0\ : STD_LOGIC;
  signal \Q[1]_i_5_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_Cpt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Cpt_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \Cpt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \Cpt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Cpt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Cpt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[1]_i_1\ : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\Cpt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \Cpt[0]_i_1_n_0\
    );
\Cpt[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[0]_i_3_n_0\
    );
\Cpt[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[0]_i_4_n_0\
    );
\Cpt[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[0]_i_5_n_0\
    );
\Cpt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[0]_i_6_n_0\
    );
\Cpt[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => Cpt_reg(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[0]_i_7_n_0\
    );
\Cpt[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(13),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[12]_i_2_n_0\
    );
\Cpt[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(12),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[12]_i_3_n_0\
    );
\Cpt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(7),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[4]_i_2_n_0\
    );
\Cpt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(6),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[4]_i_3_n_0\
    );
\Cpt[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(5),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[4]_i_4_n_0\
    );
\Cpt[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[4]_i_5_n_0\
    );
\Cpt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(11),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[8]_i_2_n_0\
    );
\Cpt[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(10),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[8]_i_3_n_0\
    );
\Cpt[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(9),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[8]_i_4_n_0\
    );
\Cpt[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Cpt_reg(8),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \Cpt[8]_i_5_n_0\
    );
\Cpt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[0]_i_2_n_7\,
      Q => Cpt_reg(0)
    );
\Cpt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Cpt_reg[0]_i_2_n_0\,
      CO(2) => \Cpt_reg[0]_i_2_n_1\,
      CO(1) => \Cpt_reg[0]_i_2_n_2\,
      CO(0) => \Cpt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Cpt[0]_i_3_n_0\,
      O(3) => \Cpt_reg[0]_i_2_n_4\,
      O(2) => \Cpt_reg[0]_i_2_n_5\,
      O(1) => \Cpt_reg[0]_i_2_n_6\,
      O(0) => \Cpt_reg[0]_i_2_n_7\,
      S(3) => \Cpt[0]_i_4_n_0\,
      S(2) => \Cpt[0]_i_5_n_0\,
      S(1) => \Cpt[0]_i_6_n_0\,
      S(0) => \Cpt[0]_i_7_n_0\
    );
\Cpt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[8]_i_1_n_5\,
      Q => Cpt_reg(10)
    );
\Cpt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[8]_i_1_n_4\,
      Q => Cpt_reg(11)
    );
\Cpt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[12]_i_1_n_7\,
      Q => Cpt_reg(12)
    );
\Cpt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Cpt_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_Cpt_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Cpt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_Cpt_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \Cpt_reg[12]_i_1_n_6\,
      O(0) => \Cpt_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \Cpt[12]_i_2_n_0\,
      S(0) => \Cpt[12]_i_3_n_0\
    );
\Cpt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[12]_i_1_n_6\,
      Q => Cpt_reg(13)
    );
\Cpt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[0]_i_2_n_6\,
      Q => Cpt_reg(1)
    );
\Cpt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[0]_i_2_n_5\,
      Q => Cpt_reg(2)
    );
\Cpt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[0]_i_2_n_4\,
      Q => Cpt_reg(3)
    );
\Cpt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[4]_i_1_n_7\,
      Q => Cpt_reg(4)
    );
\Cpt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Cpt_reg[0]_i_2_n_0\,
      CO(3) => \Cpt_reg[4]_i_1_n_0\,
      CO(2) => \Cpt_reg[4]_i_1_n_1\,
      CO(1) => \Cpt_reg[4]_i_1_n_2\,
      CO(0) => \Cpt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Cpt_reg[4]_i_1_n_4\,
      O(2) => \Cpt_reg[4]_i_1_n_5\,
      O(1) => \Cpt_reg[4]_i_1_n_6\,
      O(0) => \Cpt_reg[4]_i_1_n_7\,
      S(3) => \Cpt[4]_i_2_n_0\,
      S(2) => \Cpt[4]_i_3_n_0\,
      S(1) => \Cpt[4]_i_4_n_0\,
      S(0) => \Cpt[4]_i_5_n_0\
    );
\Cpt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[4]_i_1_n_6\,
      Q => Cpt_reg(5)
    );
\Cpt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[4]_i_1_n_5\,
      Q => Cpt_reg(6)
    );
\Cpt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[4]_i_1_n_4\,
      Q => Cpt_reg(7)
    );
\Cpt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[8]_i_1_n_7\,
      Q => Cpt_reg(8)
    );
\Cpt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Cpt_reg[4]_i_1_n_0\,
      CO(3) => \Cpt_reg[8]_i_1_n_0\,
      CO(2) => \Cpt_reg[8]_i_1_n_1\,
      CO(1) => \Cpt_reg[8]_i_1_n_2\,
      CO(0) => \Cpt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Cpt_reg[8]_i_1_n_4\,
      O(2) => \Cpt_reg[8]_i_1_n_5\,
      O(1) => \Cpt_reg[8]_i_1_n_6\,
      O(0) => \Cpt_reg[8]_i_1_n_7\,
      S(3) => \Cpt[8]_i_2_n_0\,
      S(2) => \Cpt[8]_i_3_n_0\,
      S(1) => \Cpt[8]_i_4_n_0\,
      S(0) => \Cpt[8]_i_5_n_0\
    );
\Cpt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[8]_i_1_n_6\,
      Q => Cpt_reg(9)
    );
\FSM_onehot_EP[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_EP_reg[0]\(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => D(0)
    );
\Q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_EP_reg[0]\(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => p_1_out(0)
    );
\Q[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F088"
    )
        port map (
      I0 => \Q[1]_i_3_n_0\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_EP_reg[0]\(0),
      I3 => \^q\(1),
      O => p_1_out(1)
    );
\Q[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \Q[1]_i_4_n_0\,
      I1 => Cpt_reg(9),
      I2 => Cpt_reg(10),
      I3 => Cpt_reg(11),
      I4 => Cpt_reg(12),
      I5 => Cpt_reg(13),
      O => \Q[1]_i_3_n_0\
    );
\Q[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \Q[1]_i_5_n_0\,
      I1 => Cpt_reg(6),
      I2 => Cpt_reg(8),
      I3 => Cpt_reg(7),
      O => \Q[1]_i_4_n_0\
    );
\Q[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => Cpt_reg(0),
      I1 => Cpt_reg(2),
      I2 => Cpt_reg(1),
      I3 => Cpt_reg(3),
      I4 => Cpt_reg(5),
      I5 => Cpt_reg(4),
      O => \Q[1]_i_5_n_0\
    );
\Q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_Tempo_s,
      D => p_1_out(0),
      Q => \^q\(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_Tempo_s,
      D => p_1_out(1),
      Q => \^q\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_Compteur is
  port (
    FIN_1_s : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp_BUFG : in STD_LOGIC;
    Reset_Cpt_High : in STD_LOGIC
  );
end DCC_Compteur;

architecture STRUCTURE of DCC_Compteur is
  signal \FSM_onehot_EP[7]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_16_n_0\ : STD_LOGIC;
  signal \cpt[0]_i_3__1_n_0\ : STD_LOGIC;
  signal cpt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cpt_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__1_n_1\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__1_n_2\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__1_n_3\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__1_n_4\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__1_n_5\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__1_n_6\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__1_n_7\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__1_n_1\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__1_n_2\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__1_n_3\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__1_n_4\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__1_n_5\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__1_n_6\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__1_n_7\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__1_n_1\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__1_n_2\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__1_n_3\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__1_n_4\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__1_n_5\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__1_n_6\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__1_n_7\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__1_n_1\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__1_n_2\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__1_n_3\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__1_n_4\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__1_n_5\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__1_n_6\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__1_n_7\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \NLW_cpt_reg[28]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cpt_reg[0]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[12]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[16]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[20]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[24]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[28]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[4]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[8]_i_1__1\ : label is 11;
begin
\FSM_onehot_EP[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(24),
      I1 => cpt_reg(25),
      I2 => cpt_reg(26),
      I3 => cpt_reg(27),
      I4 => cpt_reg(28),
      I5 => cpt_reg(29),
      O => \FSM_onehot_EP[7]_i_11_n_0\
    );
\FSM_onehot_EP[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(6),
      I1 => cpt_reg(7),
      I2 => cpt_reg(8),
      I3 => cpt_reg(9),
      I4 => cpt_reg(10),
      I5 => cpt_reg(11),
      O => \FSM_onehot_EP[7]_i_12_n_0\
    );
\FSM_onehot_EP[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(18),
      I1 => cpt_reg(19),
      I2 => cpt_reg(20),
      I3 => cpt_reg(21),
      I4 => cpt_reg(22),
      I5 => cpt_reg(23),
      O => \FSM_onehot_EP[7]_i_13_n_0\
    );
\FSM_onehot_EP[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(12),
      I1 => cpt_reg(13),
      I2 => cpt_reg(14),
      I3 => cpt_reg(15),
      I4 => cpt_reg(16),
      I5 => cpt_reg(17),
      O => \FSM_onehot_EP[7]_i_14_n_0\
    );
\FSM_onehot_EP[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(30),
      I1 => cpt_reg(31),
      O => \FSM_onehot_EP[7]_i_15_n_0\
    );
\FSM_onehot_EP[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cpt_reg(0),
      I1 => cpt_reg(1),
      I2 => cpt_reg(2),
      I3 => cpt_reg(4),
      I4 => cpt_reg(5),
      I5 => cpt_reg(3),
      O => \FSM_onehot_EP[7]_i_16_n_0\
    );
\FSM_onehot_EP[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_EP[7]_i_11_n_0\,
      I1 => \FSM_onehot_EP[7]_i_12_n_0\,
      I2 => \FSM_onehot_EP[7]_i_13_n_0\,
      I3 => \FSM_onehot_EP[7]_i_14_n_0\,
      I4 => \FSM_onehot_EP[7]_i_15_n_0\,
      I5 => \FSM_onehot_EP[7]_i_16_n_0\,
      O => FIN_1_s
    );
\cpt[0]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(0),
      O => \cpt[0]_i_3__1_n_0\
    );
\cpt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1__1_n_7\,
      Q => cpt_reg(0)
    );
\cpt_reg[0]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cpt_reg[0]_i_1__1_n_0\,
      CO(2) => \cpt_reg[0]_i_1__1_n_1\,
      CO(1) => \cpt_reg[0]_i_1__1_n_2\,
      CO(0) => \cpt_reg[0]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cpt_reg[0]_i_1__1_n_4\,
      O(2) => \cpt_reg[0]_i_1__1_n_5\,
      O(1) => \cpt_reg[0]_i_1__1_n_6\,
      O(0) => \cpt_reg[0]_i_1__1_n_7\,
      S(3 downto 1) => cpt_reg(3 downto 1),
      S(0) => \cpt[0]_i_3__1_n_0\
    );
\cpt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1__1_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1__1_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1__1_n_7\,
      Q => cpt_reg(12)
    );
\cpt_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[8]_i_1__1_n_0\,
      CO(3) => \cpt_reg[12]_i_1__1_n_0\,
      CO(2) => \cpt_reg[12]_i_1__1_n_1\,
      CO(1) => \cpt_reg[12]_i_1__1_n_2\,
      CO(0) => \cpt_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[12]_i_1__1_n_4\,
      O(2) => \cpt_reg[12]_i_1__1_n_5\,
      O(1) => \cpt_reg[12]_i_1__1_n_6\,
      O(0) => \cpt_reg[12]_i_1__1_n_7\,
      S(3 downto 0) => cpt_reg(15 downto 12)
    );
\cpt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1__1_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1__1_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1__1_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1__1_n_7\,
      Q => cpt_reg(16)
    );
\cpt_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[12]_i_1__1_n_0\,
      CO(3) => \cpt_reg[16]_i_1__1_n_0\,
      CO(2) => \cpt_reg[16]_i_1__1_n_1\,
      CO(1) => \cpt_reg[16]_i_1__1_n_2\,
      CO(0) => \cpt_reg[16]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[16]_i_1__1_n_4\,
      O(2) => \cpt_reg[16]_i_1__1_n_5\,
      O(1) => \cpt_reg[16]_i_1__1_n_6\,
      O(0) => \cpt_reg[16]_i_1__1_n_7\,
      S(3 downto 0) => cpt_reg(19 downto 16)
    );
\cpt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1__1_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1__1_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1__1_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1__1_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1__1_n_7\,
      Q => cpt_reg(20)
    );
\cpt_reg[20]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[16]_i_1__1_n_0\,
      CO(3) => \cpt_reg[20]_i_1__1_n_0\,
      CO(2) => \cpt_reg[20]_i_1__1_n_1\,
      CO(1) => \cpt_reg[20]_i_1__1_n_2\,
      CO(0) => \cpt_reg[20]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[20]_i_1__1_n_4\,
      O(2) => \cpt_reg[20]_i_1__1_n_5\,
      O(1) => \cpt_reg[20]_i_1__1_n_6\,
      O(0) => \cpt_reg[20]_i_1__1_n_7\,
      S(3 downto 0) => cpt_reg(23 downto 20)
    );
\cpt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1__1_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1__1_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1__1_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1__1_n_7\,
      Q => cpt_reg(24)
    );
\cpt_reg[24]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[20]_i_1__1_n_0\,
      CO(3) => \cpt_reg[24]_i_1__1_n_0\,
      CO(2) => \cpt_reg[24]_i_1__1_n_1\,
      CO(1) => \cpt_reg[24]_i_1__1_n_2\,
      CO(0) => \cpt_reg[24]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[24]_i_1__1_n_4\,
      O(2) => \cpt_reg[24]_i_1__1_n_5\,
      O(1) => \cpt_reg[24]_i_1__1_n_6\,
      O(0) => \cpt_reg[24]_i_1__1_n_7\,
      S(3 downto 0) => cpt_reg(27 downto 24)
    );
\cpt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1__1_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1__1_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1__1_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1__1_n_7\,
      Q => cpt_reg(28)
    );
\cpt_reg[28]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[24]_i_1__1_n_0\,
      CO(3) => \NLW_cpt_reg[28]_i_1__1_CO_UNCONNECTED\(3),
      CO(2) => \cpt_reg[28]_i_1__1_n_1\,
      CO(1) => \cpt_reg[28]_i_1__1_n_2\,
      CO(0) => \cpt_reg[28]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[28]_i_1__1_n_4\,
      O(2) => \cpt_reg[28]_i_1__1_n_5\,
      O(1) => \cpt_reg[28]_i_1__1_n_6\,
      O(0) => \cpt_reg[28]_i_1__1_n_7\,
      S(3 downto 0) => cpt_reg(31 downto 28)
    );
\cpt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1__1_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1__1_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1__1_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1__1_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1__1_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1__1_n_7\,
      Q => cpt_reg(4)
    );
\cpt_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[0]_i_1__1_n_0\,
      CO(3) => \cpt_reg[4]_i_1__1_n_0\,
      CO(2) => \cpt_reg[4]_i_1__1_n_1\,
      CO(1) => \cpt_reg[4]_i_1__1_n_2\,
      CO(0) => \cpt_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[4]_i_1__1_n_4\,
      O(2) => \cpt_reg[4]_i_1__1_n_5\,
      O(1) => \cpt_reg[4]_i_1__1_n_6\,
      O(0) => \cpt_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => cpt_reg(7 downto 4)
    );
\cpt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1__1_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1__1_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1__1_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1__1_n_7\,
      Q => cpt_reg(8)
    );
\cpt_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[4]_i_1__1_n_0\,
      CO(3) => \cpt_reg[8]_i_1__1_n_0\,
      CO(2) => \cpt_reg[8]_i_1__1_n_1\,
      CO(1) => \cpt_reg[8]_i_1__1_n_2\,
      CO(0) => \cpt_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[8]_i_1__1_n_4\,
      O(2) => \cpt_reg[8]_i_1__1_n_5\,
      O(1) => \cpt_reg[8]_i_1__1_n_6\,
      O(0) => \cpt_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => cpt_reg(11 downto 8)
    );
\cpt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1__1_n_6\,
      Q => cpt_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_Compteur_0 is
  port (
    Fin_Cpt_Low : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp_BUFG : in STD_LOGIC;
    Reset_Cpt_Low : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DCC_Compteur_0 : entity is "DCC_Compteur";
end DCC_Compteur_0;

architecture STRUCTURE of DCC_Compteur_0 is
  signal \FSM_onehot_EP[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_8_n_0\ : STD_LOGIC;
  signal \cpt[0]_i_3__2_n_0\ : STD_LOGIC;
  signal cpt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cpt_reg[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__3_n_1\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__3_n_2\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__3_n_3\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__3_n_4\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__3_n_5\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__3_n_6\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__3_n_7\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__3_n_0\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__3_n_1\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__3_n_2\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__3_n_3\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__3_n_4\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__3_n_5\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__3_n_6\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__3_n_7\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__3_n_0\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__3_n_1\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__3_n_2\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__3_n_3\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__3_n_4\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__3_n_5\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__3_n_6\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__3_n_7\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__3_n_0\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__3_n_1\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__3_n_2\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__3_n_3\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__3_n_4\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__3_n_5\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__3_n_6\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__3_n_7\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__3_n_0\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__3_n_1\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__3_n_2\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__3_n_3\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__3_n_4\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__3_n_5\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__3_n_6\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__3_n_7\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__3_n_1\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__3_n_2\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__3_n_3\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__3_n_4\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__3_n_5\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__3_n_6\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__3_n_7\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__3_n_1\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__3_n_2\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__3_n_3\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__3_n_4\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__3_n_5\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__3_n_6\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__3_n_7\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__3_n_1\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__3_n_2\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__3_n_3\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__3_n_4\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__3_n_5\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__3_n_6\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__3_n_7\ : STD_LOGIC;
  signal \NLW_cpt_reg[28]_i_1__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cpt_reg[0]_i_1__3\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[12]_i_1__3\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[16]_i_1__3\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[20]_i_1__3\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[24]_i_1__3\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[28]_i_1__3\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[4]_i_1__3\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[8]_i_1__3\ : label is 11;
begin
\FSM_onehot_EP[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_EP[2]_i_3__0_n_0\,
      I1 => \FSM_onehot_EP[2]_i_4__0_n_0\,
      I2 => \FSM_onehot_EP[2]_i_5__0_n_0\,
      I3 => \FSM_onehot_EP[2]_i_6__0_n_0\,
      I4 => \FSM_onehot_EP[2]_i_7__0_n_0\,
      I5 => \FSM_onehot_EP[2]_i_8_n_0\,
      O => Fin_Cpt_Low
    );
\FSM_onehot_EP[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(24),
      I1 => cpt_reg(25),
      I2 => cpt_reg(26),
      I3 => cpt_reg(27),
      I4 => cpt_reg(28),
      I5 => cpt_reg(29),
      O => \FSM_onehot_EP[2]_i_3__0_n_0\
    );
\FSM_onehot_EP[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(6),
      I1 => cpt_reg(7),
      I2 => cpt_reg(8),
      I3 => cpt_reg(9),
      I4 => cpt_reg(10),
      I5 => cpt_reg(11),
      O => \FSM_onehot_EP[2]_i_4__0_n_0\
    );
\FSM_onehot_EP[2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(18),
      I1 => cpt_reg(19),
      I2 => cpt_reg(20),
      I3 => cpt_reg(21),
      I4 => cpt_reg(22),
      I5 => cpt_reg(23),
      O => \FSM_onehot_EP[2]_i_5__0_n_0\
    );
\FSM_onehot_EP[2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(12),
      I1 => cpt_reg(13),
      I2 => cpt_reg(14),
      I3 => cpt_reg(15),
      I4 => cpt_reg(16),
      I5 => cpt_reg(17),
      O => \FSM_onehot_EP[2]_i_6__0_n_0\
    );
\FSM_onehot_EP[2]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(30),
      I1 => cpt_reg(31),
      O => \FSM_onehot_EP[2]_i_7__0_n_0\
    );
\FSM_onehot_EP[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cpt_reg(0),
      I1 => cpt_reg(1),
      I2 => cpt_reg(2),
      I3 => cpt_reg(4),
      I4 => cpt_reg(5),
      I5 => cpt_reg(3),
      O => \FSM_onehot_EP[2]_i_8_n_0\
    );
\cpt[0]_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(0),
      O => \cpt[0]_i_3__2_n_0\
    );
\cpt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__3_n_7\,
      Q => cpt_reg(0)
    );
\cpt_reg[0]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cpt_reg[0]_i_1__3_n_0\,
      CO(2) => \cpt_reg[0]_i_1__3_n_1\,
      CO(1) => \cpt_reg[0]_i_1__3_n_2\,
      CO(0) => \cpt_reg[0]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cpt_reg[0]_i_1__3_n_4\,
      O(2) => \cpt_reg[0]_i_1__3_n_5\,
      O(1) => \cpt_reg[0]_i_1__3_n_6\,
      O(0) => \cpt_reg[0]_i_1__3_n_7\,
      S(3 downto 1) => cpt_reg(3 downto 1),
      S(0) => \cpt[0]_i_3__2_n_0\
    );
\cpt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__3_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__3_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__3_n_7\,
      Q => cpt_reg(12)
    );
\cpt_reg[12]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[8]_i_1__3_n_0\,
      CO(3) => \cpt_reg[12]_i_1__3_n_0\,
      CO(2) => \cpt_reg[12]_i_1__3_n_1\,
      CO(1) => \cpt_reg[12]_i_1__3_n_2\,
      CO(0) => \cpt_reg[12]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[12]_i_1__3_n_4\,
      O(2) => \cpt_reg[12]_i_1__3_n_5\,
      O(1) => \cpt_reg[12]_i_1__3_n_6\,
      O(0) => \cpt_reg[12]_i_1__3_n_7\,
      S(3 downto 0) => cpt_reg(15 downto 12)
    );
\cpt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__3_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__3_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__3_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__3_n_7\,
      Q => cpt_reg(16)
    );
\cpt_reg[16]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[12]_i_1__3_n_0\,
      CO(3) => \cpt_reg[16]_i_1__3_n_0\,
      CO(2) => \cpt_reg[16]_i_1__3_n_1\,
      CO(1) => \cpt_reg[16]_i_1__3_n_2\,
      CO(0) => \cpt_reg[16]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[16]_i_1__3_n_4\,
      O(2) => \cpt_reg[16]_i_1__3_n_5\,
      O(1) => \cpt_reg[16]_i_1__3_n_6\,
      O(0) => \cpt_reg[16]_i_1__3_n_7\,
      S(3 downto 0) => cpt_reg(19 downto 16)
    );
\cpt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__3_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__3_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__3_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__3_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__3_n_7\,
      Q => cpt_reg(20)
    );
\cpt_reg[20]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[16]_i_1__3_n_0\,
      CO(3) => \cpt_reg[20]_i_1__3_n_0\,
      CO(2) => \cpt_reg[20]_i_1__3_n_1\,
      CO(1) => \cpt_reg[20]_i_1__3_n_2\,
      CO(0) => \cpt_reg[20]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[20]_i_1__3_n_4\,
      O(2) => \cpt_reg[20]_i_1__3_n_5\,
      O(1) => \cpt_reg[20]_i_1__3_n_6\,
      O(0) => \cpt_reg[20]_i_1__3_n_7\,
      S(3 downto 0) => cpt_reg(23 downto 20)
    );
\cpt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__3_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__3_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__3_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__3_n_7\,
      Q => cpt_reg(24)
    );
\cpt_reg[24]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[20]_i_1__3_n_0\,
      CO(3) => \cpt_reg[24]_i_1__3_n_0\,
      CO(2) => \cpt_reg[24]_i_1__3_n_1\,
      CO(1) => \cpt_reg[24]_i_1__3_n_2\,
      CO(0) => \cpt_reg[24]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[24]_i_1__3_n_4\,
      O(2) => \cpt_reg[24]_i_1__3_n_5\,
      O(1) => \cpt_reg[24]_i_1__3_n_6\,
      O(0) => \cpt_reg[24]_i_1__3_n_7\,
      S(3 downto 0) => cpt_reg(27 downto 24)
    );
\cpt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__3_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__3_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__3_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__3_n_7\,
      Q => cpt_reg(28)
    );
\cpt_reg[28]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[24]_i_1__3_n_0\,
      CO(3) => \NLW_cpt_reg[28]_i_1__3_CO_UNCONNECTED\(3),
      CO(2) => \cpt_reg[28]_i_1__3_n_1\,
      CO(1) => \cpt_reg[28]_i_1__3_n_2\,
      CO(0) => \cpt_reg[28]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[28]_i_1__3_n_4\,
      O(2) => \cpt_reg[28]_i_1__3_n_5\,
      O(1) => \cpt_reg[28]_i_1__3_n_6\,
      O(0) => \cpt_reg[28]_i_1__3_n_7\,
      S(3 downto 0) => cpt_reg(31 downto 28)
    );
\cpt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__3_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__3_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__3_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__3_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__3_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__3_n_7\,
      Q => cpt_reg(4)
    );
\cpt_reg[4]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[0]_i_1__3_n_0\,
      CO(3) => \cpt_reg[4]_i_1__3_n_0\,
      CO(2) => \cpt_reg[4]_i_1__3_n_1\,
      CO(1) => \cpt_reg[4]_i_1__3_n_2\,
      CO(0) => \cpt_reg[4]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[4]_i_1__3_n_4\,
      O(2) => \cpt_reg[4]_i_1__3_n_5\,
      O(1) => \cpt_reg[4]_i_1__3_n_6\,
      O(0) => \cpt_reg[4]_i_1__3_n_7\,
      S(3 downto 0) => cpt_reg(7 downto 4)
    );
\cpt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__3_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__3_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__3_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__3_n_7\,
      Q => cpt_reg(8)
    );
\cpt_reg[8]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[4]_i_1__3_n_0\,
      CO(3) => \cpt_reg[8]_i_1__3_n_0\,
      CO(2) => \cpt_reg[8]_i_1__3_n_1\,
      CO(1) => \cpt_reg[8]_i_1__3_n_2\,
      CO(0) => \cpt_reg[8]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[8]_i_1__3_n_4\,
      O(2) => \cpt_reg[8]_i_1__3_n_5\,
      O(1) => \cpt_reg[8]_i_1__3_n_6\,
      O(0) => \cpt_reg[8]_i_1__3_n_7\,
      S(3 downto 0) => cpt_reg(11 downto 8)
    );
\cpt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__3_n_6\,
      Q => cpt_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_Compteur_1 is
  port (
    FIN_0_s : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp_BUFG : in STD_LOGIC;
    Reset_Cpt_High : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DCC_Compteur_1 : entity is "DCC_Compteur";
end DCC_Compteur_1;

architecture STRUCTURE of DCC_Compteur_1 is
  signal \FSM_onehot_EP[7]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_9_n_0\ : STD_LOGIC;
  signal \cpt[0]_i_3_n_0\ : STD_LOGIC;
  signal cpt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cpt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_cpt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cpt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[8]_i_1\ : label is 11;
begin
\FSM_onehot_EP[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => cpt_reg(0),
      I1 => cpt_reg(2),
      I2 => cpt_reg(1),
      I3 => cpt_reg(3),
      I4 => cpt_reg(5),
      I5 => cpt_reg(4),
      O => \FSM_onehot_EP[7]_i_10_n_0\
    );
\FSM_onehot_EP[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_EP[7]_i_5_n_0\,
      I1 => \FSM_onehot_EP[7]_i_6_n_0\,
      I2 => \FSM_onehot_EP[7]_i_7_n_0\,
      I3 => \FSM_onehot_EP[7]_i_8_n_0\,
      I4 => \FSM_onehot_EP[7]_i_9_n_0\,
      I5 => \FSM_onehot_EP[7]_i_10_n_0\,
      O => FIN_0_s
    );
\FSM_onehot_EP[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(24),
      I1 => cpt_reg(25),
      I2 => cpt_reg(26),
      I3 => cpt_reg(27),
      I4 => cpt_reg(28),
      I5 => cpt_reg(29),
      O => \FSM_onehot_EP[7]_i_5_n_0\
    );
\FSM_onehot_EP[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => cpt_reg(7),
      I1 => cpt_reg(8),
      I2 => cpt_reg(6),
      I3 => cpt_reg(9),
      I4 => cpt_reg(10),
      I5 => cpt_reg(11),
      O => \FSM_onehot_EP[7]_i_6_n_0\
    );
\FSM_onehot_EP[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(18),
      I1 => cpt_reg(19),
      I2 => cpt_reg(20),
      I3 => cpt_reg(21),
      I4 => cpt_reg(22),
      I5 => cpt_reg(23),
      O => \FSM_onehot_EP[7]_i_7_n_0\
    );
\FSM_onehot_EP[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(12),
      I1 => cpt_reg(13),
      I2 => cpt_reg(14),
      I3 => cpt_reg(15),
      I4 => cpt_reg(16),
      I5 => cpt_reg(17),
      O => \FSM_onehot_EP[7]_i_8_n_0\
    );
\FSM_onehot_EP[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(30),
      I1 => cpt_reg(31),
      O => \FSM_onehot_EP[7]_i_9_n_0\
    );
\cpt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(0),
      O => \cpt[0]_i_3_n_0\
    );
\cpt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1_n_7\,
      Q => cpt_reg(0)
    );
\cpt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cpt_reg[0]_i_1_n_0\,
      CO(2) => \cpt_reg[0]_i_1_n_1\,
      CO(1) => \cpt_reg[0]_i_1_n_2\,
      CO(0) => \cpt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cpt_reg[0]_i_1_n_4\,
      O(2) => \cpt_reg[0]_i_1_n_5\,
      O(1) => \cpt_reg[0]_i_1_n_6\,
      O(0) => \cpt_reg[0]_i_1_n_7\,
      S(3 downto 1) => cpt_reg(3 downto 1),
      S(0) => \cpt[0]_i_3_n_0\
    );
\cpt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1_n_7\,
      Q => cpt_reg(12)
    );
\cpt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[8]_i_1_n_0\,
      CO(3) => \cpt_reg[12]_i_1_n_0\,
      CO(2) => \cpt_reg[12]_i_1_n_1\,
      CO(1) => \cpt_reg[12]_i_1_n_2\,
      CO(0) => \cpt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[12]_i_1_n_4\,
      O(2) => \cpt_reg[12]_i_1_n_5\,
      O(1) => \cpt_reg[12]_i_1_n_6\,
      O(0) => \cpt_reg[12]_i_1_n_7\,
      S(3 downto 0) => cpt_reg(15 downto 12)
    );
\cpt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1_n_7\,
      Q => cpt_reg(16)
    );
\cpt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[12]_i_1_n_0\,
      CO(3) => \cpt_reg[16]_i_1_n_0\,
      CO(2) => \cpt_reg[16]_i_1_n_1\,
      CO(1) => \cpt_reg[16]_i_1_n_2\,
      CO(0) => \cpt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[16]_i_1_n_4\,
      O(2) => \cpt_reg[16]_i_1_n_5\,
      O(1) => \cpt_reg[16]_i_1_n_6\,
      O(0) => \cpt_reg[16]_i_1_n_7\,
      S(3 downto 0) => cpt_reg(19 downto 16)
    );
\cpt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1_n_7\,
      Q => cpt_reg(20)
    );
\cpt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[16]_i_1_n_0\,
      CO(3) => \cpt_reg[20]_i_1_n_0\,
      CO(2) => \cpt_reg[20]_i_1_n_1\,
      CO(1) => \cpt_reg[20]_i_1_n_2\,
      CO(0) => \cpt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[20]_i_1_n_4\,
      O(2) => \cpt_reg[20]_i_1_n_5\,
      O(1) => \cpt_reg[20]_i_1_n_6\,
      O(0) => \cpt_reg[20]_i_1_n_7\,
      S(3 downto 0) => cpt_reg(23 downto 20)
    );
\cpt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1_n_7\,
      Q => cpt_reg(24)
    );
\cpt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[20]_i_1_n_0\,
      CO(3) => \cpt_reg[24]_i_1_n_0\,
      CO(2) => \cpt_reg[24]_i_1_n_1\,
      CO(1) => \cpt_reg[24]_i_1_n_2\,
      CO(0) => \cpt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[24]_i_1_n_4\,
      O(2) => \cpt_reg[24]_i_1_n_5\,
      O(1) => \cpt_reg[24]_i_1_n_6\,
      O(0) => \cpt_reg[24]_i_1_n_7\,
      S(3 downto 0) => cpt_reg(27 downto 24)
    );
\cpt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1_n_7\,
      Q => cpt_reg(28)
    );
\cpt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cpt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cpt_reg[28]_i_1_n_1\,
      CO(1) => \cpt_reg[28]_i_1_n_2\,
      CO(0) => \cpt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[28]_i_1_n_4\,
      O(2) => \cpt_reg[28]_i_1_n_5\,
      O(1) => \cpt_reg[28]_i_1_n_6\,
      O(0) => \cpt_reg[28]_i_1_n_7\,
      S(3 downto 0) => cpt_reg(31 downto 28)
    );
\cpt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1_n_7\,
      Q => cpt_reg(4)
    );
\cpt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[0]_i_1_n_0\,
      CO(3) => \cpt_reg[4]_i_1_n_0\,
      CO(2) => \cpt_reg[4]_i_1_n_1\,
      CO(1) => \cpt_reg[4]_i_1_n_2\,
      CO(0) => \cpt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[4]_i_1_n_4\,
      O(2) => \cpt_reg[4]_i_1_n_5\,
      O(1) => \cpt_reg[4]_i_1_n_6\,
      O(0) => \cpt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cpt_reg(7 downto 4)
    );
\cpt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1_n_7\,
      Q => cpt_reg(8)
    );
\cpt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[4]_i_1_n_0\,
      CO(3) => \cpt_reg[8]_i_1_n_0\,
      CO(2) => \cpt_reg[8]_i_1_n_1\,
      CO(1) => \cpt_reg[8]_i_1_n_2\,
      CO(0) => \cpt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[8]_i_1_n_4\,
      O(2) => \cpt_reg[8]_i_1_n_5\,
      O(1) => \cpt_reg[8]_i_1_n_6\,
      O(0) => \cpt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cpt_reg(11 downto 8)
    );
\cpt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1_n_6\,
      Q => cpt_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_Compteur_2 is
  port (
    Fin_Cpt_Low : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp_BUFG : in STD_LOGIC;
    Reset_Cpt_Low : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DCC_Compteur_2 : entity is "DCC_Compteur";
end DCC_Compteur_2;

architecture STRUCTURE of DCC_Compteur_2 is
  signal \FSM_onehot_EP[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_8__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_9_n_0\ : STD_LOGIC;
  signal \cpt[0]_i_3__0_n_0\ : STD_LOGIC;
  signal cpt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cpt_reg[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__2_n_1\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__2_n_2\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__2_n_3\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__2_n_4\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__2_n_5\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__2_n_6\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__2_n_7\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__2_n_1\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__2_n_2\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__2_n_3\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__2_n_4\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__2_n_5\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__2_n_6\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__2_n_7\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__2_n_0\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__2_n_1\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__2_n_2\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__2_n_3\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__2_n_4\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__2_n_5\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__2_n_6\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__2_n_7\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__2_n_0\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__2_n_1\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__2_n_2\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__2_n_3\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__2_n_4\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__2_n_5\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__2_n_6\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__2_n_7\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__2_n_0\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__2_n_1\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__2_n_2\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__2_n_3\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__2_n_4\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__2_n_5\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__2_n_6\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__2_n_7\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__2_n_1\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__2_n_2\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__2_n_3\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__2_n_4\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__2_n_5\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__2_n_6\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__2_n_7\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__2_n_1\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__2_n_2\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__2_n_3\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__2_n_4\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__2_n_5\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__2_n_6\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__2_n_7\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__2_n_1\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__2_n_2\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__2_n_3\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__2_n_4\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__2_n_5\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__2_n_6\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__2_n_7\ : STD_LOGIC;
  signal \NLW_cpt_reg[28]_i_1__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cpt_reg[0]_i_1__2\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[12]_i_1__2\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[16]_i_1__2\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[20]_i_1__2\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[24]_i_1__2\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[28]_i_1__2\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[4]_i_1__2\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[8]_i_1__2\ : label is 11;
begin
\FSM_onehot_EP[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_EP[2]_i_4_n_0\,
      I1 => \FSM_onehot_EP[2]_i_5_n_0\,
      I2 => \FSM_onehot_EP[2]_i_6_n_0\,
      I3 => \FSM_onehot_EP[2]_i_7_n_0\,
      I4 => \FSM_onehot_EP[2]_i_8__0_n_0\,
      I5 => \FSM_onehot_EP[2]_i_9_n_0\,
      O => Fin_Cpt_Low
    );
\FSM_onehot_EP[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(24),
      I1 => cpt_reg(25),
      I2 => cpt_reg(26),
      I3 => cpt_reg(27),
      I4 => cpt_reg(28),
      I5 => cpt_reg(29),
      O => \FSM_onehot_EP[2]_i_4_n_0\
    );
\FSM_onehot_EP[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => cpt_reg(7),
      I1 => cpt_reg(8),
      I2 => cpt_reg(6),
      I3 => cpt_reg(9),
      I4 => cpt_reg(10),
      I5 => cpt_reg(11),
      O => \FSM_onehot_EP[2]_i_5_n_0\
    );
\FSM_onehot_EP[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(18),
      I1 => cpt_reg(19),
      I2 => cpt_reg(20),
      I3 => cpt_reg(21),
      I4 => cpt_reg(22),
      I5 => cpt_reg(23),
      O => \FSM_onehot_EP[2]_i_6_n_0\
    );
\FSM_onehot_EP[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(12),
      I1 => cpt_reg(13),
      I2 => cpt_reg(14),
      I3 => cpt_reg(15),
      I4 => cpt_reg(16),
      I5 => cpt_reg(17),
      O => \FSM_onehot_EP[2]_i_7_n_0\
    );
\FSM_onehot_EP[2]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(30),
      I1 => cpt_reg(31),
      O => \FSM_onehot_EP[2]_i_8__0_n_0\
    );
\FSM_onehot_EP[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => cpt_reg(0),
      I1 => cpt_reg(2),
      I2 => cpt_reg(1),
      I3 => cpt_reg(3),
      I4 => cpt_reg(5),
      I5 => cpt_reg(4),
      O => \FSM_onehot_EP[2]_i_9_n_0\
    );
\cpt[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(0),
      O => \cpt[0]_i_3__0_n_0\
    );
\cpt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__2_n_7\,
      Q => cpt_reg(0)
    );
\cpt_reg[0]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cpt_reg[0]_i_1__2_n_0\,
      CO(2) => \cpt_reg[0]_i_1__2_n_1\,
      CO(1) => \cpt_reg[0]_i_1__2_n_2\,
      CO(0) => \cpt_reg[0]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cpt_reg[0]_i_1__2_n_4\,
      O(2) => \cpt_reg[0]_i_1__2_n_5\,
      O(1) => \cpt_reg[0]_i_1__2_n_6\,
      O(0) => \cpt_reg[0]_i_1__2_n_7\,
      S(3 downto 1) => cpt_reg(3 downto 1),
      S(0) => \cpt[0]_i_3__0_n_0\
    );
\cpt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__2_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__2_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__2_n_7\,
      Q => cpt_reg(12)
    );
\cpt_reg[12]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[8]_i_1__2_n_0\,
      CO(3) => \cpt_reg[12]_i_1__2_n_0\,
      CO(2) => \cpt_reg[12]_i_1__2_n_1\,
      CO(1) => \cpt_reg[12]_i_1__2_n_2\,
      CO(0) => \cpt_reg[12]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[12]_i_1__2_n_4\,
      O(2) => \cpt_reg[12]_i_1__2_n_5\,
      O(1) => \cpt_reg[12]_i_1__2_n_6\,
      O(0) => \cpt_reg[12]_i_1__2_n_7\,
      S(3 downto 0) => cpt_reg(15 downto 12)
    );
\cpt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__2_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__2_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__2_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__2_n_7\,
      Q => cpt_reg(16)
    );
\cpt_reg[16]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[12]_i_1__2_n_0\,
      CO(3) => \cpt_reg[16]_i_1__2_n_0\,
      CO(2) => \cpt_reg[16]_i_1__2_n_1\,
      CO(1) => \cpt_reg[16]_i_1__2_n_2\,
      CO(0) => \cpt_reg[16]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[16]_i_1__2_n_4\,
      O(2) => \cpt_reg[16]_i_1__2_n_5\,
      O(1) => \cpt_reg[16]_i_1__2_n_6\,
      O(0) => \cpt_reg[16]_i_1__2_n_7\,
      S(3 downto 0) => cpt_reg(19 downto 16)
    );
\cpt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__2_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__2_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__2_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__2_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__2_n_7\,
      Q => cpt_reg(20)
    );
\cpt_reg[20]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[16]_i_1__2_n_0\,
      CO(3) => \cpt_reg[20]_i_1__2_n_0\,
      CO(2) => \cpt_reg[20]_i_1__2_n_1\,
      CO(1) => \cpt_reg[20]_i_1__2_n_2\,
      CO(0) => \cpt_reg[20]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[20]_i_1__2_n_4\,
      O(2) => \cpt_reg[20]_i_1__2_n_5\,
      O(1) => \cpt_reg[20]_i_1__2_n_6\,
      O(0) => \cpt_reg[20]_i_1__2_n_7\,
      S(3 downto 0) => cpt_reg(23 downto 20)
    );
\cpt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__2_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__2_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__2_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__2_n_7\,
      Q => cpt_reg(24)
    );
\cpt_reg[24]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[20]_i_1__2_n_0\,
      CO(3) => \cpt_reg[24]_i_1__2_n_0\,
      CO(2) => \cpt_reg[24]_i_1__2_n_1\,
      CO(1) => \cpt_reg[24]_i_1__2_n_2\,
      CO(0) => \cpt_reg[24]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[24]_i_1__2_n_4\,
      O(2) => \cpt_reg[24]_i_1__2_n_5\,
      O(1) => \cpt_reg[24]_i_1__2_n_6\,
      O(0) => \cpt_reg[24]_i_1__2_n_7\,
      S(3 downto 0) => cpt_reg(27 downto 24)
    );
\cpt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__2_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__2_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__2_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__2_n_7\,
      Q => cpt_reg(28)
    );
\cpt_reg[28]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[24]_i_1__2_n_0\,
      CO(3) => \NLW_cpt_reg[28]_i_1__2_CO_UNCONNECTED\(3),
      CO(2) => \cpt_reg[28]_i_1__2_n_1\,
      CO(1) => \cpt_reg[28]_i_1__2_n_2\,
      CO(0) => \cpt_reg[28]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[28]_i_1__2_n_4\,
      O(2) => \cpt_reg[28]_i_1__2_n_5\,
      O(1) => \cpt_reg[28]_i_1__2_n_6\,
      O(0) => \cpt_reg[28]_i_1__2_n_7\,
      S(3 downto 0) => cpt_reg(31 downto 28)
    );
\cpt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__2_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__2_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__2_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__2_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__2_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__2_n_7\,
      Q => cpt_reg(4)
    );
\cpt_reg[4]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[0]_i_1__2_n_0\,
      CO(3) => \cpt_reg[4]_i_1__2_n_0\,
      CO(2) => \cpt_reg[4]_i_1__2_n_1\,
      CO(1) => \cpt_reg[4]_i_1__2_n_2\,
      CO(0) => \cpt_reg[4]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[4]_i_1__2_n_4\,
      O(2) => \cpt_reg[4]_i_1__2_n_5\,
      O(1) => \cpt_reg[4]_i_1__2_n_6\,
      O(0) => \cpt_reg[4]_i_1__2_n_7\,
      S(3 downto 0) => cpt_reg(7 downto 4)
    );
\cpt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__2_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__2_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__2_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__2_n_7\,
      Q => cpt_reg(8)
    );
\cpt_reg[8]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[4]_i_1__2_n_0\,
      CO(3) => \cpt_reg[8]_i_1__2_n_0\,
      CO(2) => \cpt_reg[8]_i_1__2_n_1\,
      CO(1) => \cpt_reg[8]_i_1__2_n_2\,
      CO(0) => \cpt_reg[8]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[8]_i_1__2_n_4\,
      O(2) => \cpt_reg[8]_i_1__2_n_5\,
      O(1) => \cpt_reg[8]_i_1__2_n_6\,
      O(0) => \cpt_reg[8]_i_1__2_n_7\,
      S(3 downto 0) => cpt_reg(11 downto 8)
    );
\cpt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Temp_BUFG,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__2_n_6\,
      Q => cpt_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDC_MAE is
  port (
    Reset_Cpt_High : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Reset_Cpt_Low : out STD_LOGIC;
    SORTIE_DCC_OBUF : out STD_LOGIC;
    SORTIE_DCC : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_EP_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    FIN_1_s : in STD_LOGIC;
    Fin_Cpt_Low : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end DDC_MAE;

architecture STRUCTURE of DDC_MAE is
  signal \FSM_onehot_EP[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_EP[0]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_EP[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_EP[2]_i_1__0\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[0]\ : label is "lvl_low:010,lvl_high:100,idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[1]\ : label is "lvl_low:010,lvl_high:100,idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[2]\ : label is "lvl_low:010,lvl_high:100,idle:001";
  attribute SOFT_HLUTNM of SORTIE_DCC_OBUF_inst_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cpt[0]_i_2__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cpt[0]_i_2__3\ : label is "soft_lutpair4";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_EP[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_EP_reg[1]_0\(0),
      I1 => \FSM_onehot_EP_reg_n_0_[0]\,
      I2 => FIN_1_s,
      I3 => \^q\(1),
      O => \FSM_onehot_EP[0]_i_1__1_n_0\
    );
\FSM_onehot_EP[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_EP_reg[1]_0\(0),
      I1 => \FSM_onehot_EP_reg_n_0_[0]\,
      I2 => Fin_Cpt_Low,
      I3 => \^q\(0),
      O => \FSM_onehot_EP[1]_i_1__0_n_0\
    );
\FSM_onehot_EP[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => Fin_Cpt_Low,
      I1 => \^q\(0),
      I2 => FIN_1_s,
      I3 => \^q\(1),
      O => \FSM_onehot_EP[2]_i_1__0_n_0\
    );
\FSM_onehot_EP_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_EP[0]_i_1__1_n_0\,
      PRE => AR(0),
      Q => \FSM_onehot_EP_reg_n_0_[0]\
    );
\FSM_onehot_EP_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_EP[1]_i_1__0_n_0\,
      Q => \^q\(0)
    );
\FSM_onehot_EP_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_EP[2]_i_1__0_n_0\,
      Q => \^q\(1)
    );
SORTIE_DCC_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => SORTIE_DCC(0),
      O => SORTIE_DCC_OBUF
    );
\cpt[0]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_EP_reg_n_0_[0]\,
      I1 => \^q\(0),
      O => Reset_Cpt_High
    );
\cpt[0]_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_EP_reg_n_0_[0]\,
      I1 => \^q\(1),
      O => Reset_Cpt_Low
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDC_MAE_3 is
  port (
    Reset_Cpt_High : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Reset_Cpt_Low : out STD_LOGIC;
    \FSM_onehot_EP_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    FIN_0_s : in STD_LOGIC;
    Fin_Cpt_Low : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDC_MAE_3 : entity is "DDC_MAE";
end DDC_MAE_3;

architecture STRUCTURE of DDC_MAE_3 is
  signal \FSM_onehot_EP[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_EP[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_EP[1]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[0]\ : label is "lvl_low:010,lvl_high:100,idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[1]\ : label is "lvl_low:010,lvl_high:100,idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[2]\ : label is "lvl_low:010,lvl_high:100,idle:001";
  attribute SOFT_HLUTNM of \cpt[0]_i_2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cpt[0]_i_2__1\ : label is "soft_lutpair2";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_EP[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_EP_reg[1]_0\(0),
      I1 => \FSM_onehot_EP_reg_n_0_[0]\,
      I2 => FIN_0_s,
      I3 => \^q\(1),
      O => \FSM_onehot_EP[0]_i_1__0_n_0\
    );
\FSM_onehot_EP[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_EP_reg[1]_0\(0),
      I1 => \FSM_onehot_EP_reg_n_0_[0]\,
      I2 => Fin_Cpt_Low,
      I3 => \^q\(0),
      O => \FSM_onehot_EP[1]_i_1_n_0\
    );
\FSM_onehot_EP[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => Fin_Cpt_Low,
      I1 => \^q\(0),
      I2 => FIN_0_s,
      I3 => \^q\(1),
      O => \FSM_onehot_EP[2]_i_1_n_0\
    );
\FSM_onehot_EP_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_EP[0]_i_1__0_n_0\,
      PRE => AR(0),
      Q => \FSM_onehot_EP_reg_n_0_[0]\
    );
\FSM_onehot_EP_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_EP[1]_i_1_n_0\,
      Q => \^q\(0)
    );
\FSM_onehot_EP_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_EP[2]_i_1_n_0\,
      Q => \^q\(1)
    );
\cpt[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_EP_reg_n_0_[0]\,
      I1 => \^q\(0),
      O => Reset_Cpt_High
    );
\cpt[0]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_EP_reg_n_0_[0]\,
      I1 => \^q\(1),
      O => Reset_Cpt_Low
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MAE_Compteur is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    FIN_0_s : in STD_LOGIC;
    FIN_1_s : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end MAE_Compteur;

architecture STRUCTURE of MAE_Compteur is
  signal \FSM_onehot_EP[7]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_22_n_0\ : STD_LOGIC;
  signal Reset_Compteur : STD_LOGIC;
  signal \cpt[0]_i_3__3_n_0\ : STD_LOGIC;
  signal cpt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cpt_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \cpt_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \cpt_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \cpt_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \cpt_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__0_n_1\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__0_n_2\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__0_n_3\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__0_n_4\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__0_n_5\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__0_n_6\ : STD_LOGIC;
  signal \cpt_reg[28]_i_1__0_n_7\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal in4 : STD_LOGIC;
  signal \NLW_cpt_reg[28]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cpt_reg[0]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[16]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[20]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[24]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[28]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cpt_reg[8]_i_1__0\ : label is 11;
begin
\FSM_onehot_EP[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAEAAAEAAAEAA"
    )
        port map (
      I0 => Q(1),
      I1 => Q(4),
      I2 => in4,
      I3 => FIN_1_s,
      I4 => Q(3),
      I5 => FIN_0_s,
      O => D(0)
    );
\FSM_onehot_EP[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8008800"
    )
        port map (
      I0 => FIN_0_s,
      I1 => Q(3),
      I2 => FIN_1_s,
      I3 => in4,
      I4 => Q(4),
      O => D(1)
    );
\FSM_onehot_EP[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(24),
      I1 => cpt_reg(25),
      I2 => cpt_reg(26),
      I3 => cpt_reg(27),
      I4 => cpt_reg(28),
      I5 => cpt_reg(29),
      O => \FSM_onehot_EP[7]_i_17_n_0\
    );
\FSM_onehot_EP[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(6),
      I1 => cpt_reg(7),
      I2 => cpt_reg(8),
      I3 => cpt_reg(9),
      I4 => cpt_reg(10),
      I5 => cpt_reg(11),
      O => \FSM_onehot_EP[7]_i_18_n_0\
    );
\FSM_onehot_EP[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(18),
      I1 => cpt_reg(19),
      I2 => cpt_reg(20),
      I3 => cpt_reg(21),
      I4 => cpt_reg(22),
      I5 => cpt_reg(23),
      O => \FSM_onehot_EP[7]_i_19_n_0\
    );
\FSM_onehot_EP[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cpt_reg(12),
      I1 => cpt_reg(13),
      I2 => cpt_reg(14),
      I3 => cpt_reg(15),
      I4 => cpt_reg(16),
      I5 => cpt_reg(17),
      O => \FSM_onehot_EP[7]_i_20_n_0\
    );
\FSM_onehot_EP[7]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(30),
      I1 => cpt_reg(31),
      O => \FSM_onehot_EP[7]_i_21_n_0\
    );
\FSM_onehot_EP[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => cpt_reg(0),
      I1 => cpt_reg(2),
      I2 => cpt_reg(1),
      I3 => cpt_reg(3),
      I4 => cpt_reg(4),
      I5 => cpt_reg(5),
      O => \FSM_onehot_EP[7]_i_22_n_0\
    );
\FSM_onehot_EP[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_EP[7]_i_17_n_0\,
      I1 => \FSM_onehot_EP[7]_i_18_n_0\,
      I2 => \FSM_onehot_EP[7]_i_19_n_0\,
      I3 => \FSM_onehot_EP[7]_i_20_n_0\,
      I4 => \FSM_onehot_EP[7]_i_21_n_0\,
      I5 => \FSM_onehot_EP[7]_i_22_n_0\,
      O => in4
    );
\cpt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      O => Reset_Compteur
    );
\cpt[0]_i_3__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(0),
      O => \cpt[0]_i_3__3_n_0\
    );
\cpt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[0]_i_1__0_n_7\,
      Q => cpt_reg(0)
    );
\cpt_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cpt_reg[0]_i_1__0_n_0\,
      CO(2) => \cpt_reg[0]_i_1__0_n_1\,
      CO(1) => \cpt_reg[0]_i_1__0_n_2\,
      CO(0) => \cpt_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cpt_reg[0]_i_1__0_n_4\,
      O(2) => \cpt_reg[0]_i_1__0_n_5\,
      O(1) => \cpt_reg[0]_i_1__0_n_6\,
      O(0) => \cpt_reg[0]_i_1__0_n_7\,
      S(3 downto 1) => cpt_reg(3 downto 1),
      S(0) => \cpt[0]_i_3__3_n_0\
    );
\cpt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[8]_i_1__0_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[8]_i_1__0_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[12]_i_1__0_n_7\,
      Q => cpt_reg(12)
    );
\cpt_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[8]_i_1__0_n_0\,
      CO(3) => \cpt_reg[12]_i_1__0_n_0\,
      CO(2) => \cpt_reg[12]_i_1__0_n_1\,
      CO(1) => \cpt_reg[12]_i_1__0_n_2\,
      CO(0) => \cpt_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[12]_i_1__0_n_4\,
      O(2) => \cpt_reg[12]_i_1__0_n_5\,
      O(1) => \cpt_reg[12]_i_1__0_n_6\,
      O(0) => \cpt_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => cpt_reg(15 downto 12)
    );
\cpt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[12]_i_1__0_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[12]_i_1__0_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[12]_i_1__0_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[16]_i_1__0_n_7\,
      Q => cpt_reg(16)
    );
\cpt_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[12]_i_1__0_n_0\,
      CO(3) => \cpt_reg[16]_i_1__0_n_0\,
      CO(2) => \cpt_reg[16]_i_1__0_n_1\,
      CO(1) => \cpt_reg[16]_i_1__0_n_2\,
      CO(0) => \cpt_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[16]_i_1__0_n_4\,
      O(2) => \cpt_reg[16]_i_1__0_n_5\,
      O(1) => \cpt_reg[16]_i_1__0_n_6\,
      O(0) => \cpt_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => cpt_reg(19 downto 16)
    );
\cpt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[16]_i_1__0_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[16]_i_1__0_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[16]_i_1__0_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[0]_i_1__0_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[20]_i_1__0_n_7\,
      Q => cpt_reg(20)
    );
\cpt_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[16]_i_1__0_n_0\,
      CO(3) => \cpt_reg[20]_i_1__0_n_0\,
      CO(2) => \cpt_reg[20]_i_1__0_n_1\,
      CO(1) => \cpt_reg[20]_i_1__0_n_2\,
      CO(0) => \cpt_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[20]_i_1__0_n_4\,
      O(2) => \cpt_reg[20]_i_1__0_n_5\,
      O(1) => \cpt_reg[20]_i_1__0_n_6\,
      O(0) => \cpt_reg[20]_i_1__0_n_7\,
      S(3 downto 0) => cpt_reg(23 downto 20)
    );
\cpt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[20]_i_1__0_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[20]_i_1__0_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[20]_i_1__0_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[24]_i_1__0_n_7\,
      Q => cpt_reg(24)
    );
\cpt_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[20]_i_1__0_n_0\,
      CO(3) => \cpt_reg[24]_i_1__0_n_0\,
      CO(2) => \cpt_reg[24]_i_1__0_n_1\,
      CO(1) => \cpt_reg[24]_i_1__0_n_2\,
      CO(0) => \cpt_reg[24]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[24]_i_1__0_n_4\,
      O(2) => \cpt_reg[24]_i_1__0_n_5\,
      O(1) => \cpt_reg[24]_i_1__0_n_6\,
      O(0) => \cpt_reg[24]_i_1__0_n_7\,
      S(3 downto 0) => cpt_reg(27 downto 24)
    );
\cpt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[24]_i_1__0_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[24]_i_1__0_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[24]_i_1__0_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[28]_i_1__0_n_7\,
      Q => cpt_reg(28)
    );
\cpt_reg[28]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[24]_i_1__0_n_0\,
      CO(3) => \NLW_cpt_reg[28]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \cpt_reg[28]_i_1__0_n_1\,
      CO(1) => \cpt_reg[28]_i_1__0_n_2\,
      CO(0) => \cpt_reg[28]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[28]_i_1__0_n_4\,
      O(2) => \cpt_reg[28]_i_1__0_n_5\,
      O(1) => \cpt_reg[28]_i_1__0_n_6\,
      O(0) => \cpt_reg[28]_i_1__0_n_7\,
      S(3 downto 0) => cpt_reg(31 downto 28)
    );
\cpt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[28]_i_1__0_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[0]_i_1__0_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[28]_i_1__0_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[28]_i_1__0_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[0]_i_1__0_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[4]_i_1__0_n_7\,
      Q => cpt_reg(4)
    );
\cpt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[0]_i_1__0_n_0\,
      CO(3) => \cpt_reg[4]_i_1__0_n_0\,
      CO(2) => \cpt_reg[4]_i_1__0_n_1\,
      CO(1) => \cpt_reg[4]_i_1__0_n_2\,
      CO(0) => \cpt_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[4]_i_1__0_n_4\,
      O(2) => \cpt_reg[4]_i_1__0_n_5\,
      O(1) => \cpt_reg[4]_i_1__0_n_6\,
      O(0) => \cpt_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => cpt_reg(7 downto 4)
    );
\cpt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[4]_i_1__0_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[4]_i_1__0_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[4]_i_1__0_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[8]_i_1__0_n_7\,
      Q => cpt_reg(8)
    );
\cpt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[4]_i_1__0_n_0\,
      CO(3) => \cpt_reg[8]_i_1__0_n_0\,
      CO(2) => \cpt_reg[8]_i_1__0_n_1\,
      CO(1) => \cpt_reg[8]_i_1__0_n_2\,
      CO(0) => \cpt_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[8]_i_1__0_n_4\,
      O(2) => \cpt_reg[8]_i_1__0_n_5\,
      O(1) => \cpt_reg[8]_i_1__0_n_6\,
      O(0) => \cpt_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => cpt_reg(11 downto 8)
    );
\cpt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[8]_i_1__0_n_6\,
      Q => cpt_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity REGISTRE_DCC is
  port (
    bit_out_s : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Reset_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Interrupteur_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end REGISTRE_DCC;

architecture STRUCTURE of REGISTRE_DCC is
  signal \DCC_FRAME_GENERATOR_0/Opt2\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal Trame_DCC : STD_LOGIC_VECTOR ( 14 downto 11 );
  signal bit_out_s_i_10_n_0 : STD_LOGIC;
  signal bit_out_s_i_12_n_0 : STD_LOGIC;
  signal bit_out_s_i_19_n_0 : STD_LOGIC;
  signal bit_out_s_i_1_n_0 : STD_LOGIC;
  signal bit_out_s_i_22_n_0 : STD_LOGIC;
  signal bit_out_s_i_2_n_0 : STD_LOGIC;
  signal bit_out_s_i_3_n_0 : STD_LOGIC;
  signal bit_out_s_i_4_n_0 : STD_LOGIC;
  signal bit_out_s_i_5_n_0 : STD_LOGIC;
  signal bit_out_s_i_6_n_0 : STD_LOGIC;
  signal bit_out_s_i_8_n_0 : STD_LOGIC;
  signal bit_out_s_i_9_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_20_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_21_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_7_n_0 : STD_LOGIC;
  signal \nb_shifted[0]_i_1_n_0\ : STD_LOGIC;
  signal \nb_shifted[1]_i_1_n_0\ : STD_LOGIC;
  signal \nb_shifted[2]_i_1_n_0\ : STD_LOGIC;
  signal \nb_shifted[3]_i_1_n_0\ : STD_LOGIC;
  signal \nb_shifted[4]_i_1_n_0\ : STD_LOGIC;
  signal \nb_shifted[5]_i_1_n_0\ : STD_LOGIC;
  signal \nb_shifted[5]_i_2_n_0\ : STD_LOGIC;
  signal \nb_shifted[5]_i_4_n_0\ : STD_LOGIC;
  signal \nb_shifted[5]_i_5_n_0\ : STD_LOGIC;
  signal \nb_shifted_reg_n_0_[0]\ : STD_LOGIC;
  signal \nb_shifted_reg_n_0_[1]\ : STD_LOGIC;
  signal \nb_shifted_reg_n_0_[2]\ : STD_LOGIC;
  signal \nb_shifted_reg_n_0_[3]\ : STD_LOGIC;
  signal \nb_shifted_reg_n_0_[4]\ : STD_LOGIC;
  signal \nb_shifted_reg_n_0_[5]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 to 11 );
  signal reg_data : STD_LOGIC_VECTOR ( 20 downto 4 );
  signal \reg_data[10]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[10]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[11]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[13]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[14]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[14]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[16]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[16]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[17]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[17]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[19]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[19]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[1]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[20]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[20]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[2]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[4]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[5]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[5]_C_i_2_n_0\ : STD_LOGIC;
  signal \reg_data[5]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[6]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[7]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[7]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[8]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[8]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data__2\ : STD_LOGIC;
  signal \reg_data_reg[10]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[10]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[10]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[10]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[10]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[11]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[11]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[11]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[11]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[11]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[13]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[13]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[13]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[13]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[13]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[14]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[14]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[14]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[14]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[14]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[15]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[15]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[15]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \reg_data_reg[15]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[16]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[16]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[16]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[16]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[16]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[17]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[17]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[17]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[17]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[17]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[19]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[19]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[19]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[1]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[1]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[20]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[20]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[20]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[25]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[25]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[25]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \reg_data_reg[25]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[6]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[6]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[7]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[7]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[8]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[8]_P_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of bit_out_s_i_13 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of bit_out_s_i_14 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of bit_out_s_i_9 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \nb_shifted[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \nb_shifted[5]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_data[11]_C_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_data[11]_P_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_data[13]_P_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_data[14]_C_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_data[14]_P_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_data[2]_P_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_data[6]_C_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_data[7]_C_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[10]_LDC\ : label is "LDC";
  attribute SOFT_HLUTNM of \reg_data_reg[10]_LDC_i_3\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[11]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[13]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[14]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[15]_LDC\ : label is "LDC";
  attribute SOFT_HLUTNM of \reg_data_reg[15]_LDC_i_3\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[16]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[17]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[19]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[20]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[25]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[5]_LDC\ : label is "LDC";
  attribute SOFT_HLUTNM of \reg_data_reg[5]_LDC_i_3\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[8]_LDC\ : label is "LDC";
begin
bit_out_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => Q(0),
      I1 => bit_out_s_i_2_n_0,
      I2 => \nb_shifted_reg_n_0_[4]\,
      I3 => bit_out_s_i_3_n_0,
      I4 => \nb_shifted_reg_n_0_[5]\,
      I5 => bit_out_s_i_4_n_0,
      O => bit_out_s_i_1_n_0
    );
bit_out_s_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C383C0804003400"
    )
        port map (
      I0 => \reg_data_reg[20]_LDC_n_0\,
      I1 => \nb_shifted_reg_n_0_[1]\,
      I2 => \nb_shifted_reg_n_0_[0]\,
      I3 => \reg_data_reg[20]_C_n_0\,
      I4 => \reg_data_reg[25]_LDC_n_0\,
      I5 => \reg_data_reg[20]_P_n_0\,
      O => bit_out_s_i_10_n_0
    );
bit_out_s_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[20]_P_n_0\,
      I1 => \reg_data_reg[20]_LDC_n_0\,
      I2 => \reg_data_reg[20]_C_n_0\,
      O => reg_data(20)
    );
bit_out_s_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => reg_data(19),
      I1 => \nb_shifted_reg_n_0_[1]\,
      I2 => reg_data(17),
      I3 => \nb_shifted_reg_n_0_[0]\,
      I4 => reg_data(16),
      O => bit_out_s_i_12_n_0
    );
bit_out_s_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[19]_P_n_0\,
      I1 => \reg_data_reg[19]_LDC_n_0\,
      I2 => \reg_data_reg[19]_C_n_0\,
      O => reg_data(19)
    );
bit_out_s_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[6]_P_n_0\,
      I1 => \reg_data_reg[15]_LDC_n_0\,
      I2 => \reg_data_reg[6]_C_n_0\,
      O => reg_data(15)
    );
bit_out_s_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[14]_P_n_0\,
      I1 => \reg_data_reg[14]_LDC_n_0\,
      I2 => \reg_data_reg[14]_C_n_0\,
      O => reg_data(14)
    );
bit_out_s_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[13]_P_n_0\,
      I1 => \reg_data_reg[13]_LDC_n_0\,
      I2 => \reg_data_reg[13]_C_n_0\,
      O => reg_data(13)
    );
bit_out_s_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[11]_P_n_0\,
      I1 => \reg_data_reg[11]_LDC_n_0\,
      I2 => \reg_data_reg[11]_C_n_0\,
      O => reg_data(11)
    );
bit_out_s_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[10]_P_n_0\,
      I1 => \reg_data_reg[10]_LDC_n_0\,
      I2 => \reg_data_reg[10]_C_n_0\,
      O => reg_data(10)
    );
bit_out_s_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_data_reg[8]_C_n_0\,
      I1 => \reg_data_reg[8]_LDC_n_0\,
      I2 => \reg_data_reg[8]_P_n_0\,
      I3 => \nb_shifted_reg_n_0_[0]\,
      O => bit_out_s_i_19_n_0
    );
bit_out_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => bit_out_s_i_5_n_0,
      I1 => bit_out_s_i_6_n_0,
      I2 => \nb_shifted_reg_n_0_[3]\,
      I3 => bit_out_s_reg_i_7_n_0,
      I4 => \nb_shifted_reg_n_0_[2]\,
      I5 => bit_out_s_i_8_n_0,
      O => bit_out_s_i_2_n_0
    );
bit_out_s_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \reg_data_reg[1]_C_n_0\,
      I1 => \reg_data_reg[1]_LDC_n_0\,
      I2 => \reg_data_reg[1]_P_n_0\,
      I3 => \nb_shifted_reg_n_0_[0]\,
      O => bit_out_s_i_22_n_0
    );
bit_out_s_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[17]_P_n_0\,
      I1 => \reg_data_reg[17]_LDC_n_0\,
      I2 => \reg_data_reg[17]_C_n_0\,
      O => reg_data(17)
    );
bit_out_s_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[16]_P_n_0\,
      I1 => \reg_data_reg[16]_LDC_n_0\,
      I2 => \reg_data_reg[16]_C_n_0\,
      O => reg_data(16)
    );
bit_out_s_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[4]_P_n_0\,
      I1 => \reg_data_reg[4]_LDC_n_0\,
      I2 => \reg_data_reg[4]_C_n_0\,
      O => reg_data(4)
    );
bit_out_s_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[5]_P_n_0\,
      I1 => \reg_data_reg[5]_LDC_n_0\,
      I2 => \reg_data_reg[5]_C_n_0\,
      O => reg_data(5)
    );
bit_out_s_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[6]_P_n_0\,
      I1 => \reg_data_reg[6]_LDC_n_0\,
      I2 => \reg_data_reg[6]_C_n_0\,
      O => reg_data(6)
    );
bit_out_s_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[7]_P_n_0\,
      I1 => \reg_data_reg[7]_LDC_n_0\,
      I2 => \reg_data_reg[7]_C_n_0\,
      O => reg_data(7)
    );
bit_out_s_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => bit_out_s_i_9_n_0,
      I1 => bit_out_s_i_10_n_0,
      I2 => \nb_shifted_reg_n_0_[3]\,
      I3 => reg_data(20),
      I4 => \nb_shifted_reg_n_0_[2]\,
      I5 => bit_out_s_i_12_n_0,
      O => bit_out_s_i_3_n_0
    );
bit_out_s_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEAA"
    )
        port map (
      I0 => \nb_shifted_reg_n_0_[4]\,
      I1 => \nb_shifted_reg_n_0_[1]\,
      I2 => \nb_shifted_reg_n_0_[0]\,
      I3 => \nb_shifted_reg_n_0_[2]\,
      I4 => reg_data(19),
      I5 => \nb_shifted_reg_n_0_[3]\,
      O => bit_out_s_i_4_n_0
    );
bit_out_s_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_data(15),
      I1 => reg_data(14),
      I2 => \nb_shifted_reg_n_0_[1]\,
      I3 => reg_data(13),
      I4 => \nb_shifted_reg_n_0_[0]\,
      I5 => reg_data(11),
      O => bit_out_s_i_5_n_0
    );
bit_out_s_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => reg_data(11),
      I1 => \nb_shifted_reg_n_0_[0]\,
      I2 => reg_data(10),
      I3 => \nb_shifted_reg_n_0_[1]\,
      I4 => bit_out_s_i_19_n_0,
      O => bit_out_s_i_6_n_0
    );
bit_out_s_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_data_reg[2]_P_n_0\,
      I1 => \reg_data_reg[2]_LDC_n_0\,
      I2 => \reg_data_reg[2]_C_n_0\,
      I3 => \nb_shifted_reg_n_0_[1]\,
      I4 => bit_out_s_i_22_n_0,
      O => bit_out_s_i_8_n_0
    );
bit_out_s_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0CFD5D"
    )
        port map (
      I0 => \nb_shifted_reg_n_0_[1]\,
      I1 => \reg_data_reg[19]_C_n_0\,
      I2 => \reg_data_reg[19]_LDC_n_0\,
      I3 => \reg_data_reg[19]_P_n_0\,
      I4 => \nb_shifted_reg_n_0_[0]\,
      O => bit_out_s_i_9_n_0
    );
bit_out_s_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \nb_shifted[5]_i_1_n_0\,
      D => bit_out_s_i_1_n_0,
      PRE => Reset_IBUF,
      Q => bit_out_s
    );
bit_out_s_reg_i_20: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(4),
      I1 => reg_data(5),
      O => bit_out_s_reg_i_20_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_21: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(6),
      I1 => reg_data(7),
      O => bit_out_s_reg_i_21_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_7: unisim.vcomponents.MUXF8
     port map (
      I0 => bit_out_s_reg_i_20_n_0,
      I1 => bit_out_s_reg_i_21_n_0,
      O => bit_out_s_reg_i_7_n_0,
      S => \nb_shifted_reg_n_0_[1]\
    );
\nb_shifted[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \nb_shifted_reg_n_0_[0]\,
      I1 => \nb_shifted[5]_i_4_n_0\,
      I2 => Q(0),
      O => \nb_shifted[0]_i_1_n_0\
    );
\nb_shifted[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBFF"
    )
        port map (
      I0 => Q(0),
      I1 => \nb_shifted_reg_n_0_[0]\,
      I2 => \nb_shifted_reg_n_0_[1]\,
      I3 => \nb_shifted[5]_i_4_n_0\,
      O => \nb_shifted[1]_i_1_n_0\
    );
\nb_shifted[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E100"
    )
        port map (
      I0 => \nb_shifted_reg_n_0_[1]\,
      I1 => \nb_shifted_reg_n_0_[0]\,
      I2 => \nb_shifted_reg_n_0_[2]\,
      I3 => \nb_shifted[5]_i_4_n_0\,
      I4 => Q(0),
      O => \nb_shifted[2]_i_1_n_0\
    );
\nb_shifted[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FE010000"
    )
        port map (
      I0 => \nb_shifted_reg_n_0_[0]\,
      I1 => \nb_shifted_reg_n_0_[1]\,
      I2 => \nb_shifted_reg_n_0_[2]\,
      I3 => \nb_shifted_reg_n_0_[3]\,
      I4 => \nb_shifted[5]_i_4_n_0\,
      I5 => Q(0),
      O => \nb_shifted[3]_i_1_n_0\
    );
\nb_shifted[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEABFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => \nb_shifted_reg_n_0_[3]\,
      I2 => \nb_shifted[5]_i_5_n_0\,
      I3 => \nb_shifted_reg_n_0_[4]\,
      I4 => \nb_shifted[5]_i_4_n_0\,
      O => \nb_shifted[4]_i_1_n_0\
    );
\nb_shifted[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FE0"
    )
        port map (
      I0 => \reg_data__2\,
      I1 => \nb_shifted[5]_i_4_n_0\,
      I2 => Q(1),
      I3 => Q(0),
      O => \nb_shifted[5]_i_1_n_0\
    );
\nb_shifted[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAABFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => \nb_shifted_reg_n_0_[4]\,
      I2 => \nb_shifted[5]_i_5_n_0\,
      I3 => \nb_shifted_reg_n_0_[3]\,
      I4 => \nb_shifted_reg_n_0_[5]\,
      I5 => \nb_shifted[5]_i_4_n_0\,
      O => \nb_shifted[5]_i_2_n_0\
    );
\nb_shifted[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \nb_shifted_reg_n_0_[4]\,
      I1 => \nb_shifted_reg_n_0_[3]\,
      I2 => \nb_shifted_reg_n_0_[5]\,
      I3 => \nb_shifted_reg_n_0_[0]\,
      I4 => \nb_shifted_reg_n_0_[1]\,
      I5 => \nb_shifted_reg_n_0_[2]\,
      O => \reg_data__2\
    );
\nb_shifted[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \nb_shifted_reg_n_0_[2]\,
      I1 => \nb_shifted_reg_n_0_[1]\,
      I2 => \nb_shifted_reg_n_0_[5]\,
      I3 => \nb_shifted_reg_n_0_[0]\,
      I4 => \nb_shifted_reg_n_0_[3]\,
      I5 => \nb_shifted_reg_n_0_[4]\,
      O => \nb_shifted[5]_i_4_n_0\
    );
\nb_shifted[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \nb_shifted_reg_n_0_[2]\,
      I1 => \nb_shifted_reg_n_0_[1]\,
      I2 => \nb_shifted_reg_n_0_[0]\,
      O => \nb_shifted[5]_i_5_n_0\
    );
\nb_shifted_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nb_shifted[5]_i_1_n_0\,
      CLR => Reset_IBUF,
      D => \nb_shifted[0]_i_1_n_0\,
      Q => \nb_shifted_reg_n_0_[0]\
    );
\nb_shifted_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \nb_shifted[5]_i_1_n_0\,
      D => \nb_shifted[1]_i_1_n_0\,
      PRE => Reset_IBUF,
      Q => \nb_shifted_reg_n_0_[1]\
    );
\nb_shifted_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nb_shifted[5]_i_1_n_0\,
      CLR => Reset_IBUF,
      D => \nb_shifted[2]_i_1_n_0\,
      Q => \nb_shifted_reg_n_0_[2]\
    );
\nb_shifted_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nb_shifted[5]_i_1_n_0\,
      CLR => Reset_IBUF,
      D => \nb_shifted[3]_i_1_n_0\,
      Q => \nb_shifted_reg_n_0_[3]\
    );
\nb_shifted_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \nb_shifted[5]_i_1_n_0\,
      D => \nb_shifted[4]_i_1_n_0\,
      PRE => Reset_IBUF,
      Q => \nb_shifted_reg_n_0_[4]\
    );
\nb_shifted_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \nb_shifted[5]_i_1_n_0\,
      D => \nb_shifted[5]_i_2_n_0\,
      PRE => Reset_IBUF,
      Q => \nb_shifted_reg_n_0_[5]\
    );
\reg_data[10]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFEFEE0000"
    )
        port map (
      I0 => Interrupteur_IBUF(6),
      I1 => Interrupteur_IBUF(7),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Interrupteur_IBUF(1),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[10]_C_n_0\,
      O => \reg_data[10]_C_i_1_n_0\
    );
\reg_data[10]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFEFEE0000"
    )
        port map (
      I0 => Interrupteur_IBUF(6),
      I1 => Interrupteur_IBUF(7),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Interrupteur_IBUF(1),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[10]_P_n_0\,
      O => \reg_data[10]_P_i_1_n_0\
    );
\reg_data[11]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => Interrupteur_IBUF(6),
      I1 => Interrupteur_IBUF(7),
      I2 => \reg_data[14]_P_i_1_n_0\,
      I3 => \reg_data_reg[11]_C_n_0\,
      O => \reg_data[11]_C_i_1_n_0\
    );
\reg_data[11]_P_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Interrupteur_IBUF(6),
      I1 => Interrupteur_IBUF(7),
      O => Trame_DCC(11)
    );
\reg_data[13]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEFFFFAAAE0000"
    )
        port map (
      I0 => Trame_DCC(11),
      I1 => Interrupteur_IBUF(3),
      I2 => Interrupteur_IBUF(4),
      I3 => Interrupteur_IBUF(5),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[13]_C_n_0\,
      O => \reg_data[13]_C_i_1_n_0\
    );
\reg_data[13]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEFE"
    )
        port map (
      I0 => Interrupteur_IBUF(7),
      I1 => Interrupteur_IBUF(6),
      I2 => Interrupteur_IBUF(3),
      I3 => Interrupteur_IBUF(4),
      I4 => Interrupteur_IBUF(5),
      O => Trame_DCC(13)
    );
\reg_data[14]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => Interrupteur_IBUF(7),
      I1 => Interrupteur_IBUF(6),
      I2 => Interrupteur_IBUF(5),
      I3 => \reg_data[14]_P_i_1_n_0\,
      I4 => \reg_data_reg[14]_C_n_0\,
      O => \reg_data[14]_C_i_1_n_0\
    );
\reg_data[14]_P_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F40"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      O => \reg_data[14]_P_i_1_n_0\
    );
\reg_data[14]_P_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Interrupteur_IBUF(7),
      I1 => Interrupteur_IBUF(6),
      I2 => Interrupteur_IBUF(5),
      O => Trame_DCC(14)
    );
\reg_data[16]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABFFFFAAAB0000"
    )
        port map (
      I0 => Trame_DCC(11),
      I1 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I2 => Interrupteur_IBUF(1),
      I3 => Interrupteur_IBUF(0),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[16]_C_n_0\,
      O => \reg_data[16]_C_i_1_n_0\
    );
\reg_data[16]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABFFFFAAAB0000"
    )
        port map (
      I0 => Trame_DCC(11),
      I1 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I2 => Interrupteur_IBUF(1),
      I3 => Interrupteur_IBUF(0),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[16]_P_n_0\,
      O => \reg_data[16]_P_i_1_n_0\
    );
\reg_data[17]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I1 => Interrupteur_IBUF(7),
      I2 => Interrupteur_IBUF(6),
      I3 => \reg_data[14]_P_i_1_n_0\,
      I4 => \reg_data_reg[17]_C_n_0\,
      O => \reg_data[17]_C_i_1_n_0\
    );
\reg_data[17]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I1 => Interrupteur_IBUF(7),
      I2 => Interrupteur_IBUF(6),
      I3 => \reg_data[14]_P_i_1_n_0\,
      I4 => \reg_data_reg[17]_P_n_0\,
      O => \reg_data[17]_P_i_1_n_0\
    );
\reg_data[19]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFFFFFF10000"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Trame_DCC(11),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[19]_C_n_0\,
      O => \reg_data[19]_C_i_1_n_0\
    );
\reg_data[19]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFFFFFF10000"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Trame_DCC(11),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[19]_P_n_0\,
      O => \reg_data[19]_P_i_1_n_0\
    );
\reg_data[1]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000DFFFF000D0000"
    )
        port map (
      I0 => Interrupteur_IBUF(1),
      I1 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I2 => Interrupteur_IBUF(7),
      I3 => Interrupteur_IBUF(6),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[1]_C_n_0\,
      O => \reg_data[1]_C_i_1_n_0\
    );
\reg_data[1]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000DFFFF000D0000"
    )
        port map (
      I0 => Interrupteur_IBUF(1),
      I1 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I2 => Interrupteur_IBUF(7),
      I3 => Interrupteur_IBUF(6),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[1]_P_n_0\,
      O => \reg_data[1]_P_i_1_n_0\
    );
\reg_data[20]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054FFFF00540000"
    )
        port map (
      I0 => Trame_DCC(11),
      I1 => Interrupteur_IBUF(0),
      I2 => Interrupteur_IBUF(1),
      I3 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[20]_C_n_0\,
      O => \reg_data[20]_C_i_1_n_0\
    );
\reg_data[20]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054FFFF00540000"
    )
        port map (
      I0 => Trame_DCC(11),
      I1 => Interrupteur_IBUF(0),
      I2 => Interrupteur_IBUF(1),
      I3 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[20]_P_n_0\,
      O => \reg_data[20]_P_i_1_n_0\
    );
\reg_data[2]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEFFFFAAFE0000"
    )
        port map (
      I0 => Trame_DCC(11),
      I1 => Interrupteur_IBUF(0),
      I2 => Interrupteur_IBUF(1),
      I3 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[2]_C_n_0\,
      O => \reg_data[2]_C_i_1_n_0\
    );
\reg_data[2]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFFFE"
    )
        port map (
      I0 => Interrupteur_IBUF(7),
      I1 => Interrupteur_IBUF(6),
      I2 => Interrupteur_IBUF(0),
      I3 => Interrupteur_IBUF(1),
      I4 => \reg_data_reg[25]_LDC_i_3_n_0\,
      O => \reg_data[2]_P_i_1_n_0\
    );
\reg_data[4]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DCC_FRAME_GENERATOR_0/Opt2\(3),
      I1 => \reg_data[14]_P_i_1_n_0\,
      I2 => \reg_data_reg[4]_C_n_0\,
      O => \reg_data[4]_C_i_1_n_0\
    );
\reg_data[4]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000F0004"
    )
        port map (
      I0 => Interrupteur_IBUF(2),
      I1 => \reg_data_reg[5]_LDC_i_3_n_0\,
      I2 => Interrupteur_IBUF(5),
      I3 => Interrupteur_IBUF(4),
      I4 => Interrupteur_IBUF(3),
      I5 => Trame_DCC(11),
      O => \DCC_FRAME_GENERATOR_0/Opt2\(3)
    );
\reg_data[5]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFEFF0000"
    )
        port map (
      I0 => Interrupteur_IBUF(7),
      I1 => Interrupteur_IBUF(6),
      I2 => Interrupteur_IBUF(5),
      I3 => \reg_data[5]_C_i_2_n_0\,
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[5]_C_n_0\,
      O => \reg_data[5]_C_i_1_n_0\
    );
\reg_data[5]_C_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEFF"
    )
        port map (
      I0 => Interrupteur_IBUF(4),
      I1 => Interrupteur_IBUF(2),
      I2 => Interrupteur_IBUF(3),
      I3 => Interrupteur_IBUF(1),
      I4 => Interrupteur_IBUF(0),
      O => \reg_data[5]_C_i_2_n_0\
    );
\reg_data[5]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFEEEEEEEE"
    )
        port map (
      I0 => Trame_DCC(11),
      I1 => Interrupteur_IBUF(5),
      I2 => Interrupteur_IBUF(4),
      I3 => Interrupteur_IBUF(2),
      I4 => Interrupteur_IBUF(3),
      I5 => \reg_data_reg[5]_LDC_i_3_n_0\,
      O => \reg_data[5]_P_i_1_n_0\
    );
\reg_data[6]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DCC_FRAME_GENERATOR_0/Opt2\(5),
      I1 => \reg_data[14]_P_i_1_n_0\,
      I2 => \reg_data_reg[6]_C_n_0\,
      O => \reg_data[6]_C_i_1_n_0\
    );
\reg_data[6]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000000E"
    )
        port map (
      I0 => Interrupteur_IBUF(2),
      I1 => Interrupteur_IBUF(3),
      I2 => Interrupteur_IBUF(6),
      I3 => Interrupteur_IBUF(5),
      I4 => Interrupteur_IBUF(4),
      I5 => Interrupteur_IBUF(7),
      O => \DCC_FRAME_GENERATOR_0/Opt2\(5)
    );
\reg_data[7]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => Interrupteur_IBUF(6),
      I1 => Interrupteur_IBUF(7),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => \reg_data[14]_P_i_1_n_0\,
      I4 => \reg_data_reg[7]_C_n_0\,
      O => \reg_data[7]_C_i_1_n_0\
    );
\reg_data[7]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => Interrupteur_IBUF(6),
      I1 => Interrupteur_IBUF(7),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => \reg_data[14]_P_i_1_n_0\,
      I4 => \reg_data_reg[7]_P_n_0\,
      O => \reg_data[7]_P_i_1_n_0\
    );
\reg_data[8]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFFFF00FE0000"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Trame_DCC(11),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[8]_C_n_0\,
      O => \reg_data[8]_C_i_1_n_0\
    );
\reg_data[8]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFFFF00FE0000"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Trame_DCC(11),
      I4 => \reg_data[14]_P_i_1_n_0\,
      I5 => \reg_data_reg[8]_P_n_0\,
      O => \reg_data[8]_P_i_1_n_0\
    );
\reg_data_reg[10]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[10]_LDC_i_2_n_0\,
      D => \reg_data[10]_C_i_1_n_0\,
      Q => \reg_data_reg[10]_C_n_0\
    );
\reg_data_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[10]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[10]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[10]_LDC_n_0\
    );
\reg_data_reg[10]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCC08"
    )
        port map (
      I0 => Interrupteur_IBUF(1),
      I1 => Reset_IBUF,
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Interrupteur_IBUF(7),
      I4 => Interrupteur_IBUF(6),
      O => \reg_data_reg[10]_LDC_i_1_n_0\
    );
\reg_data_reg[10]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => Interrupteur_IBUF(1),
      I1 => Interrupteur_IBUF(5),
      I2 => Interrupteur_IBUF(4),
      I3 => Interrupteur_IBUF(3),
      I4 => Interrupteur_IBUF(2),
      I5 => p_1_in(11),
      O => \reg_data_reg[10]_LDC_i_2_n_0\
    );
\reg_data_reg[10]_LDC_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Interrupteur_IBUF(7),
      I1 => Interrupteur_IBUF(6),
      I2 => Reset_IBUF,
      O => p_1_in(11)
    );
\reg_data_reg[10]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reg_data[10]_P_i_1_n_0\,
      PRE => \reg_data_reg[10]_LDC_i_1_n_0\,
      Q => \reg_data_reg[10]_P_n_0\
    );
\reg_data_reg[11]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[11]_LDC_i_2_n_0\,
      D => \reg_data[11]_C_i_1_n_0\,
      Q => \reg_data_reg[11]_C_n_0\
    );
\reg_data_reg[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[11]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[11]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[11]_LDC_n_0\
    );
\reg_data_reg[11]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => Interrupteur_IBUF(7),
      I1 => Interrupteur_IBUF(6),
      I2 => Reset_IBUF,
      O => \reg_data_reg[11]_LDC_i_1_n_0\
    );
\reg_data_reg[11]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Interrupteur_IBUF(6),
      I2 => Interrupteur_IBUF(7),
      O => \reg_data_reg[11]_LDC_i_2_n_0\
    );
\reg_data_reg[11]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[14]_P_i_1_n_0\,
      D => Trame_DCC(11),
      PRE => \reg_data_reg[11]_LDC_i_1_n_0\,
      Q => \reg_data_reg[11]_P_n_0\
    );
\reg_data_reg[13]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[13]_LDC_i_2_n_0\,
      D => \reg_data[13]_C_i_1_n_0\,
      Q => \reg_data_reg[13]_C_n_0\
    );
\reg_data_reg[13]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[13]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[13]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[13]_LDC_n_0\
    );
\reg_data_reg[13]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1000000000"
    )
        port map (
      I0 => Interrupteur_IBUF(5),
      I1 => Interrupteur_IBUF(4),
      I2 => Interrupteur_IBUF(3),
      I3 => Interrupteur_IBUF(6),
      I4 => Interrupteur_IBUF(7),
      I5 => Reset_IBUF,
      O => \reg_data_reg[13]_LDC_i_1_n_0\
    );
\reg_data_reg[13]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000EF00000000"
    )
        port map (
      I0 => Interrupteur_IBUF(5),
      I1 => Interrupteur_IBUF(4),
      I2 => Interrupteur_IBUF(3),
      I3 => Interrupteur_IBUF(7),
      I4 => Interrupteur_IBUF(6),
      I5 => Reset_IBUF,
      O => \reg_data_reg[13]_LDC_i_2_n_0\
    );
\reg_data_reg[13]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[14]_P_i_1_n_0\,
      D => Trame_DCC(13),
      PRE => \reg_data_reg[13]_LDC_i_1_n_0\,
      Q => \reg_data_reg[13]_P_n_0\
    );
\reg_data_reg[14]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[14]_LDC_i_2_n_0\,
      D => \reg_data[14]_C_i_1_n_0\,
      Q => \reg_data_reg[14]_C_n_0\
    );
\reg_data_reg[14]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[14]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[14]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[14]_LDC_n_0\
    );
\reg_data_reg[14]_LDC_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => Interrupteur_IBUF(5),
      I1 => Interrupteur_IBUF(6),
      I2 => Interrupteur_IBUF(7),
      I3 => Reset_IBUF,
      O => \reg_data_reg[14]_LDC_i_1_n_0\
    );
\reg_data_reg[14]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => Interrupteur_IBUF(5),
      I1 => Interrupteur_IBUF(7),
      I2 => Interrupteur_IBUF(6),
      I3 => Reset_IBUF,
      O => \reg_data_reg[14]_LDC_i_2_n_0\
    );
\reg_data_reg[14]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[14]_P_i_1_n_0\,
      D => Trame_DCC(14),
      PRE => \reg_data_reg[14]_LDC_i_1_n_0\,
      Q => \reg_data_reg[14]_P_n_0\
    );
\reg_data_reg[15]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[15]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[15]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[15]_LDC_n_0\
    );
\reg_data_reg[15]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888AAA8"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Interrupteur_IBUF(7),
      I2 => Interrupteur_IBUF(2),
      I3 => Interrupteur_IBUF(3),
      I4 => Interrupteur_IBUF(6),
      I5 => \reg_data_reg[15]_LDC_i_3_n_0\,
      O => \reg_data_reg[15]_LDC_i_1_n_0\
    );
\reg_data_reg[15]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022202222"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Interrupteur_IBUF(7),
      I2 => \reg_data_reg[15]_LDC_i_3_n_0\,
      I3 => Interrupteur_IBUF(6),
      I4 => Interrupteur_IBUF(3),
      I5 => Interrupteur_IBUF(2),
      O => \reg_data_reg[15]_LDC_i_2_n_0\
    );
\reg_data_reg[15]_LDC_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Interrupteur_IBUF(4),
      I1 => Interrupteur_IBUF(5),
      O => \reg_data_reg[15]_LDC_i_3_n_0\
    );
\reg_data_reg[16]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[16]_LDC_i_2_n_0\,
      D => \reg_data[16]_C_i_1_n_0\,
      Q => \reg_data_reg[16]_C_n_0\
    );
\reg_data_reg[16]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[16]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[16]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[16]_LDC_n_0\
    );
\reg_data_reg[16]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F00010"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      I2 => Reset_IBUF,
      I3 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I4 => Interrupteur_IBUF(7),
      I5 => Interrupteur_IBUF(6),
      O => \reg_data_reg[16]_LDC_i_1_n_0\
    );
\reg_data_reg[16]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FE00"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Reset_IBUF,
      I4 => Interrupteur_IBUF(6),
      I5 => Interrupteur_IBUF(7),
      O => \reg_data_reg[16]_LDC_i_2_n_0\
    );
\reg_data_reg[16]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reg_data[16]_P_i_1_n_0\,
      PRE => \reg_data_reg[16]_LDC_i_1_n_0\,
      Q => \reg_data_reg[16]_P_n_0\
    );
\reg_data_reg[17]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[17]_LDC_i_2_n_0\,
      D => \reg_data[17]_C_i_1_n_0\,
      Q => \reg_data_reg[17]_C_n_0\
    );
\reg_data_reg[17]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[17]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[17]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[17]_LDC_n_0\
    );
\reg_data_reg[17]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => Interrupteur_IBUF(2),
      I1 => Interrupteur_IBUF(3),
      I2 => Interrupteur_IBUF(4),
      I3 => Interrupteur_IBUF(5),
      I4 => Reset_IBUF,
      I5 => Trame_DCC(11),
      O => \reg_data_reg[17]_LDC_i_1_n_0\
    );
\reg_data_reg[17]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00000002"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Interrupteur_IBUF(2),
      I2 => Interrupteur_IBUF(3),
      I3 => Interrupteur_IBUF(4),
      I4 => Interrupteur_IBUF(5),
      I5 => Trame_DCC(11),
      O => \reg_data_reg[17]_LDC_i_2_n_0\
    );
\reg_data_reg[17]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reg_data[17]_P_i_1_n_0\,
      PRE => \reg_data_reg[17]_LDC_i_1_n_0\,
      Q => \reg_data_reg[17]_P_n_0\
    );
\reg_data_reg[19]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[25]_LDC_i_1_n_0\,
      D => \reg_data[19]_C_i_1_n_0\,
      Q => \reg_data_reg[19]_C_n_0\
    );
\reg_data_reg[19]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[25]_LDC_i_1_n_0\,
      D => '1',
      G => \reg_data_reg[25]_LDC_i_2_n_0\,
      GE => '1',
      Q => \reg_data_reg[19]_LDC_n_0\
    );
\reg_data_reg[19]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reg_data[19]_P_i_1_n_0\,
      PRE => \reg_data_reg[25]_LDC_i_2_n_0\,
      Q => \reg_data_reg[19]_P_n_0\
    );
\reg_data_reg[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[10]_LDC_i_1_n_0\,
      D => \reg_data[1]_C_i_1_n_0\,
      Q => \reg_data_reg[1]_C_n_0\
    );
\reg_data_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[10]_LDC_i_1_n_0\,
      D => '1',
      G => \reg_data_reg[10]_LDC_i_2_n_0\,
      GE => '1',
      Q => \reg_data_reg[1]_LDC_n_0\
    );
\reg_data_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reg_data[1]_P_i_1_n_0\,
      PRE => \reg_data_reg[10]_LDC_i_2_n_0\,
      Q => \reg_data_reg[1]_P_n_0\
    );
\reg_data_reg[20]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[25]_LDC_i_2_n_0\,
      D => \reg_data[20]_C_i_1_n_0\,
      Q => \reg_data_reg[20]_C_n_0\
    );
\reg_data_reg[20]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[25]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[25]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[20]_LDC_n_0\
    );
\reg_data_reg[20]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reg_data[20]_P_i_1_n_0\,
      PRE => \reg_data_reg[25]_LDC_i_1_n_0\,
      Q => \reg_data_reg[20]_P_n_0\
    );
\reg_data_reg[25]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[25]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[25]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[25]_LDC_n_0\
    );
\reg_data_reg[25]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000E00"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Reset_IBUF,
      I4 => Interrupteur_IBUF(6),
      I5 => Interrupteur_IBUF(7),
      O => \reg_data_reg[25]_LDC_i_1_n_0\
    );
\reg_data_reg[25]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA888A"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I2 => Interrupteur_IBUF(1),
      I3 => Interrupteur_IBUF(0),
      I4 => Interrupteur_IBUF(7),
      I5 => Interrupteur_IBUF(6),
      O => \reg_data_reg[25]_LDC_i_2_n_0\
    );
\reg_data_reg[25]_LDC_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Interrupteur_IBUF(5),
      I1 => Interrupteur_IBUF(4),
      I2 => Interrupteur_IBUF(3),
      I3 => Interrupteur_IBUF(2),
      O => \reg_data_reg[25]_LDC_i_3_n_0\
    );
\reg_data_reg[2]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[2]_LDC_i_2_n_0\,
      D => \reg_data[2]_C_i_1_n_0\,
      Q => \reg_data_reg[2]_C_n_0\
    );
\reg_data_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[2]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[2]_LDC_n_0\
    );
\reg_data_reg[2]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F000E0"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      I2 => Reset_IBUF,
      I3 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I4 => Interrupteur_IBUF(7),
      I5 => Interrupteur_IBUF(6),
      O => \reg_data_reg[2]_LDC_i_1_n_0\
    );
\reg_data_reg[2]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F100"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      I2 => \reg_data_reg[25]_LDC_i_3_n_0\,
      I3 => Reset_IBUF,
      I4 => Interrupteur_IBUF(6),
      I5 => Interrupteur_IBUF(7),
      O => \reg_data_reg[2]_LDC_i_2_n_0\
    );
\reg_data_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[14]_P_i_1_n_0\,
      D => \reg_data[2]_P_i_1_n_0\,
      PRE => \reg_data_reg[2]_LDC_i_1_n_0\,
      Q => \reg_data_reg[2]_P_n_0\
    );
\reg_data_reg[4]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[4]_LDC_i_2_n_0\,
      D => \reg_data[4]_C_i_1_n_0\,
      Q => \reg_data_reg[4]_C_n_0\
    );
\reg_data_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[4]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[4]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[4]_LDC_n_0\
    );
\reg_data_reg[4]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2222AAAA0200"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => \reg_data_reg[15]_LDC_i_3_n_0\,
      I2 => Interrupteur_IBUF(2),
      I3 => \reg_data_reg[5]_LDC_i_3_n_0\,
      I4 => Trame_DCC(11),
      I5 => Interrupteur_IBUF(3),
      O => \reg_data_reg[4]_LDC_i_1_n_0\
    );
\reg_data_reg[4]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3331333033313331"
    )
        port map (
      I0 => Interrupteur_IBUF(3),
      I1 => p_1_in(11),
      I2 => Interrupteur_IBUF(4),
      I3 => Interrupteur_IBUF(5),
      I4 => Interrupteur_IBUF(2),
      I5 => \reg_data_reg[5]_LDC_i_3_n_0\,
      O => \reg_data_reg[4]_LDC_i_2_n_0\
    );
\reg_data_reg[4]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[14]_P_i_1_n_0\,
      D => \DCC_FRAME_GENERATOR_0/Opt2\(3),
      PRE => \reg_data_reg[4]_LDC_i_1_n_0\,
      Q => \reg_data_reg[4]_P_n_0\
    );
\reg_data_reg[5]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[5]_LDC_i_2_n_0\,
      D => \reg_data[5]_C_i_1_n_0\,
      Q => \reg_data_reg[5]_C_n_0\
    );
\reg_data_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[5]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[5]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[5]_LDC_n_0\
    );
\reg_data_reg[5]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888A88888888"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC(14),
      I2 => Interrupteur_IBUF(4),
      I3 => Interrupteur_IBUF(2),
      I4 => Interrupteur_IBUF(3),
      I5 => \reg_data_reg[5]_LDC_i_3_n_0\,
      O => \reg_data_reg[5]_LDC_i_1_n_0\
    );
\reg_data_reg[5]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFD"
    )
        port map (
      I0 => \reg_data_reg[5]_LDC_i_3_n_0\,
      I1 => Interrupteur_IBUF(3),
      I2 => Interrupteur_IBUF(2),
      I3 => Interrupteur_IBUF(4),
      I4 => Interrupteur_IBUF(5),
      I5 => p_1_in(11),
      O => \reg_data_reg[5]_LDC_i_2_n_0\
    );
\reg_data_reg[5]_LDC_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Interrupteur_IBUF(0),
      I1 => Interrupteur_IBUF(1),
      O => \reg_data_reg[5]_LDC_i_3_n_0\
    );
\reg_data_reg[5]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[14]_P_i_1_n_0\,
      D => \reg_data[5]_P_i_1_n_0\,
      PRE => \reg_data_reg[5]_LDC_i_1_n_0\,
      Q => \reg_data_reg[5]_P_n_0\
    );
\reg_data_reg[6]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[15]_LDC_i_2_n_0\,
      D => \reg_data[6]_C_i_1_n_0\,
      Q => \reg_data_reg[6]_C_n_0\
    );
\reg_data_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[15]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[15]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[6]_LDC_n_0\
    );
\reg_data_reg[6]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[14]_P_i_1_n_0\,
      D => \DCC_FRAME_GENERATOR_0/Opt2\(5),
      PRE => \reg_data_reg[15]_LDC_i_1_n_0\,
      Q => \reg_data_reg[6]_P_n_0\
    );
\reg_data_reg[7]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[17]_LDC_i_1_n_0\,
      D => \reg_data[7]_C_i_1_n_0\,
      Q => \reg_data_reg[7]_C_n_0\
    );
\reg_data_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[17]_LDC_i_1_n_0\,
      D => '1',
      G => \reg_data_reg[17]_LDC_i_2_n_0\,
      GE => '1',
      Q => \reg_data_reg[7]_LDC_n_0\
    );
\reg_data_reg[7]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reg_data[7]_P_i_1_n_0\,
      PRE => \reg_data_reg[17]_LDC_i_2_n_0\,
      Q => \reg_data_reg[7]_P_n_0\
    );
\reg_data_reg[8]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \reg_data_reg[16]_LDC_i_1_n_0\,
      D => \reg_data[8]_C_i_1_n_0\,
      Q => \reg_data_reg[8]_C_n_0\
    );
\reg_data_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[16]_LDC_i_1_n_0\,
      D => '1',
      G => \reg_data_reg[16]_LDC_i_2_n_0\,
      GE => '1',
      Q => \reg_data_reg[8]_LDC_n_0\
    );
\reg_data_reg[8]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reg_data[8]_P_i_1_n_0\,
      PRE => \reg_data_reg[16]_LDC_i_2_n_0\,
      Q => \reg_data_reg[8]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_Bit0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIN_0_s : out STD_LOGIC;
    \FSM_onehot_EP_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp_BUFG : in STD_LOGIC
  );
end DCC_Bit0;

architecture STRUCTURE of DCC_Bit0 is
  signal Cmd : STD_LOGIC;
  signal \^fin_0_s\ : STD_LOGIC;
  signal Fin_Cpt_Low : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Reset_Cpt_High : STD_LOGIC;
  signal Reset_Cpt_Low : STD_LOGIC;
begin
  FIN_0_s <= \^fin_0_s\;
  Q(0) <= \^q\(0);
Counter_High: entity work.DCC_Compteur_1
     port map (
      Clk_Temp_BUFG => Clk_Temp_BUFG,
      FIN_0_s => \^fin_0_s\,
      Q(0) => \^q\(0),
      Reset_Cpt_High => Reset_Cpt_High
    );
Counter_Low: entity work.DCC_Compteur_2
     port map (
      Clk_Temp_BUFG => Clk_Temp_BUFG,
      Fin_Cpt_Low => Fin_Cpt_Low,
      Q(0) => Cmd,
      Reset_Cpt_Low => Reset_Cpt_Low
    );
MAE: entity work.DDC_MAE_3
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      FIN_0_s => \^fin_0_s\,
      \FSM_onehot_EP_reg[1]_0\(0) => \FSM_onehot_EP_reg[1]\(0),
      Fin_Cpt_Low => Fin_Cpt_Low,
      Q(1) => \^q\(0),
      Q(0) => Cmd,
      Reset_Cpt_High => Reset_Cpt_High,
      Reset_Cpt_Low => Reset_Cpt_Low
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_Bit1 is
  port (
    SORTIE_DCC_OBUF : out STD_LOGIC;
    FIN_1_s : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_EP_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp_BUFG : in STD_LOGIC
  );
end DCC_Bit1;

architecture STRUCTURE of DCC_Bit1 is
  signal Cmd : STD_LOGIC;
  signal DCC_1 : STD_LOGIC;
  signal \^fin_1_s\ : STD_LOGIC;
  signal Fin_Cpt_Low : STD_LOGIC;
  signal Reset_Cpt_High : STD_LOGIC;
  signal Reset_Cpt_Low : STD_LOGIC;
begin
  FIN_1_s <= \^fin_1_s\;
Counter_High: entity work.DCC_Compteur
     port map (
      Clk_Temp_BUFG => Clk_Temp_BUFG,
      FIN_1_s => \^fin_1_s\,
      Q(0) => DCC_1,
      Reset_Cpt_High => Reset_Cpt_High
    );
Counter_Low: entity work.DCC_Compteur_0
     port map (
      Clk_Temp_BUFG => Clk_Temp_BUFG,
      Fin_Cpt_Low => Fin_Cpt_Low,
      Q(0) => Cmd,
      Reset_Cpt_Low => Reset_Cpt_Low
    );
MAE: entity work.DDC_MAE
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      FIN_1_s => \^fin_1_s\,
      \FSM_onehot_EP_reg[1]_0\(0) => \FSM_onehot_EP_reg[1]\(0),
      Fin_Cpt_Low => Fin_Cpt_Low,
      Q(1) => DCC_1,
      Q(0) => Cmd,
      Reset_Cpt_High => Reset_Cpt_High,
      Reset_Cpt_Low => Reset_Cpt_Low,
      SORTIE_DCC(0) => Q(0),
      SORTIE_DCC_OBUF => SORTIE_DCC_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MAE is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_Tempo_s : out STD_LOGIC;
    \FSM_onehot_EP_reg[8]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FIN_0_s : in STD_LOGIC;
    FIN_1_s : in STD_LOGIC;
    bit_out_s : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Reset_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end MAE;

architecture STRUCTURE of MAE is
  signal Counter_MAE_n_0 : STD_LOGIC;
  signal Counter_MAE_n_1 : STD_LOGIC;
  signal \FSM_onehot_EP[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_EP_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_EP_reg_n_0_[6]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_EP[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_EP[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_EP[5]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[0]\ : label is "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[1]\ : label is "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[2]\ : label is "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[3]\ : label is "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[4]\ : label is "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[5]\ : label is "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[6]\ : label is "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[7]\ : label is "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_EP_reg[8]\ : label is "send0:000001000,send0_wait:000010000,shift:000000100,charge:000000010,idle:000000001,tempo:010000000,send1_wait:001000000,tempo_wait:100000000,send1:000100000";
  attribute SOFT_HLUTNM of \Q[1]_i_2\ : label is "soft_lutpair7";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
Counter_MAE: entity work.MAE_Compteur
     port map (
      CLK => CLK,
      D(1) => Counter_MAE_n_0,
      D(0) => Counter_MAE_n_1,
      FIN_0_s => FIN_0_s,
      FIN_1_s => FIN_1_s,
      Q(5) => \^q\(4),
      Q(4) => \FSM_onehot_EP_reg_n_0_[6]\,
      Q(3) => \FSM_onehot_EP_reg_n_0_[4]\,
      Q(2 downto 1) => \^q\(1 downto 0),
      Q(0) => \FSM_onehot_EP_reg_n_0_[0]\
    );
\FSM_onehot_EP[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \FSM_onehot_EP_reg_n_0_[0]\,
      I3 => \^q\(5),
      I4 => \^q\(1),
      O => AR(0)
    );
\FSM_onehot_EP[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => bit_out_s,
      O => \FSM_onehot_EP[3]_i_1_n_0\
    );
\FSM_onehot_EP[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(2),
      I1 => FIN_0_s,
      I2 => \FSM_onehot_EP_reg_n_0_[4]\,
      O => \FSM_onehot_EP[4]_i_1_n_0\
    );
\FSM_onehot_EP[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => bit_out_s,
      O => \FSM_onehot_EP[5]_i_1_n_0\
    );
\FSM_onehot_EP[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(3),
      I1 => FIN_1_s,
      I2 => \FSM_onehot_EP_reg_n_0_[6]\,
      O => \FSM_onehot_EP[6]_i_1_n_0\
    );
\FSM_onehot_EP[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \FSM_onehot_EP_reg[8]_0\(1),
      I2 => \FSM_onehot_EP_reg[8]_0\(0),
      I3 => \^q\(5),
      O => \FSM_onehot_EP[8]_i_1_n_0\
    );
\FSM_onehot_EP_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      PRE => Reset_IBUF,
      Q => \FSM_onehot_EP_reg_n_0_[0]\
    );
\FSM_onehot_EP_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => \FSM_onehot_EP_reg_n_0_[0]\,
      Q => \^q\(0)
    );
\FSM_onehot_EP_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => Counter_MAE_n_1,
      Q => \^q\(1)
    );
\FSM_onehot_EP_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => \FSM_onehot_EP[3]_i_1_n_0\,
      Q => \^q\(2)
    );
\FSM_onehot_EP_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => \FSM_onehot_EP[4]_i_1_n_0\,
      Q => \FSM_onehot_EP_reg_n_0_[4]\
    );
\FSM_onehot_EP_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => \FSM_onehot_EP[5]_i_1_n_0\,
      Q => \^q\(3)
    );
\FSM_onehot_EP_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => \FSM_onehot_EP[6]_i_1_n_0\,
      Q => \FSM_onehot_EP_reg_n_0_[6]\
    );
\FSM_onehot_EP_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => Counter_MAE_n_0,
      Q => \^q\(4)
    );
\FSM_onehot_EP_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => Reset_IBUF,
      D => \FSM_onehot_EP[8]_i_1_n_0\,
      Q => \^q\(5)
    );
\Q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_EP_reg_n_0_[0]\,
      I2 => \^q\(1),
      O => Reset_Tempo_s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TOP is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupteur : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SORTIE_DCC : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TOP : entity is true;
end TOP;

architecture STRUCTURE of TOP is
  signal COMPTEUR_TEMPO_0_n_1 : STD_LOGIC;
  signal COMPTEUR_TEMPO_0_n_2 : STD_LOGIC;
  signal Clk_IBUF : STD_LOGIC;
  signal Clk_IBUF_BUFG : STD_LOGIC;
  signal Clk_Temp : STD_LOGIC;
  signal Clk_Temp_BUFG : STD_LOGIC;
  signal Com_REG_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DCC_0 : STD_LOGIC;
  signal FIN_0_s : STD_LOGIC;
  signal FIN_1_s : STD_LOGIC;
  signal GO_0_s : STD_LOGIC;
  signal GO_1_s : STD_LOGIC;
  signal Interrupteur_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MAE_0_n_0 : STD_LOGIC;
  signal Reset_DDC1_s : STD_LOGIC;
  signal Reset_IBUF : STD_LOGIC;
  signal Reset_Tempo_s : STD_LOGIC;
  signal SORTIE_DCC_OBUF : STD_LOGIC;
  signal Start_Tempo_s : STD_LOGIC;
  signal bit_out_s : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
begin
CLK_DIV_0: entity work.CLK_DIV
     port map (
      CLK => Clk_IBUF_BUFG,
      Clk_Temp => Clk_Temp,
      Reset_IBUF => Reset_IBUF
    );
COMPTEUR_TEMPO_0: entity work.COMPTEUR_TEMPO
     port map (
      CLK => Clk_IBUF_BUFG,
      Clk_Temp_BUFG => Clk_Temp_BUFG,
      D(0) => COMPTEUR_TEMPO_0_n_2,
      \FSM_onehot_EP_reg[0]\(1) => MAE_0_n_0,
      \FSM_onehot_EP_reg[0]\(0) => Start_Tempo_s,
      Q(1) => p_1_in,
      Q(0) => COMPTEUR_TEMPO_0_n_1,
      Reset_Tempo_s => Reset_Tempo_s
    );
Clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Clk_IBUF,
      O => Clk_IBUF_BUFG
    );
Clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clk,
      O => Clk_IBUF
    );
Clk_Temp_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Clk_Temp,
      O => Clk_Temp_BUFG
    );
DCC_Bit0_0: entity work.DCC_Bit0
     port map (
      AR(0) => Reset_DDC1_s,
      CLK => Clk_IBUF_BUFG,
      Clk_Temp_BUFG => Clk_Temp_BUFG,
      FIN_0_s => FIN_0_s,
      \FSM_onehot_EP_reg[1]\(0) => GO_0_s,
      Q(0) => DCC_0
    );
DCC_Bit1_0: entity work.DCC_Bit1
     port map (
      AR(0) => Reset_DDC1_s,
      CLK => Clk_IBUF_BUFG,
      Clk_Temp_BUFG => Clk_Temp_BUFG,
      FIN_1_s => FIN_1_s,
      \FSM_onehot_EP_reg[1]\(0) => GO_1_s,
      Q(0) => DCC_0,
      SORTIE_DCC_OBUF => SORTIE_DCC_OBUF
    );
\Interrupteur_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupteur(0),
      O => Interrupteur_IBUF(0)
    );
\Interrupteur_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupteur(1),
      O => Interrupteur_IBUF(1)
    );
\Interrupteur_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupteur(2),
      O => Interrupteur_IBUF(2)
    );
\Interrupteur_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupteur(3),
      O => Interrupteur_IBUF(3)
    );
\Interrupteur_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupteur(4),
      O => Interrupteur_IBUF(4)
    );
\Interrupteur_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupteur(5),
      O => Interrupteur_IBUF(5)
    );
\Interrupteur_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupteur(6),
      O => Interrupteur_IBUF(6)
    );
\Interrupteur_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupteur(7),
      O => Interrupteur_IBUF(7)
    );
MAE_0: entity work.MAE
     port map (
      AR(0) => Reset_DDC1_s,
      CLK => Clk_IBUF_BUFG,
      D(0) => COMPTEUR_TEMPO_0_n_2,
      FIN_0_s => FIN_0_s,
      FIN_1_s => FIN_1_s,
      \FSM_onehot_EP_reg[8]_0\(1) => p_1_in,
      \FSM_onehot_EP_reg[8]_0\(0) => COMPTEUR_TEMPO_0_n_1,
      Q(5) => MAE_0_n_0,
      Q(4) => Start_Tempo_s,
      Q(3) => GO_1_s,
      Q(2) => GO_0_s,
      Q(1) => Com_REG_s(0),
      Q(0) => Com_REG_s(1),
      Reset_IBUF => Reset_IBUF,
      Reset_Tempo_s => Reset_Tempo_s,
      bit_out_s => bit_out_s
    );
REGISTRE_DCC_0: entity work.REGISTRE_DCC
     port map (
      CLK => Clk_IBUF_BUFG,
      Interrupteur_IBUF(7 downto 0) => Interrupteur_IBUF(7 downto 0),
      Q(1) => Com_REG_s(0),
      Q(0) => Com_REG_s(1),
      Reset_IBUF => Reset_IBUF,
      bit_out_s => bit_out_s
    );
Reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Reset,
      O => Reset_IBUF
    );
SORTIE_DCC_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SORTIE_DCC_OBUF,
      O => SORTIE_DCC
    );
end STRUCTURE;
