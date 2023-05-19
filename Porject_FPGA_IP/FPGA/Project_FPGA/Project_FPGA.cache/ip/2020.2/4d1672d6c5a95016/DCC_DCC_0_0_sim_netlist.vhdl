-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed May 10 12:32:15 2023
-- Host        : SUMarc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DCC_DCC_0_0_sim_netlist.vhdl
-- Design      : DCC_DCC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CLK_DIV is
  port (
    Clk_Temp : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CLK_DIV;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CLK_DIV is
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
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AS(0),
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
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AS(0),
      D => \Div[0]_i_1_n_0\,
      Q => Div(0)
    );
\Div_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AS(0),
      D => Div_0(1),
      Q => Div(1)
    );
\Div_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AS(0),
      D => Div_0(2),
      Q => Div(2)
    );
\Div_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AS(0),
      D => Div_0(3),
      Q => Div(3)
    );
\Div_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AS(0),
      D => Div_0(4),
      Q => Div(4)
    );
\Div_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AS(0),
      D => Div_0(5),
      Q => Div(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_COMPTEUR_TEMPO is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp : in STD_LOGIC;
    Reset_Tempo_s : in STD_LOGIC;
    \FSM_onehot_EP_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_COMPTEUR_TEMPO;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_COMPTEUR_TEMPO is
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
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[8]_i_1_n_5\,
      Q => Cpt_reg(10)
    );
\Cpt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[8]_i_1_n_4\,
      Q => Cpt_reg(11)
    );
\Cpt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[12]_i_1_n_6\,
      Q => Cpt_reg(13)
    );
\Cpt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[0]_i_2_n_6\,
      Q => Cpt_reg(1)
    );
\Cpt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[0]_i_2_n_5\,
      Q => Cpt_reg(2)
    );
\Cpt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[0]_i_2_n_4\,
      Q => Cpt_reg(3)
    );
\Cpt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[4]_i_1_n_6\,
      Q => Cpt_reg(5)
    );
\Cpt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[4]_i_1_n_5\,
      Q => Cpt_reg(6)
    );
\Cpt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => \Cpt[0]_i_1_n_0\,
      CLR => Reset_Tempo_s,
      D => \Cpt_reg[4]_i_1_n_4\,
      Q => Cpt_reg(7)
    );
\Cpt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
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
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Reset_Tempo_s,
      D => p_1_out(0),
      Q => \^q\(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur is
  port (
    FIN_1_s : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp : in STD_LOGIC;
    Reset_Cpt_High : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur is
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
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1__1_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1__1_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1__1_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1__1_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1__1_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1__1_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1__1_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1__1_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1__1_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1__1_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1__1_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1__1_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1__1_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1__1_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1__1_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1__1_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1__1_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1__1_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1__1_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1__1_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1__1_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1__1_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1__1_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_0 is
  port (
    Fin_Cpt_Low : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp : in STD_LOGIC;
    Reset_Cpt_Low : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_0 : entity is "DCC_Compteur";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_0 is
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
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__3_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__3_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__3_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__3_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__3_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__3_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__3_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__3_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__3_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__3_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__3_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__3_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__3_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__3_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__3_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__3_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__3_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__3_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__3_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__3_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__3_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__3_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__3_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_1 is
  port (
    FIN_0_s : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp : in STD_LOGIC;
    Reset_Cpt_High : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_1 : entity is "DCC_Compteur";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_1 is
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
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[8]_i_1_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[12]_i_1_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[16]_i_1_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[20]_i_1_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[24]_i_1_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[28]_i_1_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[0]_i_1_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_High,
      D => \cpt_reg[4]_i_1_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_2 is
  port (
    Fin_Cpt_Low : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp : in STD_LOGIC;
    Reset_Cpt_Low : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_2 : entity is "DCC_Compteur";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_2 is
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
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__2_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[8]_i_1__2_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__2_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__2_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[12]_i_1__2_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__2_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__2_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[16]_i_1__2_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__2_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__2_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__2_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[20]_i_1__2_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__2_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__2_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[24]_i_1__2_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__2_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__2_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__2_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[28]_i_1__2_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[0]_i_1__2_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__2_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__2_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
      CE => Q(0),
      CLR => Reset_Cpt_Low,
      D => \cpt_reg[4]_i_1__2_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => Clk_Temp,
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
     port map (
      C => Clk_Temp,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE is
  port (
    Reset_Cpt_High : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Reset_Cpt_Low : out STD_LOGIC;
    SORTIE_DCC : out STD_LOGIC;
    SORTIE_DCC_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_EP_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    FIN_1_s : in STD_LOGIC;
    Fin_Cpt_Low : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE is
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
  attribute SOFT_HLUTNM of SORTIE_DCC_INST_0 : label is "soft_lutpair6";
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
      C => s00_axi_aclk,
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
      C => s00_axi_aclk,
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
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_EP[2]_i_1__0_n_0\,
      Q => \^q\(1)
    );
SORTIE_DCC_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => SORTIE_DCC_0(0),
      O => SORTIE_DCC
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE_3 is
  port (
    Reset_Cpt_High : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Reset_Cpt_Low : out STD_LOGIC;
    \FSM_onehot_EP_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    FIN_0_s : in STD_LOGIC;
    Fin_Cpt_Low : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE_3 : entity is "DDC_MAE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE_3 is
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
      C => s00_axi_aclk,
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
      C => s00_axi_aclk,
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
      C => s00_axi_aclk,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE_Compteur is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    FIN_0_s : in STD_LOGIC;
    FIN_1_s : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE_Compteur;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE_Compteur is
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
     port map (
      C => s00_axi_aclk,
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
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[8]_i_1__0_n_5\,
      Q => cpt_reg(10)
    );
\cpt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[8]_i_1__0_n_4\,
      Q => cpt_reg(11)
    );
\cpt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[12]_i_1__0_n_6\,
      Q => cpt_reg(13)
    );
\cpt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[12]_i_1__0_n_5\,
      Q => cpt_reg(14)
    );
\cpt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[12]_i_1__0_n_4\,
      Q => cpt_reg(15)
    );
\cpt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[16]_i_1__0_n_6\,
      Q => cpt_reg(17)
    );
\cpt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[16]_i_1__0_n_5\,
      Q => cpt_reg(18)
    );
\cpt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[16]_i_1__0_n_4\,
      Q => cpt_reg(19)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[0]_i_1__0_n_6\,
      Q => cpt_reg(1)
    );
\cpt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[20]_i_1__0_n_6\,
      Q => cpt_reg(21)
    );
\cpt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[20]_i_1__0_n_5\,
      Q => cpt_reg(22)
    );
