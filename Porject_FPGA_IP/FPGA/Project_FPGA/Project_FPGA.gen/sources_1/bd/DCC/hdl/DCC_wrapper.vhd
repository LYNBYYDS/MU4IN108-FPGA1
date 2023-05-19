--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Wed May 10 12:40:08 2023
--Host        : SUMarc running 64-bit major release  (build 9200)
--Command     : generate_target DCC_wrapper.bd
--Design      : DCC_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCC_wrapper is
  port (
    SEG : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SEL_SEG : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SORTIE_DCC : out STD_LOGIC;
    bp_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    led_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    sw_tri_i : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sys_clock : in STD_LOGIC
  );
end DCC_wrapper;

architecture STRUCTURE of DCC_wrapper is
  component DCC is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    SEG : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SEL_SEG : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bp_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    led_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sw_tri_i : in STD_LOGIC_VECTOR ( 14 downto 0 );
    SORTIE_DCC : out STD_LOGIC
  );
  end component DCC;
begin
DCC_i: component DCC
     port map (
      SEG(7 downto 0) => SEG(7 downto 0),
      SEL_SEG(3 downto 0) => SEL_SEG(3 downto 0),
      SORTIE_DCC => SORTIE_DCC,
      bp_tri_i(4 downto 0) => bp_tri_i(4 downto 0),
      led_tri_o(15 downto 0) => led_tri_o(15 downto 0),
      reset => reset,
      sw_tri_i(14 downto 0) => sw_tri_i(14 downto 0),
      sys_clock => sys_clock
    );
end STRUCTURE;
