-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed May 10 13:01:06 2023
-- Host        : SUMarc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/marcs/OneDrive/Bureau/Desktop/FPGA/Test/Test.sim/sim_1/synth/func/xsim/TOP_tb_func_synth.vhd
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
  signal \FSM_onehot_EP[7]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_EP[7]_i_15_n_0\ : STD_LOGIC;
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
\FSM_onehot_EP[7]_i_10\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_EP[7]_i_10_n_0\
    );
\FSM_onehot_EP[7]_i_11\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_EP[7]_i_11_n_0\
    );
\FSM_onehot_EP[7]_i_12\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_EP[7]_i_12_n_0\
    );
\FSM_onehot_EP[7]_i_13\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_EP[7]_i_13_n_0\
    );
\FSM_onehot_EP[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(30),
      I1 => cpt_reg(31),
      O => \FSM_onehot_EP[7]_i_14_n_0\
    );
\FSM_onehot_EP[7]_i_15\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_EP[7]_i_15_n_0\
    );
\FSM_onehot_EP[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_EP[7]_i_10_n_0\,
      I1 => \FSM_onehot_EP[7]_i_11_n_0\,
      I2 => \FSM_onehot_EP[7]_i_12_n_0\,
      I3 => \FSM_onehot_EP[7]_i_13_n_0\,
      I4 => \FSM_onehot_EP[7]_i_14_n_0\,
      I5 => \FSM_onehot_EP[7]_i_15_n_0\,
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
  signal \FSM_onehot_EP[7]_i_4_n_0\ : STD_LOGIC;
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
\FSM_onehot_EP[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_EP[7]_i_4_n_0\,
      I1 => \FSM_onehot_EP[7]_i_5_n_0\,
      I2 => \FSM_onehot_EP[7]_i_6_n_0\,
      I3 => \FSM_onehot_EP[7]_i_7_n_0\,
      I4 => \FSM_onehot_EP[7]_i_8_n_0\,
      I5 => \FSM_onehot_EP[7]_i_9_n_0\,
      O => FIN_0_s
    );
\FSM_onehot_EP[7]_i_4\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_EP[7]_i_4_n_0\
    );
\FSM_onehot_EP[7]_i_5\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_EP[7]_i_5_n_0\
    );
\FSM_onehot_EP[7]_i_6\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_EP[7]_i_6_n_0\
    );
\FSM_onehot_EP[7]_i_7\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_EP[7]_i_7_n_0\
    );
\FSM_onehot_EP[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(30),
      I1 => cpt_reg(31),
      O => \FSM_onehot_EP[7]_i_8_n_0\
    );
\FSM_onehot_EP[7]_i_9\: unisim.vcomponents.LUT6
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
  signal \Fin0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Fin0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Fin0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Fin0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Fin0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Fin0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Fin0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \Fin0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \Fin0_carry__0_n_0\ : STD_LOGIC;
  signal \Fin0_carry__0_n_1\ : STD_LOGIC;
  signal \Fin0_carry__0_n_2\ : STD_LOGIC;
  signal \Fin0_carry__0_n_3\ : STD_LOGIC;
  signal \Fin0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Fin0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Fin0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Fin0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Fin0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Fin0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \Fin0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \Fin0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \Fin0_carry__1_n_0\ : STD_LOGIC;
  signal \Fin0_carry__1_n_1\ : STD_LOGIC;
  signal \Fin0_carry__1_n_2\ : STD_LOGIC;
  signal \Fin0_carry__1_n_3\ : STD_LOGIC;
  signal \Fin0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Fin0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Fin0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Fin0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Fin0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Fin0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \Fin0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \Fin0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \Fin0_carry__2_n_1\ : STD_LOGIC;
  signal \Fin0_carry__2_n_2\ : STD_LOGIC;
  signal \Fin0_carry__2_n_3\ : STD_LOGIC;
  signal Fin0_carry_i_1_n_0 : STD_LOGIC;
  signal Fin0_carry_i_2_n_0 : STD_LOGIC;
  signal Fin0_carry_i_3_n_0 : STD_LOGIC;
  signal Fin0_carry_i_4_n_0 : STD_LOGIC;
  signal Fin0_carry_i_5_n_0 : STD_LOGIC;
  signal Fin0_carry_i_6_n_0 : STD_LOGIC;
  signal Fin0_carry_n_0 : STD_LOGIC;
  signal Fin0_carry_n_1 : STD_LOGIC;
  signal Fin0_carry_n_2 : STD_LOGIC;
  signal Fin0_carry_n_3 : STD_LOGIC;
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
  signal NLW_Fin0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Fin0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Fin0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Fin0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cpt_reg[28]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of Fin0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \Fin0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \Fin0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \Fin0_carry__2\ : label is 11;
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
Fin0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Fin0_carry_n_0,
      CO(2) => Fin0_carry_n_1,
      CO(1) => Fin0_carry_n_2,
      CO(0) => Fin0_carry_n_3,
      CYINIT => '1',
      DI(3) => Fin0_carry_i_1_n_0,
      DI(2) => '0',
      DI(1) => cpt_reg(3),
      DI(0) => Fin0_carry_i_2_n_0,
      O(3 downto 0) => NLW_Fin0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => Fin0_carry_i_3_n_0,
      S(2) => Fin0_carry_i_4_n_0,
      S(1) => Fin0_carry_i_5_n_0,
      S(0) => Fin0_carry_i_6_n_0
    );
\Fin0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Fin0_carry_n_0,
      CO(3) => \Fin0_carry__0_n_0\,
      CO(2) => \Fin0_carry__0_n_1\,
      CO(1) => \Fin0_carry__0_n_2\,
      CO(0) => \Fin0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \Fin0_carry__0_i_1_n_0\,
      DI(2) => \Fin0_carry__0_i_2_n_0\,
      DI(1) => \Fin0_carry__0_i_3_n_0\,
      DI(0) => \Fin0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_Fin0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \Fin0_carry__0_i_5_n_0\,
      S(2) => \Fin0_carry__0_i_6_n_0\,
      S(1) => \Fin0_carry__0_i_7_n_0\,
      S(0) => \Fin0_carry__0_i_8_n_0\
    );
\Fin0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(14),
      I1 => cpt_reg(15),
      O => \Fin0_carry__0_i_1_n_0\
    );
\Fin0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(12),
      I1 => cpt_reg(13),
      O => \Fin0_carry__0_i_2_n_0\
    );
\Fin0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(10),
      I1 => cpt_reg(11),
      O => \Fin0_carry__0_i_3_n_0\
    );
\Fin0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(8),
      I1 => cpt_reg(9),
      O => \Fin0_carry__0_i_4_n_0\
    );
\Fin0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(14),
      I1 => cpt_reg(15),
      O => \Fin0_carry__0_i_5_n_0\
    );
\Fin0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(12),
      I1 => cpt_reg(13),
      O => \Fin0_carry__0_i_6_n_0\
    );
\Fin0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(10),
      I1 => cpt_reg(11),
      O => \Fin0_carry__0_i_7_n_0\
    );
\Fin0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(8),
      I1 => cpt_reg(9),
      O => \Fin0_carry__0_i_8_n_0\
    );
\Fin0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Fin0_carry__0_n_0\,
      CO(3) => \Fin0_carry__1_n_0\,
      CO(2) => \Fin0_carry__1_n_1\,
      CO(1) => \Fin0_carry__1_n_2\,
      CO(0) => \Fin0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \Fin0_carry__1_i_1_n_0\,
      DI(2) => \Fin0_carry__1_i_2_n_0\,
      DI(1) => \Fin0_carry__1_i_3_n_0\,
      DI(0) => \Fin0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_Fin0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \Fin0_carry__1_i_5_n_0\,
      S(2) => \Fin0_carry__1_i_6_n_0\,
      S(1) => \Fin0_carry__1_i_7_n_0\,
      S(0) => \Fin0_carry__1_i_8_n_0\
    );
\Fin0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(22),
      I1 => cpt_reg(23),
      O => \Fin0_carry__1_i_1_n_0\
    );
\Fin0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(20),
      I1 => cpt_reg(21),
      O => \Fin0_carry__1_i_2_n_0\
    );
\Fin0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(18),
      I1 => cpt_reg(19),
      O => \Fin0_carry__1_i_3_n_0\
    );
\Fin0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(16),
      I1 => cpt_reg(17),
      O => \Fin0_carry__1_i_4_n_0\
    );
\Fin0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(22),
      I1 => cpt_reg(23),
      O => \Fin0_carry__1_i_5_n_0\
    );
\Fin0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(20),
      I1 => cpt_reg(21),
      O => \Fin0_carry__1_i_6_n_0\
    );
\Fin0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(18),
      I1 => cpt_reg(19),
      O => \Fin0_carry__1_i_7_n_0\
    );
\Fin0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(16),
      I1 => cpt_reg(17),
      O => \Fin0_carry__1_i_8_n_0\
    );