\cpt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[20]_i_1__0_n_4\,
      Q => cpt_reg(23)
    );
\cpt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[24]_i_1__0_n_6\,
      Q => cpt_reg(25)
    );
\cpt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[24]_i_1__0_n_5\,
      Q => cpt_reg(26)
    );
\cpt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[24]_i_1__0_n_4\,
      Q => cpt_reg(27)
    );
\cpt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[28]_i_1__0_n_6\,
      Q => cpt_reg(29)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[0]_i_1__0_n_5\,
      Q => cpt_reg(2)
    );
\cpt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[28]_i_1__0_n_5\,
      Q => cpt_reg(30)
    );
\cpt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[28]_i_1__0_n_4\,
      Q => cpt_reg(31)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[0]_i_1__0_n_4\,
      Q => cpt_reg(3)
    );
\cpt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[4]_i_1__0_n_6\,
      Q => cpt_reg(5)
    );
\cpt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[4]_i_1__0_n_5\,
      Q => cpt_reg(6)
    );
\cpt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => Q(2),
      CLR => Reset_Compteur,
      D => \cpt_reg[4]_i_1__0_n_4\,
      Q => cpt_reg(7)
    );
\cpt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
     port map (
      C => s00_axi_aclk,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REGISTRE_DCC is
  port (
    bit_out_s : out STD_LOGIC;
    Trame_DCC : in STD_LOGIC_VECTOR ( 50 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REGISTRE_DCC;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REGISTRE_DCC is
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
  signal \reg_data[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[10]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[11]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[12]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[13]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[14]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[15]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[16]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[17]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[18]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[19]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[20]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[21]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[22]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[23]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[24]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[25]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[26]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[27]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[28]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[29]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[30]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[31]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[32]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[33]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[34]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[35]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[36]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[37]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[38]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[39]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[40]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[41]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[42]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[43]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[44]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[45]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[46]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[47]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[48]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[49]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[4]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[50]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[50]_P_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[5]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[6]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[7]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[8]_C_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[9]_C_i_1_n_0\ : STD_LOGIC;
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
     port map (
      C => s00_axi_aclk,
      CE => \nb_shifted[5]_i_1_n_0\,
      D => bit_out_s_i_1_n_0,
      PRE => AS(0),
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
     port map (
      C => s00_axi_aclk,
      CE => \nb_shifted[5]_i_1_n_0\,
      CLR => AS(0),
      D => \nb_shifted[0]_i_1_n_0\,
      Q => \nb_shifted_reg_n_0_[0]\
    );
\nb_shifted_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \nb_shifted[5]_i_1_n_0\,
      D => \nb_shifted[1]_i_1_n_0\,
      PRE => AS(0),
      Q => \nb_shifted_reg_n_0_[1]\
    );
\nb_shifted_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \nb_shifted[5]_i_1_n_0\,
      CLR => AS(0),
      D => \nb_shifted[2]_i_1_n_0\,
      Q => \nb_shifted_reg_n_0_[2]\
    );
\nb_shifted_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \nb_shifted[5]_i_1_n_0\,
      CLR => AS(0),
      D => \nb_shifted[3]_i_1_n_0\,
      Q => \nb_shifted_reg_n_0_[3]\
    );
\nb_shifted_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \nb_shifted[5]_i_1_n_0\,
      D => \nb_shifted[4]_i_1_n_0\,
      PRE => AS(0),
      Q => \nb_shifted_reg_n_0_[4]\
    );
\nb_shifted_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \nb_shifted[5]_i_1_n_0\,
      D => \nb_shifted[5]_i_2_n_0\,
      PRE => AS(0),
      Q => \nb_shifted_reg_n_0_[5]\
    );
\reg_data[0]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(0),
      I5 => \reg_data_reg[0]_C_n_0\,
      O => \reg_data[0]_C_i_1_n_0\
    );
\reg_data[10]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(10),
      I5 => \reg_data_reg[10]_C_n_0\,
      O => \reg_data[10]_C_i_1_n_0\
    );
\reg_data[11]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(11),
      I5 => \reg_data_reg[11]_C_n_0\,
      O => \reg_data[11]_C_i_1_n_0\
    );
\reg_data[12]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(12),
      I5 => \reg_data_reg[12]_C_n_0\,
      O => \reg_data[12]_C_i_1_n_0\
    );
\reg_data[13]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(13),
      I5 => \reg_data_reg[13]_C_n_0\,
      O => \reg_data[13]_C_i_1_n_0\
    );
\reg_data[14]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(14),
      I5 => \reg_data_reg[14]_C_n_0\,
      O => \reg_data[14]_C_i_1_n_0\
    );
\reg_data[15]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(15),
      I5 => \reg_data_reg[15]_C_n_0\,
      O => \reg_data[15]_C_i_1_n_0\
    );
\reg_data[16]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(16),
      I5 => \reg_data_reg[16]_C_n_0\,
      O => \reg_data[16]_C_i_1_n_0\
    );
\reg_data[17]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(17),
      I5 => \reg_data_reg[17]_C_n_0\,
      O => \reg_data[17]_C_i_1_n_0\
    );
\reg_data[18]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(18),
      I5 => \reg_data_reg[18]_C_n_0\,
      O => \reg_data[18]_C_i_1_n_0\
    );
\reg_data[19]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(19),
      I5 => \reg_data_reg[19]_C_n_0\,
      O => \reg_data[19]_C_i_1_n_0\
    );
\reg_data[1]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(1),
      I5 => \reg_data_reg[1]_C_n_0\,
      O => \reg_data[1]_C_i_1_n_0\
    );
\reg_data[20]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(20),
      I5 => \reg_data_reg[20]_C_n_0\,
      O => \reg_data[20]_C_i_1_n_0\
    );
\reg_data[21]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(21),
      I5 => \reg_data_reg[21]_C_n_0\,
      O => \reg_data[21]_C_i_1_n_0\
    );
\reg_data[22]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(22),
      I5 => \reg_data_reg[22]_C_n_0\,
      O => \reg_data[22]_C_i_1_n_0\
    );
\reg_data[23]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(23),
      I5 => \reg_data_reg[23]_C_n_0\,
      O => \reg_data[23]_C_i_1_n_0\
    );
\reg_data[24]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(24),
      I5 => \reg_data_reg[24]_C_n_0\,
      O => \reg_data[24]_C_i_1_n_0\
    );
\reg_data[25]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(25),
      I5 => \reg_data_reg[25]_C_n_0\,
      O => \reg_data[25]_C_i_1_n_0\
    );
\reg_data[26]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(26),
      I5 => \reg_data_reg[26]_C_n_0\,
      O => \reg_data[26]_C_i_1_n_0\
    );
