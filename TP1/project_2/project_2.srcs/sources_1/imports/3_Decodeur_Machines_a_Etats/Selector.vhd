----------------------------------------------------------------------------------
-- Company: UPMC
-- Engineer: Julien Denoulet
-- 
-- Create Date:   	Septembre 2016 
-- Module Name:    	Selector - Behavioral 
-- Project Name: 		TP1 - FPGA1
-- Target Devices: 	Nexys4 / Artix7

-- XDC File:			Impulse_Selector.xdc					

-- Description: Décodeur - Version KO
--
--		Génère en Sortie une Valeur "Limit"
--			- Cette Valeur Depend de Celle d'un Signal d'Entree sur 4 Bits (Count)
--			- Limit Est Remise à Jour A Chaque Appui sur le Bouton Right
--			- Limit Sera Utilisée par une Machine à Etats dans la Suite du TP...
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Selector is
    Port (  Clk : in  STD_LOGIC;									-- Horloge
            Reset : in  STD_LOGIC;								    -- Reset Asynchrone
            Button_R: in STD_LOGIC;								    -- Bouton Right
			Count : in  STD_LOGIC_VECTOR (3 downto 0);		        -- Compteur d'Entree
            Sup : in  STD_LOGIC;									-- Valeur Seuil
            Limit : out  STD_LOGIC_VECTOR (27 downto 0));	        -- Valeur Limite
end Selector;


architecture Behavioral of Selector is

signal Decode: std_logic_vector(1 downto 0); -- Commande du Decodeur


begin

	-------------------------
	-- Gestion du Décodeur --
	-------------------------
	process(Clk,Reset)
	
	begin
	
		-- Reset Asynchrone
		if Reset = '1' then Limit <= (others =>'0');
		
		-- Si On A un Front d'Horloge
		elsif rising_edge (Clk) then

			-- Si On Appuie sur le Bouton Right 
			if Button_R = '1' then

				-- Signification de Limit (Pour la Machine a Etats de la Suite du TP)
					-- Les 2 MSB définissent le Mode de Clignotement
						-- 00 --> 	LEDs Toujours Eteintes
						-- 10 --> 	Clignotement des LEDs 
						--			 	La Fréquence de Clignotement 
						--			 	Depend des LSB de Limit
						--					- 24 Millions --> 1 fois par Seconde
						--					- 8 Millions --> 3 fois par Seconde
						-- 11	-->	LEDs Toujours Allumées
				
				case (Decode) is
			
					when "00" => Limit <= (others => '0');
					when "01" => Limit <= X"96E3600";		-- 24 000 000 en Décimal
					when "10" => Limit <= X"87A1200";		-- 8 000 000 en Décomal
					when "11" => Limit <= (others => '1');	
	
					-- when others => NULL; -- RETIRER LE COMMENTAIRE POUR CORRIGER L'ERREUR
	
				end case;
			end if;
		end if;

	end process;

	--------------------------
	-- Commande du Decodeur --
	--------------------------
	Decode <= 		"11" when Sup='1'		-- Si Count > 9 		 --> Decode = 11
				 else	"10" when Count > 5	-- Si Count = 6,7,8,9 --> Decode = 10
				 else "01" when Count > 2;	-- Si Count = 3,4,5   --> Decode = 01
											-- Si Count = 0,1,2   --> Decode = 00
	
end Behavioral;