\Fin0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Fin0_carry__1_n_0\,
      CO(3) => in4,
      CO(2) => \Fin0_carry__2_n_1\,
      CO(1) => \Fin0_carry__2_n_2\,
      CO(0) => \Fin0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \Fin0_carry__2_i_1_n_0\,
      DI(2) => \Fin0_carry__2_i_2_n_0\,
      DI(1) => \Fin0_carry__2_i_3_n_0\,
      DI(0) => \Fin0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_Fin0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \Fin0_carry__2_i_5_n_0\,
      S(2) => \Fin0_carry__2_i_6_n_0\,
      S(1) => \Fin0_carry__2_i_7_n_0\,
      S(0) => \Fin0_carry__2_i_8_n_0\
    );
\Fin0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cpt_reg(30),
      I1 => cpt_reg(31),
      O => \Fin0_carry__2_i_1_n_0\
    );
\Fin0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(28),
      I1 => cpt_reg(29),
      O => \Fin0_carry__2_i_2_n_0\
    );
\Fin0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(26),
      I1 => cpt_reg(27),
      O => \Fin0_carry__2_i_3_n_0\
    );
\Fin0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(24),
      I1 => cpt_reg(25),
      O => \Fin0_carry__2_i_4_n_0\
    );
\Fin0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(30),
      I1 => cpt_reg(31),
      O => \Fin0_carry__2_i_5_n_0\
    );
\Fin0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(28),
      I1 => cpt_reg(29),
      O => \Fin0_carry__2_i_6_n_0\
    );
\Fin0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(26),
      I1 => cpt_reg(27),
      O => \Fin0_carry__2_i_7_n_0\
    );
\Fin0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(24),
      I1 => cpt_reg(25),
      O => \Fin0_carry__2_i_8_n_0\
    );
Fin0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(6),
      I1 => cpt_reg(7),
      O => Fin0_carry_i_1_n_0
    );
Fin0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpt_reg(0),
      I1 => cpt_reg(1),
      O => Fin0_carry_i_2_n_0
    );
Fin0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(6),
      I1 => cpt_reg(7),
      O => Fin0_carry_i_3_n_0
    );
Fin0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpt_reg(4),
      I1 => cpt_reg(5),
      O => Fin0_carry_i_4_n_0
    );
Fin0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cpt_reg(2),
      I1 => cpt_reg(3),
      O => Fin0_carry_i_5_n_0
    );
Fin0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(0),
      I1 => cpt_reg(1),
      O => Fin0_carry_i_6_n_0
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
    Trame_DCC_IBUF : in STD_LOGIC_VECTOR ( 50 downto 0 );
    CLK : in STD_LOGIC;
    Reset_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end REGISTRE_DCC;

architecture STRUCTURE of REGISTRE_DCC is
  signal bit_out_s_i_10_n_0 : STD_LOGIC;
  signal bit_out_s_i_11_n_0 : STD_LOGIC;
  signal bit_out_s_i_1_n_0 : STD_LOGIC;
  signal bit_out_s_i_3_n_0 : STD_LOGIC;
  signal bit_out_s_i_4_n_0 : STD_LOGIC;
  signal bit_out_s_i_5_n_0 : STD_LOGIC;
  signal bit_out_s_i_6_n_0 : STD_LOGIC;
  signal bit_out_s_i_7_n_0 : STD_LOGIC;
  signal bit_out_s_i_8_n_0 : STD_LOGIC;
  signal bit_out_s_i_9_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_12_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_13_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_14_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_15_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_16_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_17_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_18_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_19_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_2_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_37_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_38_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_39_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_40_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_41_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_42_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_43_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_44_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_45_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_46_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_47_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_48_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_49_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_50_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_51_n_0 : STD_LOGIC;
  signal bit_out_s_reg_i_52_n_0 : STD_LOGIC;
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
  signal reg_data : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal \reg_data[50]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data__2\ : STD_LOGIC;
  signal \reg_data_reg[0]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[0]_P_n_0\ : STD_LOGIC;
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
  signal \reg_data_reg[12]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[12]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[12]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[12]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[12]_P_n_0\ : STD_LOGIC;
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
  signal \reg_data_reg[15]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[15]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[15]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[15]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[15]_P_n_0\ : STD_LOGIC;
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
  signal \reg_data_reg[18]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[18]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[18]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[18]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[18]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[19]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[19]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[19]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[19]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[19]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[1]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[1]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[20]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[20]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[20]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[20]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[20]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[21]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[21]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[21]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[21]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[21]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[22]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[22]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[22]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[22]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[22]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[23]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[23]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[23]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[23]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[23]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[24]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[24]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[24]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[24]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[24]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[25]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[25]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[25]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[25]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[25]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[26]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[26]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[26]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[26]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[26]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[27]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[27]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[27]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[27]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[27]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[28]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[28]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[28]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[28]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[28]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[29]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[29]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[29]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[29]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[29]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[2]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[30]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[30]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[30]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[30]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[30]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[31]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[31]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[31]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[31]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[31]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[32]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[32]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[32]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[32]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[32]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[33]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[33]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[33]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[33]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[33]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[34]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[34]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[34]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[34]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[34]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[35]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[35]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[35]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[35]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[35]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[36]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[36]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[36]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[36]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[36]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[37]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[37]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[37]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[37]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[37]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[38]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[38]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[38]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[38]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[38]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[39]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[39]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[39]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[39]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[39]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[3]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[3]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[3]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[40]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[40]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[40]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[40]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[40]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[41]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[41]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[41]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[41]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[41]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[42]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[42]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[42]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[42]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[42]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[43]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[43]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[43]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[43]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[43]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[44]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[44]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[44]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[44]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[44]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[45]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[45]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[45]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[45]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[45]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[46]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[46]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[46]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[46]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[46]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[47]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[47]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[47]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[47]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[47]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[48]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[48]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[48]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[48]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[48]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[49]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[49]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[49]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[49]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[49]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[4]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[50]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[50]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[50]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[50]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[50]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[5]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[6]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[6]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[6]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[6]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[7]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[7]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[7]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[7]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[8]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[8]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[8]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[8]_P_n_0\ : STD_LOGIC;
  signal \reg_data_reg[9]_C_n_0\ : STD_LOGIC;
  signal \reg_data_reg[9]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_reg[9]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_reg[9]_LDC_n_0\ : STD_LOGIC;
  signal \reg_data_reg[9]_P_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \nb_shifted[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \nb_shifted[5]_i_5\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[10]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[11]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[12]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[13]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[14]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[15]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[16]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[17]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[18]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[19]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[20]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[21]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[22]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[23]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[24]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[25]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[26]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[27]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[28]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[29]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[30]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[31]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[32]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[33]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[34]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[35]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[36]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[37]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[38]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[39]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[40]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[41]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[42]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[43]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[44]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[45]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[46]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[47]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[48]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[49]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[50]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \reg_data_reg[9]_LDC\ : label is "LDC";
begin
bit_out_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => Q(0),
      I1 => bit_out_s_reg_i_2_n_0,
      I2 => \nb_shifted_reg_n_0_[5]\,
      I3 => bit_out_s_i_3_n_0,
      I4 => \nb_shifted_reg_n_0_[4]\,
      I5 => bit_out_s_i_4_n_0,
      O => bit_out_s_i_1_n_0
    );
bit_out_s_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_data(35),
      I1 => reg_data(34),
      I2 => \nb_shifted_reg_n_0_[1]\,
      I3 => reg_data(33),
      I4 => \nb_shifted_reg_n_0_[0]\,
      I5 => reg_data(32),
      O => bit_out_s_i_10_n_0
    );
bit_out_s_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_data_reg[49]_P_n_0\,
      I1 => \reg_data_reg[49]_LDC_n_0\,
      I2 => \reg_data_reg[49]_C_n_0\,
      I3 => \nb_shifted_reg_n_0_[0]\,
      I4 => reg_data(48),
      O => bit_out_s_i_11_n_0
    );
bit_out_s_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[47]_P_n_0\,
      I1 => \reg_data_reg[47]_LDC_n_0\,
      I2 => \reg_data_reg[47]_C_n_0\,
      O => reg_data(47)
    );
bit_out_s_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[46]_P_n_0\,
      I1 => \reg_data_reg[46]_LDC_n_0\,
      I2 => \reg_data_reg[46]_C_n_0\,
      O => reg_data(46)
    );
bit_out_s_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[45]_P_n_0\,
      I1 => \reg_data_reg[45]_LDC_n_0\,
      I2 => \reg_data_reg[45]_C_n_0\,
      O => reg_data(45)
    );
bit_out_s_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[44]_P_n_0\,
      I1 => \reg_data_reg[44]_LDC_n_0\,
      I2 => \reg_data_reg[44]_C_n_0\,
      O => reg_data(44)
    );
bit_out_s_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[43]_P_n_0\,
      I1 => \reg_data_reg[43]_LDC_n_0\,
      I2 => \reg_data_reg[43]_C_n_0\,
      O => reg_data(43)
    );
bit_out_s_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[42]_P_n_0\,
      I1 => \reg_data_reg[42]_LDC_n_0\,
      I2 => \reg_data_reg[42]_C_n_0\,
      O => reg_data(42)
    );
bit_out_s_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[41]_P_n_0\,
      I1 => \reg_data_reg[41]_LDC_n_0\,
      I2 => \reg_data_reg[41]_C_n_0\,
      O => reg_data(41)
    );