\reg_data[27]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(27),
      I5 => \reg_data_reg[27]_C_n_0\,
      O => \reg_data[27]_C_i_1_n_0\
    );
\reg_data[28]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(28),
      I5 => \reg_data_reg[28]_C_n_0\,
      O => \reg_data[28]_C_i_1_n_0\
    );
\reg_data[29]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(29),
      I5 => \reg_data_reg[29]_C_n_0\,
      O => \reg_data[29]_C_i_1_n_0\
    );
\reg_data[2]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(2),
      I5 => \reg_data_reg[2]_C_n_0\,
      O => \reg_data[2]_C_i_1_n_0\
    );
\reg_data[30]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(30),
      I5 => \reg_data_reg[30]_C_n_0\,
      O => \reg_data[30]_C_i_1_n_0\
    );
\reg_data[31]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(31),
      I5 => \reg_data_reg[31]_C_n_0\,
      O => \reg_data[31]_C_i_1_n_0\
    );
\reg_data[32]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(32),
      I5 => \reg_data_reg[32]_C_n_0\,
      O => \reg_data[32]_C_i_1_n_0\
    );
\reg_data[33]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(33),
      I5 => \reg_data_reg[33]_C_n_0\,
      O => \reg_data[33]_C_i_1_n_0\
    );
\reg_data[34]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(34),
      I5 => \reg_data_reg[34]_C_n_0\,
      O => \reg_data[34]_C_i_1_n_0\
    );
\reg_data[35]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(35),
      I5 => \reg_data_reg[35]_C_n_0\,
      O => \reg_data[35]_C_i_1_n_0\
    );
\reg_data[36]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(36),
      I5 => \reg_data_reg[36]_C_n_0\,
      O => \reg_data[36]_C_i_1_n_0\
    );
\reg_data[37]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(37),
      I5 => \reg_data_reg[37]_C_n_0\,
      O => \reg_data[37]_C_i_1_n_0\
    );
\reg_data[38]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(38),
      I5 => \reg_data_reg[38]_C_n_0\,
      O => \reg_data[38]_C_i_1_n_0\
    );
\reg_data[39]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(39),
      I5 => \reg_data_reg[39]_C_n_0\,
      O => \reg_data[39]_C_i_1_n_0\
    );
\reg_data[3]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(3),
      I5 => \reg_data_reg[3]_C_n_0\,
      O => \reg_data[3]_C_i_1_n_0\
    );
\reg_data[40]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(40),
      I5 => \reg_data_reg[40]_C_n_0\,
      O => \reg_data[40]_C_i_1_n_0\
    );
\reg_data[41]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(41),
      I5 => \reg_data_reg[41]_C_n_0\,
      O => \reg_data[41]_C_i_1_n_0\
    );
\reg_data[42]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(42),
      I5 => \reg_data_reg[42]_C_n_0\,
      O => \reg_data[42]_C_i_1_n_0\
    );
\reg_data[43]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(43),
      I5 => \reg_data_reg[43]_C_n_0\,
      O => \reg_data[43]_C_i_1_n_0\
    );
\reg_data[44]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(44),
      I5 => \reg_data_reg[44]_C_n_0\,
      O => \reg_data[44]_C_i_1_n_0\
    );
\reg_data[45]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(45),
      I5 => \reg_data_reg[45]_C_n_0\,
      O => \reg_data[45]_C_i_1_n_0\
    );
\reg_data[46]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(46),
      I5 => \reg_data_reg[46]_C_n_0\,
      O => \reg_data[46]_C_i_1_n_0\
    );
\reg_data[47]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(47),
      I5 => \reg_data_reg[47]_C_n_0\,
      O => \reg_data[47]_C_i_1_n_0\
    );
\reg_data[48]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(48),
      I5 => \reg_data_reg[48]_C_n_0\,
      O => \reg_data[48]_C_i_1_n_0\
    );
\reg_data[49]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(49),
      I5 => \reg_data_reg[49]_C_n_0\,
      O => \reg_data[49]_C_i_1_n_0\
    );
\reg_data[4]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(4),
      I5 => \reg_data_reg[4]_C_n_0\,
      O => \reg_data[4]_C_i_1_n_0\
    );
\reg_data[50]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(50),
      I5 => \reg_data_reg[50]_C_n_0\,
      O => \reg_data[50]_C_i_1_n_0\
    );
\reg_data[50]_P_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F40"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      O => \reg_data[50]_P_i_1_n_0\
    );
\reg_data[5]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(5),
      I5 => \reg_data_reg[5]_C_n_0\,
      O => \reg_data[5]_C_i_1_n_0\
    );
\reg_data[6]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(6),
      I5 => \reg_data_reg[6]_C_n_0\,
      O => \reg_data[6]_C_i_1_n_0\
    );
\reg_data[7]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(7),
      I5 => \reg_data_reg[7]_C_n_0\,
      O => \reg_data[7]_C_i_1_n_0\
    );
\reg_data[8]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(8),
      I5 => \reg_data_reg[8]_C_n_0\,
      O => \reg_data[8]_C_i_1_n_0\
    );
\reg_data[9]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0BF0F400000"
    )
        port map (
      I0 => \nb_shifted[5]_i_4_n_0\,
      I1 => \reg_data__2\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Trame_DCC(9),
      I5 => \reg_data_reg[9]_C_n_0\,
      O => \reg_data[9]_C_i_1_n_0\
    );
\reg_data_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[0]_LDC_i_2_n_0\,
      D => \reg_data[0]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(0),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[0]_LDC_i_1_n_0\
    );
\reg_data_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(0),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[0]_LDC_i_2_n_0\
    );
\reg_data_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(0),
      PRE => \reg_data_reg[0]_LDC_i_1_n_0\,
      Q => \reg_data_reg[0]_P_n_0\
    );
\reg_data_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
\reg_data_reg[10]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(10),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[10]_LDC_i_1_n_0\
    );
\reg_data_reg[10]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(10),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[10]_LDC_i_2_n_0\
    );
\reg_data_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(10),
      PRE => \reg_data_reg[10]_LDC_i_1_n_0\,
      Q => \reg_data_reg[10]_P_n_0\
    );
\reg_data_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
\reg_data_reg[11]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(11),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[11]_LDC_i_1_n_0\
    );
\reg_data_reg[11]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(11),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[11]_LDC_i_2_n_0\
    );
\reg_data_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(11),
      PRE => \reg_data_reg[11]_LDC_i_1_n_0\,
      Q => \reg_data_reg[11]_P_n_0\
    );
