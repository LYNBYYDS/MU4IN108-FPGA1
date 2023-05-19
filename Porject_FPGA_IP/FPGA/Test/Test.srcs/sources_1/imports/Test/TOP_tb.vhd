----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2023 09:30:43
-- Design Name: 
-- Module Name: top_ip_tb - Behavioral
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

entity TOP_tb is
--  Port ( );
end TOP_tb;

architecture Behavioral of TOP_tb is

component TOP is 
    Port (  Clk 		        : in std_logic;		-- Horloge 100 MHz
            Reset 		        : in std_logic;		-- Reset Asynchrone
            Trame_DCC           : in std_logic_vector(50 downto 0);	    -- Trame DCC
            SORTIE_DCC          : out std_logic       -- Bit sent     
            );
end component;

signal Clk_s : std_logic := '0';		-- Horloge 100 MHz
signal Reset_s : std_logic := '1';		-- Reset Asynchrone
signal trame_s : STD_LOGIC_VECTOR(50 downto 0):= (others =>'0');
signal SORTIE_DCC_s : std_logic;       -- Bit sent 

begin

    -- Component COMPTEUR_TEMPO 
    TOP_0 : TOP
    port map (  Clk => Clk_s,
                Reset => Reset_s,
                Trame_DCC => trame_s,
                SORTIE_DCC => SORTIE_DCC_s);
 -- Inverse the signal horloge
6Clk_s <= not Clk_s after 1 ns;
-- Reset off 
    Reset_s <= '0' after 20 ns;

    
    trame_s <= "101010101010101010101010101010101010101010101010111" after 10 ns;


end Behavioral;