bit_out_s_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[40]_P_n_0\,
      I1 => \reg_data_reg[40]_LDC_n_0\,
      I2 => \reg_data_reg[40]_C_n_0\,
      O => reg_data(40)
    );
bit_out_s_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[39]_P_n_0\,
      I1 => \reg_data_reg[39]_LDC_n_0\,
      I2 => \reg_data_reg[39]_C_n_0\,
      O => reg_data(39)
    );
bit_out_s_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[38]_P_n_0\,
      I1 => \reg_data_reg[38]_LDC_n_0\,
      I2 => \reg_data_reg[38]_C_n_0\,
      O => reg_data(38)
    );
bit_out_s_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => bit_out_s_i_7_n_0,
      I1 => bit_out_s_i_8_n_0,
      I2 => \nb_shifted_reg_n_0_[3]\,
      I3 => bit_out_s_i_9_n_0,
      I4 => \nb_shifted_reg_n_0_[2]\,
      I5 => bit_out_s_i_10_n_0,
      O => bit_out_s_i_3_n_0
    );
bit_out_s_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[37]_P_n_0\,
      I1 => \reg_data_reg[37]_LDC_n_0\,
      I2 => \reg_data_reg[37]_C_n_0\,
      O => reg_data(37)
    );
bit_out_s_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[36]_P_n_0\,
      I1 => \reg_data_reg[36]_LDC_n_0\,
      I2 => \reg_data_reg[36]_C_n_0\,
      O => reg_data(36)
    );
bit_out_s_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[35]_P_n_0\,
      I1 => \reg_data_reg[35]_LDC_n_0\,
      I2 => \reg_data_reg[35]_C_n_0\,
      O => reg_data(35)
    );
bit_out_s_i_33: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[34]_P_n_0\,
      I1 => \reg_data_reg[34]_LDC_n_0\,
      I2 => \reg_data_reg[34]_C_n_0\,
      O => reg_data(34)
    );
bit_out_s_i_34: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[33]_P_n_0\,
      I1 => \reg_data_reg[33]_LDC_n_0\,
      I2 => \reg_data_reg[33]_C_n_0\,
      O => reg_data(33)
    );
bit_out_s_i_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[32]_P_n_0\,
      I1 => \reg_data_reg[32]_LDC_n_0\,
      I2 => \reg_data_reg[32]_C_n_0\,
      O => reg_data(32)
    );
bit_out_s_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[48]_P_n_0\,
      I1 => \reg_data_reg[48]_LDC_n_0\,
      I2 => \reg_data_reg[48]_C_n_0\,
      O => reg_data(48)
    );
bit_out_s_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_data_reg[50]_P_n_0\,
      I1 => \reg_data_reg[50]_LDC_n_0\,
      I2 => \reg_data_reg[50]_C_n_0\,
      I3 => \nb_shifted_reg_n_0_[1]\,
      I4 => bit_out_s_i_11_n_0,
      O => bit_out_s_i_4_n_0
    );
bit_out_s_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => bit_out_s_reg_i_12_n_0,
      I1 => bit_out_s_reg_i_13_n_0,
      I2 => \nb_shifted_reg_n_0_[3]\,
      I3 => bit_out_s_reg_i_14_n_0,
      I4 => \nb_shifted_reg_n_0_[2]\,
      I5 => bit_out_s_reg_i_15_n_0,
      O => bit_out_s_i_5_n_0
    );
bit_out_s_i_53: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[12]_P_n_0\,
      I1 => \reg_data_reg[12]_LDC_n_0\,
      I2 => \reg_data_reg[12]_C_n_0\,
      O => reg_data(12)
    );
bit_out_s_i_54: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[13]_P_n_0\,
      I1 => \reg_data_reg[13]_LDC_n_0\,
      I2 => \reg_data_reg[13]_C_n_0\,
      O => reg_data(13)
    );
bit_out_s_i_55: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[14]_P_n_0\,
      I1 => \reg_data_reg[14]_LDC_n_0\,
      I2 => \reg_data_reg[14]_C_n_0\,
      O => reg_data(14)
    );
bit_out_s_i_56: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[15]_P_n_0\,
      I1 => \reg_data_reg[15]_LDC_n_0\,
      I2 => \reg_data_reg[15]_C_n_0\,
      O => reg_data(15)
    );
bit_out_s_i_57: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[8]_P_n_0\,
      I1 => \reg_data_reg[8]_LDC_n_0\,
      I2 => \reg_data_reg[8]_C_n_0\,
      O => reg_data(8)
    );
bit_out_s_i_58: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[9]_P_n_0\,
      I1 => \reg_data_reg[9]_LDC_n_0\,
      I2 => \reg_data_reg[9]_C_n_0\,
      O => reg_data(9)
    );
bit_out_s_i_59: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[10]_P_n_0\,
      I1 => \reg_data_reg[10]_LDC_n_0\,
      I2 => \reg_data_reg[10]_C_n_0\,
      O => reg_data(10)
    );
bit_out_s_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => bit_out_s_reg_i_16_n_0,
      I1 => bit_out_s_reg_i_17_n_0,
      I2 => \nb_shifted_reg_n_0_[3]\,
      I3 => bit_out_s_reg_i_18_n_0,
      I4 => \nb_shifted_reg_n_0_[2]\,
      I5 => bit_out_s_reg_i_19_n_0,
      O => bit_out_s_i_6_n_0
    );
bit_out_s_i_60: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[11]_P_n_0\,
      I1 => \reg_data_reg[11]_LDC_n_0\,
      I2 => \reg_data_reg[11]_C_n_0\,
      O => reg_data(11)
    );
bit_out_s_i_61: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[4]_P_n_0\,
      I1 => \reg_data_reg[4]_LDC_n_0\,
      I2 => \reg_data_reg[4]_C_n_0\,
      O => reg_data(4)
    );
bit_out_s_i_62: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[5]_P_n_0\,
      I1 => \reg_data_reg[5]_LDC_n_0\,
      I2 => \reg_data_reg[5]_C_n_0\,
      O => reg_data(5)
    );
bit_out_s_i_63: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[6]_P_n_0\,
      I1 => \reg_data_reg[6]_LDC_n_0\,
      I2 => \reg_data_reg[6]_C_n_0\,
      O => reg_data(6)
    );
bit_out_s_i_64: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[7]_P_n_0\,
      I1 => \reg_data_reg[7]_LDC_n_0\,
      I2 => \reg_data_reg[7]_C_n_0\,
      O => reg_data(7)
    );
bit_out_s_i_65: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[0]_P_n_0\,
      I1 => \reg_data_reg[0]_LDC_n_0\,
      I2 => \reg_data_reg[0]_C_n_0\,
      O => reg_data(0)
    );
bit_out_s_i_66: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[1]_P_n_0\,
      I1 => \reg_data_reg[1]_LDC_n_0\,
      I2 => \reg_data_reg[1]_C_n_0\,
      O => reg_data(1)
    );
bit_out_s_i_67: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[2]_P_n_0\,
      I1 => \reg_data_reg[2]_LDC_n_0\,
      I2 => \reg_data_reg[2]_C_n_0\,
      O => reg_data(2)
    );
bit_out_s_i_68: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[3]_P_n_0\,
      I1 => \reg_data_reg[3]_LDC_n_0\,
      I2 => \reg_data_reg[3]_C_n_0\,
      O => reg_data(3)
    );
bit_out_s_i_69: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[28]_P_n_0\,
      I1 => \reg_data_reg[28]_LDC_n_0\,
      I2 => \reg_data_reg[28]_C_n_0\,
      O => reg_data(28)
    );
bit_out_s_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_data(47),
      I1 => reg_data(46),
      I2 => \nb_shifted_reg_n_0_[1]\,
      I3 => reg_data(45),
      I4 => \nb_shifted_reg_n_0_[0]\,
      I5 => reg_data(44),
      O => bit_out_s_i_7_n_0
    );
bit_out_s_i_70: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[29]_P_n_0\,
      I1 => \reg_data_reg[29]_LDC_n_0\,
      I2 => \reg_data_reg[29]_C_n_0\,
      O => reg_data(29)
    );
bit_out_s_i_71: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[30]_P_n_0\,
      I1 => \reg_data_reg[30]_LDC_n_0\,
      I2 => \reg_data_reg[30]_C_n_0\,
      O => reg_data(30)
    );
bit_out_s_i_72: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[31]_P_n_0\,
      I1 => \reg_data_reg[31]_LDC_n_0\,
      I2 => \reg_data_reg[31]_C_n_0\,
      O => reg_data(31)
    );
bit_out_s_i_73: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[24]_P_n_0\,
      I1 => \reg_data_reg[24]_LDC_n_0\,
      I2 => \reg_data_reg[24]_C_n_0\,
      O => reg_data(24)
    );
bit_out_s_i_74: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[25]_P_n_0\,
      I1 => \reg_data_reg[25]_LDC_n_0\,
      I2 => \reg_data_reg[25]_C_n_0\,
      O => reg_data(25)
    );