\reg_data_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[12]_LDC_i_2_n_0\,
      D => \reg_data[12]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(12),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[12]_LDC_i_1_n_0\
    );
\reg_data_reg[12]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(12),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[12]_LDC_i_2_n_0\
    );
\reg_data_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(12),
      PRE => \reg_data_reg[12]_LDC_i_1_n_0\,
      Q => \reg_data_reg[12]_P_n_0\
    );
\reg_data_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
\reg_data_reg[13]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(13),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[13]_LDC_i_1_n_0\
    );
\reg_data_reg[13]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(13),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[13]_LDC_i_2_n_0\
    );
\reg_data_reg[13]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(13),
      PRE => \reg_data_reg[13]_LDC_i_1_n_0\,
      Q => \reg_data_reg[13]_P_n_0\
    );
\reg_data_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
\reg_data_reg[14]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(14),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[14]_LDC_i_1_n_0\
    );
\reg_data_reg[14]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(14),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[14]_LDC_i_2_n_0\
    );
\reg_data_reg[14]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(14),
      PRE => \reg_data_reg[14]_LDC_i_1_n_0\,
      Q => \reg_data_reg[14]_P_n_0\
    );
\reg_data_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[15]_LDC_i_2_n_0\,
      D => \reg_data[15]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(15),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[15]_LDC_i_1_n_0\
    );
\reg_data_reg[15]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(15),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[15]_LDC_i_2_n_0\
    );
\reg_data_reg[15]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(15),
      PRE => \reg_data_reg[15]_LDC_i_1_n_0\,
      Q => \reg_data_reg[15]_P_n_0\
    );
\reg_data_reg[16]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
\reg_data_reg[16]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(16),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[16]_LDC_i_1_n_0\
    );
\reg_data_reg[16]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(16),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[16]_LDC_i_2_n_0\
    );
\reg_data_reg[16]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(16),
      PRE => \reg_data_reg[16]_LDC_i_1_n_0\,
      Q => \reg_data_reg[16]_P_n_0\
    );
\reg_data_reg[17]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
\reg_data_reg[17]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(17),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[17]_LDC_i_1_n_0\
    );
\reg_data_reg[17]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(17),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[17]_LDC_i_2_n_0\
    );
\reg_data_reg[17]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(17),
      PRE => \reg_data_reg[17]_LDC_i_1_n_0\,
      Q => \reg_data_reg[17]_P_n_0\
    );
\reg_data_reg[18]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[18]_LDC_i_2_n_0\,
      D => \reg_data[18]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(18),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[18]_LDC_i_1_n_0\
    );
\reg_data_reg[18]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(18),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[18]_LDC_i_2_n_0\
    );
\reg_data_reg[18]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(18),
      PRE => \reg_data_reg[18]_LDC_i_1_n_0\,
      Q => \reg_data_reg[18]_P_n_0\
    );
\reg_data_reg[19]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[19]_LDC_i_2_n_0\,
      D => \reg_data[19]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(19),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[19]_LDC_i_1_n_0\
    );
\reg_data_reg[19]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(19),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[19]_LDC_i_2_n_0\
    );
\reg_data_reg[19]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(19),
      PRE => \reg_data_reg[19]_LDC_i_1_n_0\,
      Q => \reg_data_reg[19]_P_n_0\
    );
\reg_data_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[1]_LDC_i_2_n_0\,
      D => \reg_data[1]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(1),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[1]_LDC_i_1_n_0\
    );
\reg_data_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(1),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[1]_LDC_i_2_n_0\
    );
\reg_data_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(1),
      PRE => \reg_data_reg[1]_LDC_i_1_n_0\,
      Q => \reg_data_reg[1]_P_n_0\
    );
\reg_data_reg[20]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[20]_LDC_i_2_n_0\,
      D => \reg_data[20]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(20),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[20]_LDC_i_1_n_0\
    );
\reg_data_reg[20]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(20),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[20]_LDC_i_2_n_0\
    );
\reg_data_reg[20]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(20),
      PRE => \reg_data_reg[20]_LDC_i_1_n_0\,
      Q => \reg_data_reg[20]_P_n_0\
    );
\reg_data_reg[21]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[21]_LDC_i_2_n_0\,
      D => \reg_data[21]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(21),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[21]_LDC_i_1_n_0\
    );
\reg_data_reg[21]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(21),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[21]_LDC_i_2_n_0\
    );
\reg_data_reg[21]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(21),
      PRE => \reg_data_reg[21]_LDC_i_1_n_0\,
      Q => \reg_data_reg[21]_P_n_0\
    );
\reg_data_reg[22]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[22]_LDC_i_2_n_0\,
      D => \reg_data[22]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(22),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[22]_LDC_i_1_n_0\
    );
\reg_data_reg[22]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(22),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[22]_LDC_i_2_n_0\
    );
\reg_data_reg[22]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(22),
      PRE => \reg_data_reg[22]_LDC_i_1_n_0\,
      Q => \reg_data_reg[22]_P_n_0\
    );
\reg_data_reg[23]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[23]_LDC_i_2_n_0\,
      D => \reg_data[23]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(23),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[23]_LDC_i_1_n_0\
    );
\reg_data_reg[23]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(23),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[23]_LDC_i_2_n_0\
    );
\reg_data_reg[23]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(23),
      PRE => \reg_data_reg[23]_LDC_i_1_n_0\,
      Q => \reg_data_reg[23]_P_n_0\
    );
\reg_data_reg[24]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[24]_LDC_i_2_n_0\,
      D => \reg_data[24]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(24),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[24]_LDC_i_1_n_0\
    );
\reg_data_reg[24]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(24),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[24]_LDC_i_2_n_0\
    );
\reg_data_reg[24]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(24),
      PRE => \reg_data_reg[24]_LDC_i_1_n_0\,
      Q => \reg_data_reg[24]_P_n_0\
    );
\reg_data_reg[25]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[25]_LDC_i_2_n_0\,
      D => \reg_data[25]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(25),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[25]_LDC_i_1_n_0\
    );
\reg_data_reg[25]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(25),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[25]_LDC_i_2_n_0\
    );
\reg_data_reg[25]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(25),
      PRE => \reg_data_reg[25]_LDC_i_1_n_0\,
      Q => \reg_data_reg[25]_P_n_0\
    );
\reg_data_reg[26]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[26]_LDC_i_2_n_0\,
      D => \reg_data[26]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(26),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[26]_LDC_i_1_n_0\
    );
\reg_data_reg[26]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(26),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[26]_LDC_i_2_n_0\
    );
\reg_data_reg[26]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(26),
      PRE => \reg_data_reg[26]_LDC_i_1_n_0\,
      Q => \reg_data_reg[26]_P_n_0\
    );
