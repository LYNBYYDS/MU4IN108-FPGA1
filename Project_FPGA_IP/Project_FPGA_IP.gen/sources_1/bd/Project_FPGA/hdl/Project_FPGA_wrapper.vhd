--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Tue Apr 18 18:16:43 2023
--Host        : SUMarc running 64-bit major release  (build 9200)
--Command     : generate_target Project_FPGA_wrapper.bd
--Design      : Project_FPGA_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Project_FPGA_wrapper is
  port (
    SORTIE_DCC : out STD_LOGIC;
    bp_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    led_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    sw_tri_i : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sys_clock : in STD_LOGIC
  );
end Project_FPGA_wrapper;

architecture STRUCTURE of Project_FPGA_wrapper is
  component Project_FPGA is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    SORTIE_DCC : out STD_LOGIC;
    led_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bp_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sw_tri_i : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component Project_FPGA;
begin
Project_FPGA_i: component Project_FPGA
     port map (
      SORTIE_DCC => SORTIE_DCC,
      bp_tri_i(4 downto 0) => bp_tri_i(4 downto 0),
      led_tri_o(15 downto 0) => led_tri_o(15 downto 0),
      reset => reset,
      sw_tri_i(14 downto 0) => sw_tri_i(14 downto 0),
      sys_clock => sys_clock
    );
end STRUCTURE;