bit_out_s_i_75: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[26]_P_n_0\,
      I1 => \reg_data_reg[26]_LDC_n_0\,
      I2 => \reg_data_reg[26]_C_n_0\,
      O => reg_data(26)
    );
bit_out_s_i_76: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[27]_P_n_0\,
      I1 => \reg_data_reg[27]_LDC_n_0\,
      I2 => \reg_data_reg[27]_C_n_0\,
      O => reg_data(27)
    );
bit_out_s_i_77: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[20]_P_n_0\,
      I1 => \reg_data_reg[20]_LDC_n_0\,
      I2 => \reg_data_reg[20]_C_n_0\,
      O => reg_data(20)
    );
bit_out_s_i_78: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[21]_P_n_0\,
      I1 => \reg_data_reg[21]_LDC_n_0\,
      I2 => \reg_data_reg[21]_C_n_0\,
      O => reg_data(21)
    );
bit_out_s_i_79: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[22]_P_n_0\,
      I1 => \reg_data_reg[22]_LDC_n_0\,
      I2 => \reg_data_reg[22]_C_n_0\,
      O => reg_data(22)
    );
bit_out_s_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_data(43),
      I1 => reg_data(42),
      I2 => \nb_shifted_reg_n_0_[1]\,
      I3 => reg_data(41),
      I4 => \nb_shifted_reg_n_0_[0]\,
      I5 => reg_data(40),
      O => bit_out_s_i_8_n_0
    );
bit_out_s_i_80: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[23]_P_n_0\,
      I1 => \reg_data_reg[23]_LDC_n_0\,
      I2 => \reg_data_reg[23]_C_n_0\,
      O => reg_data(23)
    );
bit_out_s_i_81: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[16]_P_n_0\,
      I1 => \reg_data_reg[16]_LDC_n_0\,
      I2 => \reg_data_reg[16]_C_n_0\,
      O => reg_data(16)
    );
bit_out_s_i_82: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[17]_P_n_0\,
      I1 => \reg_data_reg[17]_LDC_n_0\,
      I2 => \reg_data_reg[17]_C_n_0\,
      O => reg_data(17)
    );
bit_out_s_i_83: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[18]_P_n_0\,
      I1 => \reg_data_reg[18]_LDC_n_0\,
      I2 => \reg_data_reg[18]_C_n_0\,
      O => reg_data(18)
    );
bit_out_s_i_84: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_data_reg[19]_P_n_0\,
      I1 => \reg_data_reg[19]_LDC_n_0\,
      I2 => \reg_data_reg[19]_C_n_0\,
      O => reg_data(19)
    );
bit_out_s_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_data(39),
      I1 => reg_data(38),
      I2 => \nb_shifted_reg_n_0_[1]\,
      I3 => reg_data(37),
      I4 => \nb_shifted_reg_n_0_[0]\,
      I5 => reg_data(36),
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
bit_out_s_reg_i_12: unisim.vcomponents.MUXF8
     port map (
      I0 => bit_out_s_reg_i_37_n_0,
      I1 => bit_out_s_reg_i_38_n_0,
      O => bit_out_s_reg_i_12_n_0,
      S => \nb_shifted_reg_n_0_[1]\
    );
bit_out_s_reg_i_13: unisim.vcomponents.MUXF8
     port map (
      I0 => bit_out_s_reg_i_39_n_0,
      I1 => bit_out_s_reg_i_40_n_0,
      O => bit_out_s_reg_i_13_n_0,
      S => \nb_shifted_reg_n_0_[1]\
    );
bit_out_s_reg_i_14: unisim.vcomponents.MUXF8
     port map (
      I0 => bit_out_s_reg_i_41_n_0,
      I1 => bit_out_s_reg_i_42_n_0,
      O => bit_out_s_reg_i_14_n_0,
      S => \nb_shifted_reg_n_0_[1]\
    );
bit_out_s_reg_i_15: unisim.vcomponents.MUXF8
     port map (
      I0 => bit_out_s_reg_i_43_n_0,
      I1 => bit_out_s_reg_i_44_n_0,
      O => bit_out_s_reg_i_15_n_0,
      S => \nb_shifted_reg_n_0_[1]\
    );
bit_out_s_reg_i_16: unisim.vcomponents.MUXF8
     port map (
      I0 => bit_out_s_reg_i_45_n_0,
      I1 => bit_out_s_reg_i_46_n_0,
      O => bit_out_s_reg_i_16_n_0,
      S => \nb_shifted_reg_n_0_[1]\
    );
bit_out_s_reg_i_17: unisim.vcomponents.MUXF8
     port map (
      I0 => bit_out_s_reg_i_47_n_0,
      I1 => bit_out_s_reg_i_48_n_0,
      O => bit_out_s_reg_i_17_n_0,
      S => \nb_shifted_reg_n_0_[1]\
    );
bit_out_s_reg_i_18: unisim.vcomponents.MUXF8
     port map (
      I0 => bit_out_s_reg_i_49_n_0,
      I1 => bit_out_s_reg_i_50_n_0,
      O => bit_out_s_reg_i_18_n_0,
      S => \nb_shifted_reg_n_0_[1]\
    );
bit_out_s_reg_i_19: unisim.vcomponents.MUXF8
     port map (
      I0 => bit_out_s_reg_i_51_n_0,
      I1 => bit_out_s_reg_i_52_n_0,
      O => bit_out_s_reg_i_19_n_0,
      S => \nb_shifted_reg_n_0_[1]\
    );
bit_out_s_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => bit_out_s_i_5_n_0,
      I1 => bit_out_s_i_6_n_0,
      O => bit_out_s_reg_i_2_n_0,
      S => \nb_shifted_reg_n_0_[4]\
    );
bit_out_s_reg_i_37: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(12),
      I1 => reg_data(13),
      O => bit_out_s_reg_i_37_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_38: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(14),
      I1 => reg_data(15),
      O => bit_out_s_reg_i_38_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_39: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(8),
      I1 => reg_data(9),
      O => bit_out_s_reg_i_39_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_40: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(10),
      I1 => reg_data(11),
      O => bit_out_s_reg_i_40_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_41: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(4),
      I1 => reg_data(5),
      O => bit_out_s_reg_i_41_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_42: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(6),
      I1 => reg_data(7),
      O => bit_out_s_reg_i_42_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_43: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(0),
      I1 => reg_data(1),
      O => bit_out_s_reg_i_43_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_44: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(2),
      I1 => reg_data(3),
      O => bit_out_s_reg_i_44_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_45: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(28),
      I1 => reg_data(29),
      O => bit_out_s_reg_i_45_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_46: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(30),
      I1 => reg_data(31),
      O => bit_out_s_reg_i_46_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_47: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(24),
      I1 => reg_data(25),
      O => bit_out_s_reg_i_47_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_48: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(26),
      I1 => reg_data(27),
      O => bit_out_s_reg_i_48_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_49: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(20),
      I1 => reg_data(21),
      O => bit_out_s_reg_i_49_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_50: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(22),
      I1 => reg_data(23),
      O => bit_out_s_reg_i_50_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_51: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(16),
      I1 => reg_data(17),
      O => bit_out_s_reg_i_51_n_0,
      S => \nb_shifted_reg_n_0_[0]\
    );
bit_out_s_reg_i_52: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_data(18),
      I1 => reg_data(19),
      O => bit_out_s_reg_i_52_n_0,
      S => \nb_shifted_reg_n_0_[0]\
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
\reg_data[50]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F40"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      O => \reg_data[50]_C_i_1_n_0\
    );
\reg_data_reg[0]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[0]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(0),
      Q => \reg_data_reg[0]_C_n_0\
    );
\reg_data_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[0]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[0]_LDC_n_0\
    );
\reg_data_reg[0]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(0),
      I1 => Reset_IBUF,
      O => \reg_data_reg[0]_LDC_i_1_n_0\
    );
\reg_data_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(0),
      O => \reg_data_reg[0]_LDC_i_2_n_0\
    );
\reg_data_reg[0]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(0),
      PRE => \reg_data_reg[0]_LDC_i_1_n_0\,
      Q => \reg_data_reg[0]_P_n_0\
    );
\reg_data_reg[10]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[10]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(10),
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
\reg_data_reg[10]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(10),
      I1 => Reset_IBUF,
      O => \reg_data_reg[10]_LDC_i_1_n_0\
    );
\reg_data_reg[10]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(10),
      O => \reg_data_reg[10]_LDC_i_2_n_0\
    );
\reg_data_reg[10]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(10),
      PRE => \reg_data_reg[10]_LDC_i_1_n_0\,
      Q => \reg_data_reg[10]_P_n_0\
    );
\reg_data_reg[11]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[11]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(11),
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
\reg_data_reg[11]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(11),
      I1 => Reset_IBUF,
      O => \reg_data_reg[11]_LDC_i_1_n_0\
    );
\reg_data_reg[11]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(11),
      O => \reg_data_reg[11]_LDC_i_2_n_0\
    );
\reg_data_reg[11]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(11),
      PRE => \reg_data_reg[11]_LDC_i_1_n_0\,
      Q => \reg_data_reg[11]_P_n_0\
    );