\reg_data_reg[27]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[27]_LDC_i_2_n_0\,
      D => \reg_data[27]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(27),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[27]_LDC_i_1_n_0\
    );
\reg_data_reg[27]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(27),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[27]_LDC_i_2_n_0\
    );
\reg_data_reg[27]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(27),
      PRE => \reg_data_reg[27]_LDC_i_1_n_0\,
      Q => \reg_data_reg[27]_P_n_0\
    );
\reg_data_reg[28]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[28]_LDC_i_2_n_0\,
      D => \reg_data[28]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(28),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[28]_LDC_i_1_n_0\
    );
\reg_data_reg[28]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(28),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[28]_LDC_i_2_n_0\
    );
\reg_data_reg[28]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(28),
      PRE => \reg_data_reg[28]_LDC_i_1_n_0\,
      Q => \reg_data_reg[28]_P_n_0\
    );
\reg_data_reg[29]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[29]_LDC_i_2_n_0\,
      D => \reg_data[29]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(29),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[29]_LDC_i_1_n_0\
    );
\reg_data_reg[29]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(29),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[29]_LDC_i_2_n_0\
    );
\reg_data_reg[29]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(29),
      PRE => \reg_data_reg[29]_LDC_i_1_n_0\,
      Q => \reg_data_reg[29]_P_n_0\
    );
\reg_data_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
\reg_data_reg[2]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(2),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[2]_LDC_i_1_n_0\
    );
\reg_data_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(2),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[2]_LDC_i_2_n_0\
    );
\reg_data_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(2),
      PRE => \reg_data_reg[2]_LDC_i_1_n_0\,
      Q => \reg_data_reg[2]_P_n_0\
    );
\reg_data_reg[30]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[30]_LDC_i_2_n_0\,
      D => \reg_data[30]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(30),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[30]_LDC_i_1_n_0\
    );
\reg_data_reg[30]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(30),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[30]_LDC_i_2_n_0\
    );
\reg_data_reg[30]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(30),
      PRE => \reg_data_reg[30]_LDC_i_1_n_0\,
      Q => \reg_data_reg[30]_P_n_0\
    );
\reg_data_reg[31]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[31]_LDC_i_2_n_0\,
      D => \reg_data[31]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(31),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[31]_LDC_i_1_n_0\
    );
\reg_data_reg[31]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(31),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[31]_LDC_i_2_n_0\
    );
\reg_data_reg[31]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(31),
      PRE => \reg_data_reg[31]_LDC_i_1_n_0\,
      Q => \reg_data_reg[31]_P_n_0\
    );
\reg_data_reg[32]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[32]_LDC_i_2_n_0\,
      D => \reg_data[32]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(32),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[32]_LDC_i_1_n_0\
    );
\reg_data_reg[32]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(32),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[32]_LDC_i_2_n_0\
    );
\reg_data_reg[32]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(32),
      PRE => \reg_data_reg[32]_LDC_i_1_n_0\,
      Q => \reg_data_reg[32]_P_n_0\
    );
\reg_data_reg[33]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[33]_LDC_i_2_n_0\,
      D => \reg_data[33]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(33),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[33]_LDC_i_1_n_0\
    );
\reg_data_reg[33]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(33),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[33]_LDC_i_2_n_0\
    );
\reg_data_reg[33]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(33),
      PRE => \reg_data_reg[33]_LDC_i_1_n_0\,
      Q => \reg_data_reg[33]_P_n_0\
    );
\reg_data_reg[34]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[34]_LDC_i_2_n_0\,
      D => \reg_data[34]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(34),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[34]_LDC_i_1_n_0\
    );
\reg_data_reg[34]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(34),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[34]_LDC_i_2_n_0\
    );
\reg_data_reg[34]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(34),
      PRE => \reg_data_reg[34]_LDC_i_1_n_0\,
      Q => \reg_data_reg[34]_P_n_0\
    );
\reg_data_reg[35]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[35]_LDC_i_2_n_0\,
      D => \reg_data[35]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(35),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[35]_LDC_i_1_n_0\
    );
\reg_data_reg[35]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(35),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[35]_LDC_i_2_n_0\
    );
\reg_data_reg[35]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(35),
      PRE => \reg_data_reg[35]_LDC_i_1_n_0\,
      Q => \reg_data_reg[35]_P_n_0\
    );
\reg_data_reg[36]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[36]_LDC_i_2_n_0\,
      D => \reg_data[36]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(36),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[36]_LDC_i_1_n_0\
    );
\reg_data_reg[36]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(36),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[36]_LDC_i_2_n_0\
    );
\reg_data_reg[36]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(36),
      PRE => \reg_data_reg[36]_LDC_i_1_n_0\,
      Q => \reg_data_reg[36]_P_n_0\
    );
\reg_data_reg[37]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[37]_LDC_i_2_n_0\,
      D => \reg_data[37]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(37),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[37]_LDC_i_1_n_0\
    );
\reg_data_reg[37]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(37),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[37]_LDC_i_2_n_0\
    );
\reg_data_reg[37]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(37),
      PRE => \reg_data_reg[37]_LDC_i_1_n_0\,
      Q => \reg_data_reg[37]_P_n_0\
    );
\reg_data_reg[38]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[38]_LDC_i_2_n_0\,
      D => \reg_data[38]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(38),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[38]_LDC_i_1_n_0\
    );
\reg_data_reg[38]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(38),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[38]_LDC_i_2_n_0\
    );
\reg_data_reg[38]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(38),
      PRE => \reg_data_reg[38]_LDC_i_1_n_0\,
      Q => \reg_data_reg[38]_P_n_0\
    );
\reg_data_reg[39]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[39]_LDC_i_2_n_0\,
      D => \reg_data[39]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(39),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[39]_LDC_i_1_n_0\
    );
\reg_data_reg[39]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(39),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[39]_LDC_i_2_n_0\
    );
\reg_data_reg[39]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(39),
      PRE => \reg_data_reg[39]_LDC_i_1_n_0\,
      Q => \reg_data_reg[39]_P_n_0\
    );
\reg_data_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[3]_LDC_i_2_n_0\,
      D => \reg_data[3]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(3),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[3]_LDC_i_1_n_0\
    );
\reg_data_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(3),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[3]_LDC_i_2_n_0\
    );
\reg_data_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(3),
      PRE => \reg_data_reg[3]_LDC_i_1_n_0\,
      Q => \reg_data_reg[3]_P_n_0\
    );
\reg_data_reg[40]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[40]_LDC_i_2_n_0\,
      D => \reg_data[40]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(40),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[40]_LDC_i_1_n_0\
    );
