----------------------------------------------------------------------------------
-- Company: UPMC
-- Engineer: Julien Denoulet
-- 
-- Create Date:   	Juin 2017 
-- Module Name:    	TB_Top - Behavioral 
-- Project Name: 		TP1 - FPGA1
-- Target Devices: 	Nexys4 / Artix7

-- XDC File:			Aucun					
-- Description: Testbench du Top-Level
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

entity TB_Top is
--  Port ( );
end TB_Top;

architecture Behavioral of TB_Top is

signal Clk : STD_LOGIC:='0';				-- Horloge
signal Reset : STD_LOGIC:='0';				-- Reset Asynchrone
signal Button_L : STD_LOGIC:='0';			-- Bouton Left --> Incrémentation du Compteur
signal Button_C : STD_LOGIC:='0';			-- Bouton Center --> Décrémentation du Compteur 
signal Button_R : STD_LOGIC:='0';			-- Bouton Right --> Mise à Jour des LEDs
signal LED : STD_LOGIC_VECTOR (3 downto 0); -- LEDs


begin

-- Instanciation du Composant YOP
l0: entity work.top
port map(
    Clk => Clk,
    Reset => Reset,
    Button_L => Button_L,
    Button_R => Button_R,
    Button_C => Button_C,
    LED => LED);


-- Gestion de l'Horloge et du Reset Asynchrone
Clk <= not Clk after 5 ns;
Reset <= '1', '0' after 2 ns;

-- Déroulement de la Simulation
    -- 1 Appui sur le Bouton Center (Selection Mode 3 --> LED allumées)
    -- 1 Appui sur le Bouton Right (Validation du Mode 3)
    -- 4 Appuis sur le Bouton Left (Sélection Mode 1 --> LEd clignotent)
    -- 1 Appui sur le Bouton Right (Validation du Mode 1)

Button_C <= '1' after 1 ms, '0' after 2 ms;

Button_R <= '1' after 10 ms, '0' after 11 ms,
            '1' after 606 ms, '0' after 607 ms;

Button_L <= '1' after 156 ms, '0' after 157 ms,
            '1' after 270 ms, '0' after 271 ms,
            '1' after 380 ms, '0' after 381 ms,
            '1' after 490 ms, '0' after 491 ms;

end Behavioral;