\reg_data_reg[12]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[12]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(12),
      Q => \reg_data_reg[12]_C_n_0\
    );
\reg_data_reg[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[12]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[12]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[12]_LDC_n_0\
    );
\reg_data_reg[12]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(12),
      I1 => Reset_IBUF,
      O => \reg_data_reg[12]_LDC_i_1_n_0\
    );
\reg_data_reg[12]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(12),
      O => \reg_data_reg[12]_LDC_i_2_n_0\
    );
\reg_data_reg[12]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(12),
      PRE => \reg_data_reg[12]_LDC_i_1_n_0\,
      Q => \reg_data_reg[12]_P_n_0\
    );
\reg_data_reg[13]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[13]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(13),
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
\reg_data_reg[13]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(13),
      I1 => Reset_IBUF,
      O => \reg_data_reg[13]_LDC_i_1_n_0\
    );
\reg_data_reg[13]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(13),
      O => \reg_data_reg[13]_LDC_i_2_n_0\
    );
\reg_data_reg[13]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(13),
      PRE => \reg_data_reg[13]_LDC_i_1_n_0\,
      Q => \reg_data_reg[13]_P_n_0\
    );
\reg_data_reg[14]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[14]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(14),
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
\reg_data_reg[14]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(14),
      I1 => Reset_IBUF,
      O => \reg_data_reg[14]_LDC_i_1_n_0\
    );
\reg_data_reg[14]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(14),
      O => \reg_data_reg[14]_LDC_i_2_n_0\
    );
\reg_data_reg[14]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(14),
      PRE => \reg_data_reg[14]_LDC_i_1_n_0\,
      Q => \reg_data_reg[14]_P_n_0\
    );
\reg_data_reg[15]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[15]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(15),
      Q => \reg_data_reg[15]_C_n_0\
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
\reg_data_reg[15]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(15),
      I1 => Reset_IBUF,
      O => \reg_data_reg[15]_LDC_i_1_n_0\
    );
\reg_data_reg[15]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(15),
      O => \reg_data_reg[15]_LDC_i_2_n_0\
    );
\reg_data_reg[15]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(15),
      PRE => \reg_data_reg[15]_LDC_i_1_n_0\,
      Q => \reg_data_reg[15]_P_n_0\
    );
\reg_data_reg[16]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[16]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(16),
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
\reg_data_reg[16]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(16),
      I1 => Reset_IBUF,
      O => \reg_data_reg[16]_LDC_i_1_n_0\
    );
\reg_data_reg[16]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(16),
      O => \reg_data_reg[16]_LDC_i_2_n_0\
    );
\reg_data_reg[16]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(16),
      PRE => \reg_data_reg[16]_LDC_i_1_n_0\,
      Q => \reg_data_reg[16]_P_n_0\
    );
\reg_data_reg[17]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[17]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(17),
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
\reg_data_reg[17]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(17),
      I1 => Reset_IBUF,
      O => \reg_data_reg[17]_LDC_i_1_n_0\
    );
\reg_data_reg[17]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(17),
      O => \reg_data_reg[17]_LDC_i_2_n_0\
    );
\reg_data_reg[17]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(17),
      PRE => \reg_data_reg[17]_LDC_i_1_n_0\,
      Q => \reg_data_reg[17]_P_n_0\
    );
\reg_data_reg[18]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[18]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(18),
      Q => \reg_data_reg[18]_C_n_0\
    );
\reg_data_reg[18]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[18]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[18]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[18]_LDC_n_0\
    );
\reg_data_reg[18]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(18),
      I1 => Reset_IBUF,
      O => \reg_data_reg[18]_LDC_i_1_n_0\
    );
\reg_data_reg[18]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(18),
      O => \reg_data_reg[18]_LDC_i_2_n_0\
    );
\reg_data_reg[18]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(18),
      PRE => \reg_data_reg[18]_LDC_i_1_n_0\,
      Q => \reg_data_reg[18]_P_n_0\
    );
\reg_data_reg[19]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[19]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(19),
      Q => \reg_data_reg[19]_C_n_0\
    );
\reg_data_reg[19]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[19]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[19]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[19]_LDC_n_0\
    );
\reg_data_reg[19]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(19),
      I1 => Reset_IBUF,
      O => \reg_data_reg[19]_LDC_i_1_n_0\
    );
\reg_data_reg[19]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(19),
      O => \reg_data_reg[19]_LDC_i_2_n_0\
    );
\reg_data_reg[19]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(19),
      PRE => \reg_data_reg[19]_LDC_i_1_n_0\,
      Q => \reg_data_reg[19]_P_n_0\
    );
\reg_data_reg[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[1]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(1),
      Q => \reg_data_reg[1]_C_n_0\
    );
\reg_data_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[1]_LDC_n_0\
    );
\reg_data_reg[1]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(1),
      I1 => Reset_IBUF,
      O => \reg_data_reg[1]_LDC_i_1_n_0\
    );
\reg_data_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(1),
      O => \reg_data_reg[1]_LDC_i_2_n_0\
    );
\reg_data_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(1),
      PRE => \reg_data_reg[1]_LDC_i_1_n_0\,
      Q => \reg_data_reg[1]_P_n_0\
    );
\reg_data_reg[20]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[20]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(20),
      Q => \reg_data_reg[20]_C_n_0\
    );
\reg_data_reg[20]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[20]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[20]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[20]_LDC_n_0\
    );
\reg_data_reg[20]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(20),
      I1 => Reset_IBUF,
      O => \reg_data_reg[20]_LDC_i_1_n_0\
    );
\reg_data_reg[20]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(20),
      O => \reg_data_reg[20]_LDC_i_2_n_0\
    );
\reg_data_reg[20]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(20),
      PRE => \reg_data_reg[20]_LDC_i_1_n_0\,
      Q => \reg_data_reg[20]_P_n_0\
    );
\reg_data_reg[21]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[21]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(21),
      Q => \reg_data_reg[21]_C_n_0\
    );
\reg_data_reg[21]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[21]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[21]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[21]_LDC_n_0\
    );
\reg_data_reg[21]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(21),
      I1 => Reset_IBUF,
      O => \reg_data_reg[21]_LDC_i_1_n_0\
    );
\reg_data_reg[21]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(21),
      O => \reg_data_reg[21]_LDC_i_2_n_0\
    );
\reg_data_reg[21]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(21),
      PRE => \reg_data_reg[21]_LDC_i_1_n_0\,
      Q => \reg_data_reg[21]_P_n_0\
    );
\reg_data_reg[22]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[22]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(22),
      Q => \reg_data_reg[22]_C_n_0\
    );
\reg_data_reg[22]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[22]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[22]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[22]_LDC_n_0\
    );
\reg_data_reg[22]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(22),
      I1 => Reset_IBUF,
      O => \reg_data_reg[22]_LDC_i_1_n_0\
    );
\reg_data_reg[22]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(22),
      O => \reg_data_reg[22]_LDC_i_2_n_0\
    );
\reg_data_reg[22]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(22),
      PRE => \reg_data_reg[22]_LDC_i_1_n_0\,
      Q => \reg_data_reg[22]_P_n_0\
    );
\reg_data_reg[23]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[23]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(23),
      Q => \reg_data_reg[23]_C_n_0\
    );
\reg_data_reg[23]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[23]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[23]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[23]_LDC_n_0\
    );
\reg_data_reg[23]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(23),
      I1 => Reset_IBUF,
      O => \reg_data_reg[23]_LDC_i_1_n_0\
    );
\reg_data_reg[23]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(23),
      O => \reg_data_reg[23]_LDC_i_2_n_0\
    );
\reg_data_reg[23]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(23),
      PRE => \reg_data_reg[23]_LDC_i_1_n_0\,
      Q => \reg_data_reg[23]_P_n_0\
    );
\reg_data_reg[24]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[24]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(24),
      Q => \reg_data_reg[24]_C_n_0\
    );
\reg_data_reg[24]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[24]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[24]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[24]_LDC_n_0\
    );
\reg_data_reg[24]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(24),
      I1 => Reset_IBUF,
      O => \reg_data_reg[24]_LDC_i_1_n_0\
    );
\reg_data_reg[24]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(24),
      O => \reg_data_reg[24]_LDC_i_2_n_0\
    );
\reg_data_reg[24]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(24),
      PRE => \reg_data_reg[24]_LDC_i_1_n_0\,
      Q => \reg_data_reg[24]_P_n_0\
    );
\reg_data_reg[25]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[25]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(25),
      Q => \reg_data_reg[25]_C_n_0\
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
\reg_data_reg[25]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(25),
      I1 => Reset_IBUF,
      O => \reg_data_reg[25]_LDC_i_1_n_0\
    );
\reg_data_reg[25]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(25),
      O => \reg_data_reg[25]_LDC_i_2_n_0\
    );
\reg_data_reg[25]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(25),
      PRE => \reg_data_reg[25]_LDC_i_1_n_0\,
      Q => \reg_data_reg[25]_P_n_0\
    );
\reg_data_reg[26]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[26]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(26),
      Q => \reg_data_reg[26]_C_n_0\
    );
\reg_data_reg[26]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[26]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[26]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[26]_LDC_n_0\
    );