\reg_data_reg[40]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(40),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[40]_LDC_i_2_n_0\
    );
\reg_data_reg[40]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(40),
      PRE => \reg_data_reg[40]_LDC_i_1_n_0\,
      Q => \reg_data_reg[40]_P_n_0\
    );
\reg_data_reg[41]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[41]_LDC_i_2_n_0\,
      D => \reg_data[41]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(41),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[41]_LDC_i_1_n_0\
    );
\reg_data_reg[41]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(41),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[41]_LDC_i_2_n_0\
    );
\reg_data_reg[41]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(41),
      PRE => \reg_data_reg[41]_LDC_i_1_n_0\,
      Q => \reg_data_reg[41]_P_n_0\
    );
\reg_data_reg[42]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[42]_LDC_i_2_n_0\,
      D => \reg_data[42]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(42),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[42]_LDC_i_1_n_0\
    );
\reg_data_reg[42]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(42),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[42]_LDC_i_2_n_0\
    );
\reg_data_reg[42]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(42),
      PRE => \reg_data_reg[42]_LDC_i_1_n_0\,
      Q => \reg_data_reg[42]_P_n_0\
    );
\reg_data_reg[43]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[43]_LDC_i_2_n_0\,
      D => \reg_data[43]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(43),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[43]_LDC_i_1_n_0\
    );
\reg_data_reg[43]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(43),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[43]_LDC_i_2_n_0\
    );
\reg_data_reg[43]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(43),
      PRE => \reg_data_reg[43]_LDC_i_1_n_0\,
      Q => \reg_data_reg[43]_P_n_0\
    );
\reg_data_reg[44]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[44]_LDC_i_2_n_0\,
      D => \reg_data[44]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(44),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[44]_LDC_i_1_n_0\
    );
\reg_data_reg[44]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(44),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[44]_LDC_i_2_n_0\
    );
\reg_data_reg[44]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(44),
      PRE => \reg_data_reg[44]_LDC_i_1_n_0\,
      Q => \reg_data_reg[44]_P_n_0\
    );
\reg_data_reg[45]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[45]_LDC_i_2_n_0\,
      D => \reg_data[45]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(45),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[45]_LDC_i_1_n_0\
    );
\reg_data_reg[45]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(45),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[45]_LDC_i_2_n_0\
    );
\reg_data_reg[45]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(45),
      PRE => \reg_data_reg[45]_LDC_i_1_n_0\,
      Q => \reg_data_reg[45]_P_n_0\
    );
\reg_data_reg[46]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[46]_LDC_i_2_n_0\,
      D => \reg_data[46]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(46),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[46]_LDC_i_1_n_0\
    );
\reg_data_reg[46]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(46),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[46]_LDC_i_2_n_0\
    );
\reg_data_reg[46]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(46),
      PRE => \reg_data_reg[46]_LDC_i_1_n_0\,
      Q => \reg_data_reg[46]_P_n_0\
    );
\reg_data_reg[47]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[47]_LDC_i_2_n_0\,
      D => \reg_data[47]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(47),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[47]_LDC_i_1_n_0\
    );
\reg_data_reg[47]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(47),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[47]_LDC_i_2_n_0\
    );
\reg_data_reg[47]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(47),
      PRE => \reg_data_reg[47]_LDC_i_1_n_0\,
      Q => \reg_data_reg[47]_P_n_0\
    );
\reg_data_reg[48]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[48]_LDC_i_2_n_0\,
      D => \reg_data[48]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(48),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[48]_LDC_i_1_n_0\
    );
\reg_data_reg[48]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(48),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[48]_LDC_i_2_n_0\
    );
\reg_data_reg[48]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(48),
      PRE => \reg_data_reg[48]_LDC_i_1_n_0\,
      Q => \reg_data_reg[48]_P_n_0\
    );
\reg_data_reg[49]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[49]_LDC_i_2_n_0\,
      D => \reg_data[49]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(49),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[49]_LDC_i_1_n_0\
    );
\reg_data_reg[49]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(49),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[49]_LDC_i_2_n_0\
    );
\reg_data_reg[49]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(49),
      PRE => \reg_data_reg[49]_LDC_i_1_n_0\,
      Q => \reg_data_reg[49]_P_n_0\
    );
\reg_data_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
\reg_data_reg[4]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(4),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[4]_LDC_i_1_n_0\
    );
\reg_data_reg[4]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(4),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[4]_LDC_i_2_n_0\
    );
\reg_data_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(4),
      PRE => \reg_data_reg[4]_LDC_i_1_n_0\,
      Q => \reg_data_reg[4]_P_n_0\
    );
\reg_data_reg[50]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[50]_LDC_i_2_n_0\,
      D => \reg_data[50]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(50),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[50]_LDC_i_1_n_0\
    );
\reg_data_reg[50]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(50),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[50]_LDC_i_2_n_0\
    );
\reg_data_reg[50]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(50),
      PRE => \reg_data_reg[50]_LDC_i_1_n_0\,
      Q => \reg_data_reg[50]_P_n_0\
    );
\reg_data_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
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
\reg_data_reg[5]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(5),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[5]_LDC_i_1_n_0\
    );
\reg_data_reg[5]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(5),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[5]_LDC_i_2_n_0\
    );
\reg_data_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(5),
      PRE => \reg_data_reg[5]_LDC_i_1_n_0\,
      Q => \reg_data_reg[5]_P_n_0\
    );
\reg_data_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[6]_LDC_i_2_n_0\,
      D => \reg_data[6]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(6),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[6]_LDC_i_1_n_0\
    );
\reg_data_reg[6]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(6),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[6]_LDC_i_2_n_0\
    );
\reg_data_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(6),
      PRE => \reg_data_reg[6]_LDC_i_1_n_0\,
      Q => \reg_data_reg[6]_P_n_0\
    );
\reg_data_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[7]_LDC_i_2_n_0\,
      D => \reg_data[7]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(7),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[7]_LDC_i_1_n_0\
    );
\reg_data_reg[7]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(7),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[7]_LDC_i_2_n_0\
    );
\reg_data_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(7),
      PRE => \reg_data_reg[7]_LDC_i_1_n_0\,
      Q => \reg_data_reg[7]_P_n_0\
    );
\reg_data_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[8]_LDC_i_2_n_0\,
      D => \reg_data[8]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(8),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[8]_LDC_i_1_n_0\
    );
\reg_data_reg[8]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(8),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[8]_LDC_i_2_n_0\
    );
\reg_data_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(8),
      PRE => \reg_data_reg[8]_LDC_i_1_n_0\,
      Q => \reg_data_reg[8]_P_n_0\
    );
