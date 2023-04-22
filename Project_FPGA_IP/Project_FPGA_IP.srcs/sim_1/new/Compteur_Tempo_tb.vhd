----------------------------------------------------------------------------------
-- Company: UPMC
-- Engineer: YongLI & MarcZHAN
-- 
-- Create Date: 21.03.2023 11:45:36
-- Design Name: 
-- Module Name: Compteur_Tempo_tb - Behavioral
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

entity Compteur_Tempo_tb is
--  Port ( );
end Compteur_Tempo_tb;

architecture Behavioral of Compteur_Tempo_tb is

component COMPTEUR_TEMPO is 
    Port (  Clk 			: in STD_LOGIC;	   -- Horloge 100 MHz
            Reset 		: in STD_LOGIC;		   -- Reset Asynchrone
            Clk1M 		: in STD_LOGIC;		   -- Horloge 1 MHz
            Start_Tempo	: in STD_LOGIC;		   -- Commande de Démarrage de la Temporisation
            Fin_Tempo	: out STD_LOGIC		   -- Drapeau de Fin de la Temporisation
            );
end component;

signal Clk_s : std_logic := '0';            -- Horloge input signal 100Mhz
signal Reset_s : std_logic := '1';          -- Reset Asynchrone signal
signal Clk1M_s : std_logic := '0';          -- Horloge input signal 1Mhz
signal Start_Tempo_s : std_logic := '0';	-- Command to start Tempo
signal Fin_Tempo_s : std_logic;             -- Flag if Tempo finish
            
begin

    -- Component COMPTEUR_TEMPO 
    COMPTEUR_TEMPO_1 : COMPTEUR_TEMPO
    port map (  Clk => Clk_s,
                Reset => Reset_s,
                Clk1M => Clk1M_s,
                Start_Tempo	=> Start_Tempo_s,
                Fin_Tempo => Fin_Tempo_s);

    -- Inverse the signal horloge
    Clk_s <= not Clk_s after 1 ns;
    Clk1M_s <= not Clk1M_s after 5 ns;

    -- Reset off 
    Reset_s <= '0' after 20 ns;
    
    -- Start flag set 
    Start_Tempo_s <= '1' after 100 ns, '0' after 200 ns, '1' after 70000 ns, '0' after 70100 ns;
end Behavioral;