\reg_data_reg[26]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(26),
      I1 => Reset_IBUF,
      O => \reg_data_reg[26]_LDC_i_1_n_0\
    );
\reg_data_reg[26]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(26),
      O => \reg_data_reg[26]_LDC_i_2_n_0\
    );
\reg_data_reg[26]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(26),
      PRE => \reg_data_reg[26]_LDC_i_1_n_0\,
      Q => \reg_data_reg[26]_P_n_0\
    );
\reg_data_reg[27]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[27]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(27),
      Q => \reg_data_reg[27]_C_n_0\
    );
\reg_data_reg[27]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[27]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[27]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[27]_LDC_n_0\
    );
\reg_data_reg[27]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(27),
      I1 => Reset_IBUF,
      O => \reg_data_reg[27]_LDC_i_1_n_0\
    );
\reg_data_reg[27]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(27),
      O => \reg_data_reg[27]_LDC_i_2_n_0\
    );
\reg_data_reg[27]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(27),
      PRE => \reg_data_reg[27]_LDC_i_1_n_0\,
      Q => \reg_data_reg[27]_P_n_0\
    );
\reg_data_reg[28]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[28]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(28),
      Q => \reg_data_reg[28]_C_n_0\
    );
\reg_data_reg[28]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[28]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[28]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[28]_LDC_n_0\
    );
\reg_data_reg[28]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(28),
      I1 => Reset_IBUF,
      O => \reg_data_reg[28]_LDC_i_1_n_0\
    );
\reg_data_reg[28]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(28),
      O => \reg_data_reg[28]_LDC_i_2_n_0\
    );
\reg_data_reg[28]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(28),
      PRE => \reg_data_reg[28]_LDC_i_1_n_0\,
      Q => \reg_data_reg[28]_P_n_0\
    );
\reg_data_reg[29]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[29]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(29),
      Q => \reg_data_reg[29]_C_n_0\
    );
\reg_data_reg[29]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[29]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[29]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[29]_LDC_n_0\
    );
\reg_data_reg[29]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(29),
      I1 => Reset_IBUF,
      O => \reg_data_reg[29]_LDC_i_1_n_0\
    );
\reg_data_reg[29]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(29),
      O => \reg_data_reg[29]_LDC_i_2_n_0\
    );
\reg_data_reg[29]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(29),
      PRE => \reg_data_reg[29]_LDC_i_1_n_0\,
      Q => \reg_data_reg[29]_P_n_0\
    );
\reg_data_reg[2]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[2]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(2),
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
\reg_data_reg[2]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(2),
      I1 => Reset_IBUF,
      O => \reg_data_reg[2]_LDC_i_1_n_0\
    );
\reg_data_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(2),
      O => \reg_data_reg[2]_LDC_i_2_n_0\
    );
\reg_data_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(2),
      PRE => \reg_data_reg[2]_LDC_i_1_n_0\,
      Q => \reg_data_reg[2]_P_n_0\
    );
\reg_data_reg[30]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[30]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(30),
      Q => \reg_data_reg[30]_C_n_0\
    );
\reg_data_reg[30]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[30]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[30]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[30]_LDC_n_0\
    );
\reg_data_reg[30]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(30),
      I1 => Reset_IBUF,
      O => \reg_data_reg[30]_LDC_i_1_n_0\
    );
\reg_data_reg[30]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(30),
      O => \reg_data_reg[30]_LDC_i_2_n_0\
    );
\reg_data_reg[30]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(30),
      PRE => \reg_data_reg[30]_LDC_i_1_n_0\,
      Q => \reg_data_reg[30]_P_n_0\
    );
\reg_data_reg[31]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[31]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(31),
      Q => \reg_data_reg[31]_C_n_0\
    );
\reg_data_reg[31]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[31]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[31]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[31]_LDC_n_0\
    );
\reg_data_reg[31]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(31),
      I1 => Reset_IBUF,
      O => \reg_data_reg[31]_LDC_i_1_n_0\
    );
\reg_data_reg[31]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(31),
      O => \reg_data_reg[31]_LDC_i_2_n_0\
    );
\reg_data_reg[31]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(31),
      PRE => \reg_data_reg[31]_LDC_i_1_n_0\,
      Q => \reg_data_reg[31]_P_n_0\
    );
\reg_data_reg[32]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[32]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(32),
      Q => \reg_data_reg[32]_C_n_0\
    );
\reg_data_reg[32]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[32]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[32]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[32]_LDC_n_0\
    );
\reg_data_reg[32]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(32),
      I1 => Reset_IBUF,
      O => \reg_data_reg[32]_LDC_i_1_n_0\
    );
\reg_data_reg[32]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(32),
      O => \reg_data_reg[32]_LDC_i_2_n_0\
    );
\reg_data_reg[32]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(32),
      PRE => \reg_data_reg[32]_LDC_i_1_n_0\,
      Q => \reg_data_reg[32]_P_n_0\
    );
\reg_data_reg[33]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[33]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(33),
      Q => \reg_data_reg[33]_C_n_0\
    );
\reg_data_reg[33]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[33]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[33]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[33]_LDC_n_0\
    );
\reg_data_reg[33]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(33),
      I1 => Reset_IBUF,
      O => \reg_data_reg[33]_LDC_i_1_n_0\
    );
\reg_data_reg[33]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(33),
      O => \reg_data_reg[33]_LDC_i_2_n_0\
    );
\reg_data_reg[33]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(33),
      PRE => \reg_data_reg[33]_LDC_i_1_n_0\,
      Q => \reg_data_reg[33]_P_n_0\
    );
\reg_data_reg[34]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[34]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(34),
      Q => \reg_data_reg[34]_C_n_0\
    );
\reg_data_reg[34]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[34]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[34]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[34]_LDC_n_0\
    );
\reg_data_reg[34]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(34),
      I1 => Reset_IBUF,
      O => \reg_data_reg[34]_LDC_i_1_n_0\
    );
\reg_data_reg[34]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(34),
      O => \reg_data_reg[34]_LDC_i_2_n_0\
    );
\reg_data_reg[34]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(34),
      PRE => \reg_data_reg[34]_LDC_i_1_n_0\,
      Q => \reg_data_reg[34]_P_n_0\
    );
\reg_data_reg[35]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[35]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(35),
      Q => \reg_data_reg[35]_C_n_0\
    );
\reg_data_reg[35]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[35]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[35]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[35]_LDC_n_0\
    );
\reg_data_reg[35]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(35),
      I1 => Reset_IBUF,
      O => \reg_data_reg[35]_LDC_i_1_n_0\
    );
\reg_data_reg[35]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(35),
      O => \reg_data_reg[35]_LDC_i_2_n_0\
    );
\reg_data_reg[35]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(35),
      PRE => \reg_data_reg[35]_LDC_i_1_n_0\,
      Q => \reg_data_reg[35]_P_n_0\
    );
\reg_data_reg[36]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[36]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(36),
      Q => \reg_data_reg[36]_C_n_0\
    );
\reg_data_reg[36]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[36]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[36]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[36]_LDC_n_0\
    );
\reg_data_reg[36]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(36),
      I1 => Reset_IBUF,
      O => \reg_data_reg[36]_LDC_i_1_n_0\
    );
\reg_data_reg[36]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(36),
      O => \reg_data_reg[36]_LDC_i_2_n_0\
    );
\reg_data_reg[36]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(36),
      PRE => \reg_data_reg[36]_LDC_i_1_n_0\,
      Q => \reg_data_reg[36]_P_n_0\
    );
\reg_data_reg[37]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[37]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(37),
      Q => \reg_data_reg[37]_C_n_0\
    );
\reg_data_reg[37]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[37]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[37]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[37]_LDC_n_0\
    );
\reg_data_reg[37]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(37),
      I1 => Reset_IBUF,
      O => \reg_data_reg[37]_LDC_i_1_n_0\
    );
\reg_data_reg[37]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(37),
      O => \reg_data_reg[37]_LDC_i_2_n_0\
    );
\reg_data_reg[37]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(37),
      PRE => \reg_data_reg[37]_LDC_i_1_n_0\,
      Q => \reg_data_reg[37]_P_n_0\
    );
\reg_data_reg[38]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[38]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(38),
      Q => \reg_data_reg[38]_C_n_0\
    );
\reg_data_reg[38]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[38]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[38]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[38]_LDC_n_0\
    );
\reg_data_reg[38]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(38),
      I1 => Reset_IBUF,
      O => \reg_data_reg[38]_LDC_i_1_n_0\
    );
\reg_data_reg[38]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(38),
      O => \reg_data_reg[38]_LDC_i_2_n_0\
    );
\reg_data_reg[38]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(38),
      PRE => \reg_data_reg[38]_LDC_i_1_n_0\,
      Q => \reg_data_reg[38]_P_n_0\
    );
\reg_data_reg[39]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[39]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(39),
      Q => \reg_data_reg[39]_C_n_0\
    );
\reg_data_reg[39]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[39]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[39]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[39]_LDC_n_0\
    );
\reg_data_reg[39]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(39),
      I1 => Reset_IBUF,
      O => \reg_data_reg[39]_LDC_i_1_n_0\
    );
