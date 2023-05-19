----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2023 09:10:59
-- Design Name: 
-- Module Name: DCC_Bit0_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DCC_Bit0_tb is
--  Port ( );
end DCC_Bit0_tb;

architecture Behavioral of DCC_Bit0_tb is

component DCC_Bit0 is
    Port ( Clk 			: in std_logic;		-- Horloge 100 MHz
           Reset 		: in std_logic;		-- Reset Asynchrone
           Clk1M 		: in std_logic;		-- Horloge 1 MHz
           GO_0	        : in std_logic;		-- Commande de D?marrage de la Temporisation
           FIN_0	    : out std_logic		-- Drapeau de Fin de la Temporisation
		);
end component;

signal Clk_s : std_logic := '0';            -- Horloge input signal 100Mhz
signal Reset_s : std_logic := '1';          -- Reset Asynchrone signal
signal Clk1M_s : std_logic := '0';          -- Horloge input signal 1Mhz
signal GO_0_s : std_logic := '0';	-- Command to start Tempo
signal FIN_0_s : std_logic;             -- Flag if Tempo finish

begin

    -- Component DCC_Bit0 
    DCC_Bit0_1 : DCC_Bit0
    port map (  Clk => Clk_s,
                Reset => Reset_s,
                Clk1M => Clk1M_s,
                GO_0 => GO_0_s,
                FIN_0 => FIN_0_s);

    -- Inverse the signal horloge
    Clk_s <= not Clk_s after 1 ns;
    Clk1M_s <= not Clk1M_s after 5 ns;

    -- Reset off 
    Reset_s <= '0' after 20 ns;
    
    -- Start flag set 
    GO_0_s <= '1' after 25 ns, '0' after 30 ns;
end Behavioral;