\reg_data_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \reg_data_reg[9]_LDC_i_2_n_0\,
      D => \reg_data[9]_C_i_1_n_0\,
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
      INIT => X"2"
    )
        port map (
      I0 => Trame_DCC(9),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[9]_LDC_i_1_n_0\
    );
\reg_data_reg[9]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Trame_DCC(9),
      I1 => s00_axi_aresetn,
      O => \reg_data_reg[9]_LDC_i_2_n_0\
    );
\reg_data_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \reg_data[50]_P_i_1_n_0\,
      D => Trame_DCC(9),
      PRE => \reg_data_reg[9]_LDC_i_1_n_0\,
      Q => \reg_data_reg[9]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIN_0_s : out STD_LOGIC;
    \FSM_onehot_EP_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit0 is
  signal Cmd : STD_LOGIC;
  signal \^fin_0_s\ : STD_LOGIC;
  signal Fin_Cpt_Low : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Reset_Cpt_High : STD_LOGIC;
  signal Reset_Cpt_Low : STD_LOGIC;
begin
  FIN_0_s <= \^fin_0_s\;
  Q(0) <= \^q\(0);
Counter_High: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_1
     port map (
      Clk_Temp => Clk_Temp,
      FIN_0_s => \^fin_0_s\,
      Q(0) => \^q\(0),
      Reset_Cpt_High => Reset_Cpt_High
    );
Counter_Low: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_2
     port map (
      Clk_Temp => Clk_Temp,
      Fin_Cpt_Low => Fin_Cpt_Low,
      Q(0) => Cmd,
      Reset_Cpt_Low => Reset_Cpt_Low
    );
MAE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE_3
     port map (
      AR(0) => AR(0),
      FIN_0_s => \^fin_0_s\,
      \FSM_onehot_EP_reg[1]_0\(0) => \FSM_onehot_EP_reg[1]\(0),
      Fin_Cpt_Low => Fin_Cpt_Low,
      Q(1) => \^q\(0),
      Q(0) => Cmd,
      Reset_Cpt_High => Reset_Cpt_High,
      Reset_Cpt_Low => Reset_Cpt_Low,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit1 is
  port (
    SORTIE_DCC : out STD_LOGIC;
    FIN_1_s : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_EP_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_Temp : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit1 is
  signal Cmd : STD_LOGIC;
  signal DCC_1 : STD_LOGIC;
  signal \^fin_1_s\ : STD_LOGIC;
  signal Fin_Cpt_Low : STD_LOGIC;
  signal Reset_Cpt_High : STD_LOGIC;
  signal Reset_Cpt_Low : STD_LOGIC;
begin
  FIN_1_s <= \^fin_1_s\;
Counter_High: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur
     port map (
      Clk_Temp => Clk_Temp,
      FIN_1_s => \^fin_1_s\,
      Q(0) => DCC_1,
      Reset_Cpt_High => Reset_Cpt_High
    );
Counter_Low: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Compteur_0
     port map (
      Clk_Temp => Clk_Temp,
      Fin_Cpt_Low => Fin_Cpt_Low,
      Q(0) => Cmd,
      Reset_Cpt_Low => Reset_Cpt_Low
    );
MAE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DDC_MAE
     port map (
      AR(0) => AR(0),
      FIN_1_s => \^fin_1_s\,
      \FSM_onehot_EP_reg[1]_0\(0) => \FSM_onehot_EP_reg[1]\(0),
      Fin_Cpt_Low => Fin_Cpt_Low,
      Q(1) => DCC_1,
      Q(0) => Cmd,
      Reset_Cpt_High => Reset_Cpt_High,
      Reset_Cpt_Low => Reset_Cpt_Low,
      SORTIE_DCC => SORTIE_DCC,
      SORTIE_DCC_0(0) => Q(0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_Tempo_s : out STD_LOGIC;
    bit_out_s : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \FSM_onehot_EP_reg[8]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FIN_0_s : in STD_LOGIC;
    FIN_1_s : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE is
  signal \^as\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  AS(0) <= \^as\(0);
  Q(5 downto 0) <= \^q\(5 downto 0);
Counter_MAE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE_Compteur
     port map (
      D(1) => Counter_MAE_n_0,
      D(0) => Counter_MAE_n_1,
      FIN_0_s => FIN_0_s,
      FIN_1_s => FIN_1_s,
      Q(5) => \^q\(4),
      Q(4) => \FSM_onehot_EP_reg_n_0_[6]\,
      Q(3) => \FSM_onehot_EP_reg_n_0_[4]\,
      Q(2 downto 1) => \^q\(1 downto 0),
      Q(0) => \FSM_onehot_EP_reg_n_0_[0]\,
      s00_axi_aclk => s00_axi_aclk
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
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      PRE => \^as\(0),
      Q => \FSM_onehot_EP_reg_n_0_[0]\
    );
\FSM_onehot_EP_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^as\(0),
      D => \FSM_onehot_EP_reg_n_0_[0]\,
      Q => \^q\(0)
    );
\FSM_onehot_EP_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^as\(0),
      D => Counter_MAE_n_1,
      Q => \^q\(1)
    );
\FSM_onehot_EP_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^as\(0),
      D => \FSM_onehot_EP[3]_i_1_n_0\,
      Q => \^q\(2)
    );
\FSM_onehot_EP_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^as\(0),
      D => \FSM_onehot_EP[4]_i_1_n_0\,
      Q => \FSM_onehot_EP_reg_n_0_[4]\
    );
\FSM_onehot_EP_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^as\(0),
      D => \FSM_onehot_EP[5]_i_1_n_0\,
      Q => \^q\(3)
    );
\FSM_onehot_EP_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^as\(0),
      D => \FSM_onehot_EP[6]_i_1_n_0\,
      Q => \FSM_onehot_EP_reg_n_0_[6]\
    );
\FSM_onehot_EP_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^as\(0),
      D => Counter_MAE_n_0,
      Q => \^q\(4)
    );