\reg_data_reg[39]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(39),
      O => \reg_data_reg[39]_LDC_i_2_n_0\
    );
\reg_data_reg[39]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(39),
      PRE => \reg_data_reg[39]_LDC_i_1_n_0\,
      Q => \reg_data_reg[39]_P_n_0\
    );
\reg_data_reg[3]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[3]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(3),
      Q => \reg_data_reg[3]_C_n_0\
    );
\reg_data_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[3]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[3]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[3]_LDC_n_0\
    );
\reg_data_reg[3]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(3),
      I1 => Reset_IBUF,
      O => \reg_data_reg[3]_LDC_i_1_n_0\
    );
\reg_data_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(3),
      O => \reg_data_reg[3]_LDC_i_2_n_0\
    );
\reg_data_reg[3]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(3),
      PRE => \reg_data_reg[3]_LDC_i_1_n_0\,
      Q => \reg_data_reg[3]_P_n_0\
    );
\reg_data_reg[40]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[40]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(40),
      Q => \reg_data_reg[40]_C_n_0\
    );
\reg_data_reg[40]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[40]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[40]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[40]_LDC_n_0\
    );
\reg_data_reg[40]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(40),
      I1 => Reset_IBUF,
      O => \reg_data_reg[40]_LDC_i_1_n_0\
    );
\reg_data_reg[40]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(40),
      O => \reg_data_reg[40]_LDC_i_2_n_0\
    );
\reg_data_reg[40]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(40),
      PRE => \reg_data_reg[40]_LDC_i_1_n_0\,
      Q => \reg_data_reg[40]_P_n_0\
    );
\reg_data_reg[41]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[41]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(41),
      Q => \reg_data_reg[41]_C_n_0\
    );
\reg_data_reg[41]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[41]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[41]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[41]_LDC_n_0\
    );
\reg_data_reg[41]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(41),
      I1 => Reset_IBUF,
      O => \reg_data_reg[41]_LDC_i_1_n_0\
    );
\reg_data_reg[41]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(41),
      O => \reg_data_reg[41]_LDC_i_2_n_0\
    );
\reg_data_reg[41]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(41),
      PRE => \reg_data_reg[41]_LDC_i_1_n_0\,
      Q => \reg_data_reg[41]_P_n_0\
    );
\reg_data_reg[42]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[42]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(42),
      Q => \reg_data_reg[42]_C_n_0\
    );
\reg_data_reg[42]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[42]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[42]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[42]_LDC_n_0\
    );
\reg_data_reg[42]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(42),
      I1 => Reset_IBUF,
      O => \reg_data_reg[42]_LDC_i_1_n_0\
    );
\reg_data_reg[42]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(42),
      O => \reg_data_reg[42]_LDC_i_2_n_0\
    );
\reg_data_reg[42]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(42),
      PRE => \reg_data_reg[42]_LDC_i_1_n_0\,
      Q => \reg_data_reg[42]_P_n_0\
    );
\reg_data_reg[43]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[43]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(43),
      Q => \reg_data_reg[43]_C_n_0\
    );
\reg_data_reg[43]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[43]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[43]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[43]_LDC_n_0\
    );
\reg_data_reg[43]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(43),
      I1 => Reset_IBUF,
      O => \reg_data_reg[43]_LDC_i_1_n_0\
    );
\reg_data_reg[43]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(43),
      O => \reg_data_reg[43]_LDC_i_2_n_0\
    );
\reg_data_reg[43]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(43),
      PRE => \reg_data_reg[43]_LDC_i_1_n_0\,
      Q => \reg_data_reg[43]_P_n_0\
    );
\reg_data_reg[44]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[44]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(44),
      Q => \reg_data_reg[44]_C_n_0\
    );
\reg_data_reg[44]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[44]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[44]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[44]_LDC_n_0\
    );
\reg_data_reg[44]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(44),
      I1 => Reset_IBUF,
      O => \reg_data_reg[44]_LDC_i_1_n_0\
    );
\reg_data_reg[44]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(44),
      O => \reg_data_reg[44]_LDC_i_2_n_0\
    );
\reg_data_reg[44]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(44),
      PRE => \reg_data_reg[44]_LDC_i_1_n_0\,
      Q => \reg_data_reg[44]_P_n_0\
    );
\reg_data_reg[45]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[45]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(45),
      Q => \reg_data_reg[45]_C_n_0\
    );
\reg_data_reg[45]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[45]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[45]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[45]_LDC_n_0\
    );
\reg_data_reg[45]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(45),
      I1 => Reset_IBUF,
      O => \reg_data_reg[45]_LDC_i_1_n_0\
    );
\reg_data_reg[45]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(45),
      O => \reg_data_reg[45]_LDC_i_2_n_0\
    );
\reg_data_reg[45]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(45),
      PRE => \reg_data_reg[45]_LDC_i_1_n_0\,
      Q => \reg_data_reg[45]_P_n_0\
    );
\reg_data_reg[46]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[46]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(46),
      Q => \reg_data_reg[46]_C_n_0\
    );
\reg_data_reg[46]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[46]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[46]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[46]_LDC_n_0\
    );
\reg_data_reg[46]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(46),
      I1 => Reset_IBUF,
      O => \reg_data_reg[46]_LDC_i_1_n_0\
    );
\reg_data_reg[46]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(46),
      O => \reg_data_reg[46]_LDC_i_2_n_0\
    );
\reg_data_reg[46]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(46),
      PRE => \reg_data_reg[46]_LDC_i_1_n_0\,
      Q => \reg_data_reg[46]_P_n_0\
    );
\reg_data_reg[47]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[47]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(47),
      Q => \reg_data_reg[47]_C_n_0\
    );
\reg_data_reg[47]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[47]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[47]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[47]_LDC_n_0\
    );
\reg_data_reg[47]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(47),
      I1 => Reset_IBUF,
      O => \reg_data_reg[47]_LDC_i_1_n_0\
    );
\reg_data_reg[47]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(47),
      O => \reg_data_reg[47]_LDC_i_2_n_0\
    );
\reg_data_reg[47]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(47),
      PRE => \reg_data_reg[47]_LDC_i_1_n_0\,
      Q => \reg_data_reg[47]_P_n_0\
    );
\reg_data_reg[48]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[48]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(48),
      Q => \reg_data_reg[48]_C_n_0\
    );
\reg_data_reg[48]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[48]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[48]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[48]_LDC_n_0\
    );
\reg_data_reg[48]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(48),
      I1 => Reset_IBUF,
      O => \reg_data_reg[48]_LDC_i_1_n_0\
    );
\reg_data_reg[48]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(48),
      O => \reg_data_reg[48]_LDC_i_2_n_0\
    );
\reg_data_reg[48]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(48),
      PRE => \reg_data_reg[48]_LDC_i_1_n_0\,
      Q => \reg_data_reg[48]_P_n_0\
    );
\reg_data_reg[49]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[49]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(49),
      Q => \reg_data_reg[49]_C_n_0\
    );
\reg_data_reg[49]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[49]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[49]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[49]_LDC_n_0\
    );
\reg_data_reg[49]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(49),
      I1 => Reset_IBUF,
      O => \reg_data_reg[49]_LDC_i_1_n_0\
    );
\reg_data_reg[49]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(49),
      O => \reg_data_reg[49]_LDC_i_2_n_0\
    );
\reg_data_reg[49]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(49),
      PRE => \reg_data_reg[49]_LDC_i_1_n_0\,
      Q => \reg_data_reg[49]_P_n_0\
    );
\reg_data_reg[4]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[4]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(4),
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
\reg_data_reg[4]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(4),
      I1 => Reset_IBUF,
      O => \reg_data_reg[4]_LDC_i_1_n_0\
    );
\reg_data_reg[4]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(4),
      O => \reg_data_reg[4]_LDC_i_2_n_0\
    );
\reg_data_reg[4]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(4),
      PRE => \reg_data_reg[4]_LDC_i_1_n_0\,
      Q => \reg_data_reg[4]_P_n_0\
    );
\reg_data_reg[50]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[50]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(50),
      Q => \reg_data_reg[50]_C_n_0\
    );
\reg_data_reg[50]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[50]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[50]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[50]_LDC_n_0\
    );
\reg_data_reg[50]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(50),
      I1 => Reset_IBUF,
      O => \reg_data_reg[50]_LDC_i_1_n_0\
    );
\reg_data_reg[50]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(50),
      O => \reg_data_reg[50]_LDC_i_2_n_0\
    );
\reg_data_reg[50]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(50),
      PRE => \reg_data_reg[50]_LDC_i_1_n_0\,
      Q => \reg_data_reg[50]_P_n_0\
    );
\reg_data_reg[5]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[5]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(5),
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
\reg_data_reg[5]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(5),
      I1 => Reset_IBUF,
      O => \reg_data_reg[5]_LDC_i_1_n_0\
    );
\reg_data_reg[5]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(5),
      O => \reg_data_reg[5]_LDC_i_2_n_0\
    );
\reg_data_reg[5]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(5),
      PRE => \reg_data_reg[5]_LDC_i_1_n_0\,
      Q => \reg_data_reg[5]_P_n_0\
    );
