----------------------------------------------------------------------------------
-- Company: UPMC
-- Engineer: YongLI & MarcZHAN
-- 
-- Create Date: 22.03.2023 18:02:24
-- Design Name: 
-- Module Name: Generateur_Trames_tb - Behavioral
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

entity Generateur_Trames_tb is
--  Port ( );
end Generateur_Trames_tb;

architecture Behavioral of Generateur_Trames_tb is

component DCC_FRAME_GENERATOR is 
    Port ( Interrupteur	: in STD_LOGIC_VECTOR(7 downto 0);						-- Interrupteurs de la Carte
           Trame_DCC 	: out STD_LOGIC_VECTOR(50 downto 0));					-- Trame DCC de Test
end component;

signal Interrupteur_s : std_logic_vector(7 downto 0) := (others => 'U');
signal Trame_DCC_s : std_logic_vector(50 downto 0);

begin
    
    -- Component DCC_FRAME_GENERATOR 
    DCC_FRAME_GENERATOR_tb : DCC_FRAME_GENERATOR
    port map (  Interrupteur => Interrupteur_s,
                Trame_DCC => Trame_DCC_s);

    Interrupteur_s <= "00000000" after 5 ns, "00000001" after 10 ns, "00000010" after 15 ns, "00000100" after 20 ns, "00001000" after 25 ns, "00010000" after 30 ns, "00100000" after 35 ns, "01000000" after 40 ns, "10000000" after 45 ns, "00000000" after 50 ns;

end Behavioral;