\FSM_onehot_EP_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^as\(0),
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
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^as\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TOP is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    SORTIE_DCC : out STD_LOGIC;
    Trame_DCC : in STD_LOGIC_VECTOR ( 50 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TOP;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TOP is
  signal COMPTEUR_TEMPO_0_n_1 : STD_LOGIC;
  signal COMPTEUR_TEMPO_0_n_2 : STD_LOGIC;
  signal Clk_Temp : STD_LOGIC;
  signal Com_REG_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DCC_0 : STD_LOGIC;
  signal FIN_0_s : STD_LOGIC;
  signal FIN_1_s : STD_LOGIC;
  signal GO_0_s : STD_LOGIC;
  signal GO_1_s : STD_LOGIC;
  signal MAE_0_n_0 : STD_LOGIC;
  signal Reset_DDC1_s : STD_LOGIC;
  signal Reset_Tempo_s : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Start_Tempo_s : STD_LOGIC;
  signal bit_out_s : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
CLK_DIV_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CLK_DIV
     port map (
      AS(0) => \^sr\(0),
      Clk_Temp => Clk_Temp,
      s00_axi_aclk => s00_axi_aclk
    );
COMPTEUR_TEMPO_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_COMPTEUR_TEMPO
     port map (
      Clk_Temp => Clk_Temp,
      D(0) => COMPTEUR_TEMPO_0_n_2,
      \FSM_onehot_EP_reg[0]\(1) => MAE_0_n_0,
      \FSM_onehot_EP_reg[0]\(0) => Start_Tempo_s,
      Q(1) => p_1_in,
      Q(0) => COMPTEUR_TEMPO_0_n_1,
      Reset_Tempo_s => Reset_Tempo_s,
      s00_axi_aclk => s00_axi_aclk
    );
DCC_Bit0_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit0
     port map (
      AR(0) => Reset_DDC1_s,
      Clk_Temp => Clk_Temp,
      FIN_0_s => FIN_0_s,
      \FSM_onehot_EP_reg[1]\(0) => GO_0_s,
      Q(0) => DCC_0,
      s00_axi_aclk => s00_axi_aclk
    );
DCC_Bit1_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_Bit1
     port map (
      AR(0) => Reset_DDC1_s,
      Clk_Temp => Clk_Temp,
      FIN_1_s => FIN_1_s,
      \FSM_onehot_EP_reg[1]\(0) => GO_1_s,
      Q(0) => DCC_0,
      SORTIE_DCC => SORTIE_DCC,
      s00_axi_aclk => s00_axi_aclk
    );
MAE_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAE
     port map (
      AR(0) => Reset_DDC1_s,
      AS(0) => \^sr\(0),
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
      Reset_Tempo_s => Reset_Tempo_s,
      bit_out_s => bit_out_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
REGISTRE_DCC_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REGISTRE_DCC
     port map (
      AS(0) => \^sr\(0),
      Q(1) => Com_REG_s(0),
      Q(0) => Com_REG_s(1),
      Trame_DCC(50 downto 0) => Trame_DCC(50 downto 0),
      bit_out_s => bit_out_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SORTIE_DCC : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_v1_0_S00_AXI is
  signal S_AXI_ARESET : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal Trame_DCC : STD_LOGIC_VECTOR ( 50 downto 0 );
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
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair10";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
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
axi_awready_i_2: unisim.vcomponents.LUT4
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
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(32),
      I1 => Trame_DCC(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(42),
      I1 => Trame_DCC(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(43),
      I1 => Trame_DCC(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(44),
      I1 => Trame_DCC(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(45),
      I1 => Trame_DCC(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(46),
      I1 => Trame_DCC(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(47),
      I1 => Trame_DCC(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(48),
      I1 => Trame_DCC(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(49),
      I1 => Trame_DCC(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(50),
      I1 => Trame_DCC(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[19]\,
      I1 => Trame_DCC(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(33),
      I1 => Trame_DCC(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[20]\,
      I1 => Trame_DCC(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[21]\,
      I1 => Trame_DCC(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[22]\,
      I1 => Trame_DCC(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[23]\,
      I1 => Trame_DCC(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => Trame_DCC(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[25]\,
      I1 => Trame_DCC(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[26]\,
      I1 => Trame_DCC(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[27]\,
      I1 => Trame_DCC(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[28]\,
      I1 => Trame_DCC(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[29]\,
      I1 => Trame_DCC(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(34),
      I1 => Trame_DCC(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[30]\,
      I1 => Trame_DCC(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
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
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[31]\,
      I1 => Trame_DCC(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(35),
      I1 => Trame_DCC(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(36),
      I1 => Trame_DCC(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(37),
      I1 => Trame_DCC(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(38),
      I1 => Trame_DCC(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(39),
      I1 => Trame_DCC(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(40),
      I1 => Trame_DCC(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Trame_DCC(41),
      I1 => Trame_DCC(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
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
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
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
      Q => Trame_DCC(0),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => Trame_DCC(10),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => Trame_DCC(11),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => Trame_DCC(12),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => Trame_DCC(13),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => Trame_DCC(14),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => Trame_DCC(15),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => Trame_DCC(16),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => Trame_DCC(17),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => Trame_DCC(18),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => Trame_DCC(19),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => Trame_DCC(1),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => Trame_DCC(20),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => Trame_DCC(21),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => Trame_DCC(22),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => Trame_DCC(23),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => Trame_DCC(24),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => Trame_DCC(25),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => Trame_DCC(26),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => Trame_DCC(27),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => Trame_DCC(28),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => Trame_DCC(29),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => Trame_DCC(2),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => Trame_DCC(30),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => Trame_DCC(31),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => Trame_DCC(3),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => Trame_DCC(4),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => Trame_DCC(5),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => Trame_DCC(6),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => Trame_DCC(7),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => Trame_DCC(8),
      R => S_AXI_ARESET
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => Trame_DCC(9),
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
      Q => Trame_DCC(32),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => Trame_DCC(42),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => Trame_DCC(43),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => Trame_DCC(44),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => Trame_DCC(45),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => Trame_DCC(46),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => Trame_DCC(47),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => Trame_DCC(48),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => Trame_DCC(49),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => Trame_DCC(50),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => Trame_DCC(33),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => Trame_DCC(34),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => S_AXI_ARESET
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => Trame_DCC(35),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => Trame_DCC(36),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => Trame_DCC(37),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => Trame_DCC(38),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => Trame_DCC(39),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => Trame_DCC(40),
      R => S_AXI_ARESET
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => Trame_DCC(41),
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
      Q => slv_reg3(0),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => S_AXI_ARESET
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => S_AXI_ARESET
    );
top0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TOP
     port map (
      SORTIE_DCC => SORTIE_DCC,
      SR(0) => S_AXI_ARESET,
      Trame_DCC(50 downto 0) => Trame_DCC(50 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SORTIE_DCC : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_v1_0 is
begin
DCC_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_v1_0_S00_AXI
     port map (
      SORTIE_DCC => SORTIE_DCC,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    SORTIE_DCC : out STD_LOGIC;
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DCC_DCC_0_0,DCC_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DCC_v1_0,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
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
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCC_v1_0
     port map (
      SORTIE_DCC => SORTIE_DCC,
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
end STRUCTURE;
