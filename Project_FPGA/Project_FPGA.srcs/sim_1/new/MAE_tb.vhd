----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2023 10:32:26
-- Design Name: 
-- Module Name: MAE_tb - Behavioral
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

entity MAE_tb is
--  Port ( );
end MAE_tb;

architecture Behavioral of MAE_tb is

component MAE is 
    Port ( Clk 			    : in std_logic;		-- Horloge 100 MHz
           Clk1M 		: in std_logic;		-- Horloge 1 MHz
           Reset 		    : in std_logic;		-- Reset Asynchrone
           Reset_Tempo : out std_logic;	
           Start_Tempo	: out std_logic;		-- Commande de Démarrage de la Temporisation
           Fin_Tempo	: in std_logic;		-- Drapeau de Fin de la Temporisation
           Reset_DDC0 : out std_logic;
           GO_0	        : out std_logic;		-- Commande de D?marrage de la Temporisation
           FIN_0	    : in std_logic;		-- Drapeau de Fin de la Temporisation
           Reset_DDC1 : out std_logic;
           GO_1	        : out std_logic;		-- Commande de D?marrage de la Temporisation
           FIN_1	    : in std_logic;		-- Drapeau de Fin de la Temporisation
           Com_REG : out std_logic_vector(1 downto 0);          -- Command for register
           Bit_out : in std_logic;                             -- Bit send to MAE
           start : in std_logic 
		);
end component;

signal Clk_s : std_logic := '0';
signal Clk1M_s : std_logic := '0';
signal Reset_s : std_logic := '1';
signal Reset_Tempo_s : std_logic;
signal Start_Tempo_s : std_logic;
signal Fin_Tempo_s : std_logic:= '0';
signal Reset_DDC0_s : std_logic;
signal GO_0_s : std_logic;
signal FIN_0_s : std_logic:= '0';
signal Reset_DDC1_s : std_logic;
signal GO_1_s : std_logic;
signal FIN_1_s : std_logic := '0';
signal Com_REG_s : std_logic_vector(1 downto 0);
signal Bit_out_s : std_logic := '1';
signal start_s : std_logic := '0';

begin

-- Component COMPTEUR_TEMPO 
    MAE_0 : MAE
    port map ( Clk => Clk_s,
               Clk1M => Clk1M_s,
               Reset => Reset_s,
               Reset_Tempo => Reset_Tempo_s,
               Start_Tempo => Start_Tempo_s,
               Fin_Tempo => Fin_Tempo_s,
               Reset_DDC0 => Reset_DDC0_s,
               GO_0 => GO_0_s,
               FIN_0 => FIN_0_s,
               Reset_DDC1 => Reset_DDC1_s,
               GO_1 => GO_1_s,
               FIN_1 => FIN_1_s,
               Com_REG => Com_REG_s,
               Bit_out => Bit_out_s,
               start => start_s);
               
    -- Inverse the signal horloge
    Clk_s <= not Clk_s after 1 ns;
    Clk1M_s <= not Clk1M_s after 5 ns;

    -- Reset off 
    Reset_s <= '0' after 20 ns;
    
    -- Start flag set 
    start_s <= '1' after 25 ns, '0' after 30 ns;
    
end Behavioral;
