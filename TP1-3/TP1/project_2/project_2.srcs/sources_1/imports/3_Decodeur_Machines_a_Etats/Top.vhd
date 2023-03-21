----------------------------------------------------------------------------------
-- Company: UPMC
-- Engineer: Julien Denoulet
-- 
-- Create Date:   	September 
-- Module Name:    	Top - Behavioral 
-- Project Name: 		TP1 - FPGA1
-- Target Devices: 	Nexys4/Artix7

-- XDC File:			Top.xdc					

-- Description: Top Level - Version Correcte
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top is
    Port ( Clk : in  STD_LOGIC;								-- Horloge
           Reset : in  STD_LOGIC;							-- Reset Asynchrone
           Button_L : in  STD_LOGIC;						-- Bouton Left --> Incr�mentation du Compteur
           Button_C : in  STD_LOGIC;						-- BOuton Center --> D�cr�mentation du Compteur 
           Button_R : in  STD_LOGIC;						-- Bouton Right --> Mise � Jour des LEDs
           LED : out  STD_LOGIC_VECTOR (3 downto 0);
           Count_out : out std_logic_vector(3 downto 0);
           Mode_out : out std_logic_vector(1 downto 0));
end Top;

architecture Behavioral of Top is

signal Mode: std_logic_vector(1 downto 0);
signal Seuil: std_logic_vector(25 downto 0);
signal Limit: std_logic_vector(27 downto 0);
signal Sup : STD_LOGIC;
signal Count : STD_LOGIC_VECTOR (3 downto 0);

begin
Count_out <= Count;
Mode_out <= Mode;
-----------------------------------------------------------------
--																					--
--		Les Boutons Left et Center Font Varier un Compteur Modulo 16		--
--			(cf. Module Impulse_Count)	
--																					--
--			- 	La Valeur du Compteur Fixe 								--
--				le Mode de Fonctionnement des LEDs						--
--																					--
--			- Cpt = 0,1,2 		-->	LEDs Eteintes						--
--											Mode = 00 / Seuil = 0			-- 
--																					--
--			- Cpt = 3,4,5 		-->	LEDs Clignotement					--
--											Mode = 01 / Seuil = 24 M		-- 
--											Clignotement 1x par seconde	--																					
--																					--
--			- Cpt = 6,7,8,9 	-->	LEDs Clignotement					--
--											Mode = 10 / Seuil = 8 M			-- 
--											Clignotement 3x par seconde	--																					
--																					--
--			- Cpt > 9			-->	LEDs Allum�es						--
--											Mode = 11 / Seuil = 0xFFFFFF	-- 
--																					--
--																					--
--		Le Mode des LEDs Est Valid� par l'Appui sur le Bouton Right	--

--		La Valeur du Mode et du Seuil Sont Fix�s dans le Module Selector
--		La Machine � Etats G�re le Comportement des LEDs
--																					--
-----------------------------------------------------------------


-- Affectation des Valeurs de Mode et Seuil 
--		Calcul�es � Partir de Limit (Selector)
Mode <= Limit(27 downto 26);
Seuil <= Limit (25 downto 0);


   -- Compteur d'Impulsions
   Impulse: entity work.IMPULSE_COUNT PORT MAP (
          Clk => Clk,				-- Horloge
			 Reset => Reset,			-- Reset Asynchrone
          Button_L => Button_L,	-- Bouton Left (Incr�mentation Compreur)
          Button_C => Button_C,	-- Bouton Right (D�cr�mentation Compteur)
          Count => Count,			-- Compteur Modulo 16
          Sup => Sup					-- Indicateur Compteur > 9
        );

	-- Selector
	Sel: entity work.Selector PORT MAP (
          Clk => Clk,				-- Horloge
          Reset => Reset,			-- Reset Asynchrone
          Button_R => Button_R,	-- Bouton Right (Validation Mode LEDs)
          Count => Count,			-- Compteur Modulo 16
          Sup => Sup,				-- Indicateur Compteur > 9
          Limit => Limit			-- Mode de Fonctionnement des LEDs
											--	(Transf�r� vers Mode et Seuil)
        );

	
	-- MAchine � Etats
	MAE: entity work.FSM PORT MAP(
			Clk => Clk,					-- Horloge
			Reset => Reset,			-- Reset Asynchrone
         Mode => Mode,				-- Mode Fonctionnement LEDs
			Seuil => Seuil,			-- Seuil pour Vitesse Clignotement LEDs
			LED => LED					-- Etat des LEDs
		);


end Behavioral;

