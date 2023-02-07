-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Feb  7 11:40:38 2023
-- Host        : SE226-08 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/UserTP.PPI919.000/Desktop/project_1/project_1.sim/sim_1/synth/func/xsim/TB_impulse_count_func_synth.vhd
-- Design      : IMPULSE_COUNT
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IMPULSE_COUNT is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Button_L : in STD_LOGIC;
    Button_C : in STD_LOGIC;
    Count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Sup : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of IMPULSE_COUNT : entity is true;
end IMPULSE_COUNT;

architecture STRUCTURE of IMPULSE_COUNT is
  signal Button_C_IBUF : STD_LOGIC;
  signal Button_L_IBUF : STD_LOGIC;
  signal Clk_IBUF : STD_LOGIC;
  signal Clk_IBUF_BUFG : STD_LOGIC;
  signal Count_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Reset_IBUF : STD_LOGIC;
  signal Sup_OBUF : STD_LOGIC;
  signal button_C_S : STD_LOGIC;
  signal button_L_S : STD_LOGIC;
  signal \cpt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cpt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cpt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cpt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cpt[3]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cpt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cpt[2]_i_1\ : label is "soft_lutpair0";
begin
Button_C_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Button_C,
      O => Button_C_IBUF
    );
Button_L_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Button_L,
      O => Button_L_IBUF
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
\Count_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Count_OBUF(0),
      O => Count(0)
    );
\Count_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Count_OBUF(1),
      O => Count(1)
    );
\Count_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Count_OBUF(2),
      O => Count(2)
    );
\Count_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Count_OBUF(3),
      O => Count(3)
    );
Reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Reset,
      O => Reset_IBUF
    );
Sup_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Sup_OBUF,
      O => Sup
    );
Sup_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => Count_OBUF(2),
      I1 => Count_OBUF(1),
      I2 => Count_OBUF(3),
      O => Sup_OBUF
    );
button_C_S_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Reset_IBUF,
      O => p_0_in
    );
button_C_S_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => p_0_in,
      D => Button_C_IBUF,
      Q => button_C_S,
      R => '0'
    );
button_L_S_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => p_0_in,
      D => Button_L_IBUF,
      Q => button_L_S,
      R => '0'
    );
\cpt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Count_OBUF(0),
      O => \cpt[0]_i_1_n_0\
    );
\cpt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => Count_OBUF(0),
      I1 => Button_L_IBUF,
      I2 => button_L_S,
      I3 => Count_OBUF(1),
      O => \cpt[1]_i_1_n_0\
    );
\cpt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F708AE51"
    )
        port map (
      I0 => Count_OBUF(0),
      I1 => Button_L_IBUF,
      I2 => button_L_S,
      I3 => Count_OBUF(2),
      I4 => Count_OBUF(1),
      O => \cpt[2]_i_1_n_0\
    );
\cpt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B44"
    )
        port map (
      I0 => button_L_S,
      I1 => Button_L_IBUF,
      I2 => button_C_S,
      I3 => Button_C_IBUF,
      O => \cpt[3]_i_1_n_0\
    );
\cpt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFF4000B"
    )
        port map (
      I0 => button_L_S,
      I1 => Button_L_IBUF,
      I2 => Count_OBUF(0),
      I3 => Count_OBUF(1),
      I4 => Count_OBUF(3),
      I5 => Count_OBUF(2),
      O => \cpt[3]_i_2_n_0\
    );
\cpt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \cpt[3]_i_1_n_0\,
      CLR => Reset_IBUF,
      D => \cpt[0]_i_1_n_0\,
      Q => Count_OBUF(0)
    );
\cpt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \cpt[3]_i_1_n_0\,
      CLR => Reset_IBUF,
      D => \cpt[1]_i_1_n_0\,
      Q => Count_OBUF(1)
    );
\cpt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \cpt[3]_i_1_n_0\,
      CLR => Reset_IBUF,
      D => \cpt[2]_i_1_n_0\,
      Q => Count_OBUF(2)
    );
\cpt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \cpt[3]_i_1_n_0\,
      CLR => Reset_IBUF,
      D => \cpt[3]_i_2_n_0\,
      Q => Count_OBUF(3)
    );
end STRUCTURE;