\reg_data_reg[6]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[6]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(6),
      Q => \reg_data_reg[6]_C_n_0\
    );
\reg_data_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[6]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[6]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[6]_LDC_n_0\
    );
\reg_data_reg[6]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(6),
      I1 => Reset_IBUF,
      O => \reg_data_reg[6]_LDC_i_1_n_0\
    );
\reg_data_reg[6]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(6),
      O => \reg_data_reg[6]_LDC_i_2_n_0\
    );
\reg_data_reg[6]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(6),
      PRE => \reg_data_reg[6]_LDC_i_1_n_0\,
      Q => \reg_data_reg[6]_P_n_0\
    );
\reg_data_reg[7]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[7]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(7),
      Q => \reg_data_reg[7]_C_n_0\
    );
\reg_data_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[7]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[7]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[7]_LDC_n_0\
    );
\reg_data_reg[7]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(7),
      I1 => Reset_IBUF,
      O => \reg_data_reg[7]_LDC_i_1_n_0\
    );
\reg_data_reg[7]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(7),
      O => \reg_data_reg[7]_LDC_i_2_n_0\
    );
\reg_data_reg[7]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(7),
      PRE => \reg_data_reg[7]_LDC_i_1_n_0\,
      Q => \reg_data_reg[7]_P_n_0\
    );
\reg_data_reg[8]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[8]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(8),
      Q => \reg_data_reg[8]_C_n_0\
    );
\reg_data_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[8]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[8]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[8]_LDC_n_0\
    );
\reg_data_reg[8]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(8),
      I1 => Reset_IBUF,
      O => \reg_data_reg[8]_LDC_i_1_n_0\
    );
\reg_data_reg[8]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(8),
      O => \reg_data_reg[8]_LDC_i_2_n_0\
    );
\reg_data_reg[8]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(8),
      PRE => \reg_data_reg[8]_LDC_i_1_n_0\,
      Q => \reg_data_reg[8]_P_n_0\
    );
\reg_data_reg[9]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      CLR => \reg_data_reg[9]_LDC_i_2_n_0\,
      D => Trame_DCC_IBUF(9),
      Q => \reg_data_reg[9]_C_n_0\
    );
\reg_data_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \reg_data_reg[9]_LDC_i_2_n_0\,
      D => '1',
      G => \reg_data_reg[9]_LDC_i_1_n_0\,
      GE => '1',
      Q => \reg_data_reg[9]_LDC_n_0\
    );
\reg_data_reg[9]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Trame_DCC_IBUF(9),
      I1 => Reset_IBUF,
      O => \reg_data_reg[9]_LDC_i_1_n_0\
    );
\reg_data_reg[9]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Trame_DCC_IBUF(9),
      O => \reg_data_reg[9]_LDC_i_2_n_0\
    );
\reg_data_reg[9]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \reg_data[50]_C_i_1_n_0\,
      D => Trame_DCC_IBUF(9),
      PRE => \reg_data_reg[9]_LDC_i_1_n_0\,
      Q => \reg_data_reg[9]_P_n_0\
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
    Trame_DCC : in STD_LOGIC_VECTOR ( 50 downto 0 );
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
  signal MAE_0_n_0 : STD_LOGIC;
  signal Reset_DDC1_s : STD_LOGIC;
  signal Reset_IBUF : STD_LOGIC;
  signal Reset_Tempo_s : STD_LOGIC;
  signal SORTIE_DCC_OBUF : STD_LOGIC;
  signal Start_Tempo_s : STD_LOGIC;
  signal Trame_DCC_IBUF : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal bit_out_s : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
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
      Q(1) => p_0_in,
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
MAE_0: entity work.MAE
     port map (
      AR(0) => Reset_DDC1_s,
      CLK => Clk_IBUF_BUFG,
      D(0) => COMPTEUR_TEMPO_0_n_2,
      FIN_0_s => FIN_0_s,
      FIN_1_s => FIN_1_s,
      \FSM_onehot_EP_reg[8]_0\(1) => p_0_in,
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
      Q(1) => Com_REG_s(0),
      Q(0) => Com_REG_s(1),
      Reset_IBUF => Reset_IBUF,
      Trame_DCC_IBUF(50 downto 0) => Trame_DCC_IBUF(50 downto 0),
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
\Trame_DCC_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(0),
      O => Trame_DCC_IBUF(0)
    );
\Trame_DCC_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(10),
      O => Trame_DCC_IBUF(10)
    );
\Trame_DCC_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(11),
      O => Trame_DCC_IBUF(11)
    );
\Trame_DCC_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(12),
      O => Trame_DCC_IBUF(12)
    );
\Trame_DCC_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(13),
      O => Trame_DCC_IBUF(13)
    );
\Trame_DCC_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(14),
      O => Trame_DCC_IBUF(14)
    );
\Trame_DCC_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(15),
      O => Trame_DCC_IBUF(15)
    );
\Trame_DCC_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(16),
      O => Trame_DCC_IBUF(16)
    );
\Trame_DCC_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(17),
      O => Trame_DCC_IBUF(17)
    );
\Trame_DCC_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(18),
      O => Trame_DCC_IBUF(18)
    );
\Trame_DCC_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(19),
      O => Trame_DCC_IBUF(19)
    );
\Trame_DCC_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(1),
      O => Trame_DCC_IBUF(1)
    );
\Trame_DCC_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(20),
      O => Trame_DCC_IBUF(20)
    );
\Trame_DCC_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(21),
      O => Trame_DCC_IBUF(21)
    );
\Trame_DCC_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(22),
      O => Trame_DCC_IBUF(22)
    );
\Trame_DCC_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(23),
      O => Trame_DCC_IBUF(23)
    );
\Trame_DCC_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(24),
      O => Trame_DCC_IBUF(24)
    );
\Trame_DCC_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(25),
      O => Trame_DCC_IBUF(25)
    );
\Trame_DCC_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(26),
      O => Trame_DCC_IBUF(26)
    );
\Trame_DCC_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(27),
      O => Trame_DCC_IBUF(27)
    );
\Trame_DCC_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(28),
      O => Trame_DCC_IBUF(28)
    );
\Trame_DCC_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(29),
      O => Trame_DCC_IBUF(29)
    );
\Trame_DCC_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(2),
      O => Trame_DCC_IBUF(2)
    );
\Trame_DCC_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(30),
      O => Trame_DCC_IBUF(30)
    );
\Trame_DCC_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(31),
      O => Trame_DCC_IBUF(31)
    );
\Trame_DCC_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(32),
      O => Trame_DCC_IBUF(32)
    );
\Trame_DCC_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(33),
      O => Trame_DCC_IBUF(33)
    );
\Trame_DCC_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(34),
      O => Trame_DCC_IBUF(34)
    );
\Trame_DCC_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(35),
      O => Trame_DCC_IBUF(35)
    );
\Trame_DCC_IBUF[36]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(36),
      O => Trame_DCC_IBUF(36)
    );
\Trame_DCC_IBUF[37]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(37),
      O => Trame_DCC_IBUF(37)
    );
\Trame_DCC_IBUF[38]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(38),
      O => Trame_DCC_IBUF(38)
    );
\Trame_DCC_IBUF[39]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(39),
      O => Trame_DCC_IBUF(39)
    );
\Trame_DCC_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(3),
      O => Trame_DCC_IBUF(3)
    );
\Trame_DCC_IBUF[40]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(40),
      O => Trame_DCC_IBUF(40)
    );
\Trame_DCC_IBUF[41]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(41),
      O => Trame_DCC_IBUF(41)
    );
\Trame_DCC_IBUF[42]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(42),
      O => Trame_DCC_IBUF(42)
    );
\Trame_DCC_IBUF[43]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(43),
      O => Trame_DCC_IBUF(43)
    );
\Trame_DCC_IBUF[44]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(44),
      O => Trame_DCC_IBUF(44)
    );
\Trame_DCC_IBUF[45]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(45),
      O => Trame_DCC_IBUF(45)
    );
\Trame_DCC_IBUF[46]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(46),
      O => Trame_DCC_IBUF(46)
    );
\Trame_DCC_IBUF[47]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(47),
      O => Trame_DCC_IBUF(47)
    );
\Trame_DCC_IBUF[48]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(48),
      O => Trame_DCC_IBUF(48)
    );
\Trame_DCC_IBUF[49]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(49),
      O => Trame_DCC_IBUF(49)
    );
\Trame_DCC_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(4),
      O => Trame_DCC_IBUF(4)
    );
\Trame_DCC_IBUF[50]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(50),
      O => Trame_DCC_IBUF(50)
    );
\Trame_DCC_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(5),
      O => Trame_DCC_IBUF(5)
    );
\Trame_DCC_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(6),
      O => Trame_DCC_IBUF(6)
    );
\Trame_DCC_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(7),
      O => Trame_DCC_IBUF(7)
    );
\Trame_DCC_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(8),
      O => Trame_DCC_IBUF(8)
    );
\Trame_DCC_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Trame_DCC(9),
      O => Trame_DCC_IBUF(9)
    );
end STRUCTURE;
