----------------------------------------------------------------------------------
-- Company: SORBONNE UNIVERSITE
-- Designed by: J.DENOULET, Winter 2021
--
-- Module Name: DCC_FRAME_GENERATOR - Behavioral
-- Project Name: Centrale DCC
-- Target Devices: NEXYS 4 DDR
-- 
--	Générateur de Trames de Test pour la Centrale DCC
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DCC_FRAME_GENERATOR is
    Port ( Interrupteur	: in STD_LOGIC_VECTOR(7 downto 0);						-- Interrupteurs de la Carte
           Trame_DCC 	: out STD_LOGIC_VECTOR(50 downto 0));					-- Trame DCC de Test					
end DCC_FRAME_GENERATOR;

architecture Behavioral of DCC_FRAME_GENERATOR is

signal adresse_s : std_logic_vector(7 downto 0);								-- Adresse of the train
signal speed_s : std_logic_vector(4 downto 0); 									-- Speed of the train

-- Constant for trame
	constant preamble_14bit : std_logic_vector(13 downto 0) := (others => '1');		-- Preable of the signal 14 bits of '1'
	constant preamble_23bit : std_logic_vector(22 downto 0) := (others => '1');		-- Preable of the signal 23 bits of '1'
	constant start_bit : std_logic := '0';											-- Start bit = '0'
	constant stop_bit : std_logic := '1';											-- Stop bit = '1'

-- Command configuration
	-- Speed configuration
		constant flag_change_speed : std_logic_vector(1 downto 0) := "01";			-- Change speed of train
		constant flag_move_forward : std_logic := '1';								-- Direction of train foward
		constant flag_move_backward : std_logic := '0';								-- Direction of train backward
		constant flag_stop_move : std_logic_logic(5 downto 0) := (others => '0');	-- Train stop
	-- F0 light ON/OFF
		constant flag_change_F4_2_F0 : std_logic_vector(2 downto 0) := "100" 			-- Light state change
		constant flag_light_on : std_logic := '1';									-- Light on
		constant flag_light_off : std_logic := '0';									-- Light off
	-- F1-3 temporory not used
		constant flag_F4_2_F1_off : std_logic_vector (3 downto 0) := (others => '0');
		-- normally one bit par function
	-- F5-8 temporory not used
	-- F9-12
		constant flag_change_F12_2_F9 : std_logic_vector(3 downto 0) := 0x"A"; 			-- Change F9-F12 1010	
		constant flag_klaxon_on : std_logic := '1';										-- Klaxon on
		constant flag_klaxon_off : std_logic := '0';									-- Klaxon off
		constant flag_F11_2_F9__off : std_logic_vector(2 downto 0) := (others => '0');
	-- F13-20
		constant flag_change_F20_2_F13 : std_logic_vector(3 downto 0) := 0x"DE"; 		-- Change F13-F20 1101 1110 
		constant flag_F20_2_F14__off : std_logic_vector(6 downto 0) := (others => '0');
		constant flag_anonceFR1_on : std_logic_vector(2 downto 0) := (others => '0');	-- Anounce FR #1 on
		constant flag_anonceFR1_off : std_logic_vector(2 downto 0) := (others => '0');	-- Anounce FR #1 off
		
begin

-- Génération d'une Trame selon l'Interrupteur Tiré vers le Haut
-- Si Plusieurs Interupteurs Sont Tirés, Celui de Gauche Est Prioritaire

-- Compléter les Trames pour Réaliser les Tests Voulus

process(Interrupteur)
begin

	-- Interrupteur 7 Activé
		--> Trame Marche Avant du Train d'Adresse i
	if Interrupteur(7)='1' then
	
		Trame_DCC <= 	preamble_23bit															-- Préambule
						& start_bit																-- Start Bit
						& adresse_s																-- Champ Adresse
						& start_bit																-- Start Bit
						& flag_change_speed & flag_move_forward & speed_s						-- Champ Commande
						& start_bit																-- Start Bit
						& (adresse_s xor (flag_change_speed & flag_forward & speed_s))			-- Champ Contrôle
						& stop_bit;																-- Stop Bit

	-- Interrupteur 6 Activé
		--> Trame Marche Arrière du Train d'Adresse i
	elsif Interrupteur(6)='1' then
	
		Trame_DCC <= 	preamble_23bit															-- Préambule
						& start_bit																-- Start Bit
						& adresse_s																-- Champ Adresse
						& start_bit																-- Start Bit
						& flag_change_speed & flag_move_backward & speed_s						-- Champ Commande
						& start_bit																-- Start Bit
						& (adresse_s xor (flag_change_speed & flag_move_backward & speed_s))	-- Champ Contrôle
						& stop_bit;																-- Stop Bit


	-- Interrupteur 5 Activé
		--> Allumage des Phares du Train d'Adresse i
	elsif Interrupteur(5)='1' then
	
		Trame_DCC <= 	preamble_23bit																	-- Préambule
						& start_bit																		-- Start Bit
						& adresse_s																		-- Champ Adresse
						& start_bit																		-- Start Bit
						& flag_change_F4_2_F0 & flag_light_on & flag_F4_2_F1_off						-- Champ Commande
						& start_bit																		-- Start Bit
						& (adresse_s xor (flag_change_light & flag_light_on & flag_F4_2_F1_off))		-- Champ Contrôle
						& stop_bit;																		-- Stop Bit

	-- Interrupteur 4 Activé
		--> Extinction des Phares du Train d'Adresse i
	elsif Interrupteur(4)='1' then
	
		Trame_DCC <= 	preamble_23bit																	-- Préambule
						& start_bit																		-- Start Bit
						& adresse_s																		-- Champ Adresse
						& start_bit																		-- Start Bit
						& flag_change_F4_2_F0 & flag_light_off & flag_F4_2_F1_off						-- Champ Commande
						& start_bit																		-- Start Bit
						& (adresse_s xor (flag_change_light & flag_light_off & flag_F4_2_F1_off))		-- Champ Contrôle
						& stop_bit;																		-- Stop Bit

	-- Interrupteur 3 Activé
		--> Activation du Klaxon (Fonction F11) du Train d'Adresse i
	elsif Interrupteur(3)='1' then
	
		Trame_DCC <= 	preamble_23bit																	-- Préambule
						& start_bit																		-- Start Bit
						& adresse_s																		-- Champ Adresse
						& start_bit																		-- Start Bit
						& flag_change_F12_2_F9 & flag_klaxon_on & flag_F11_2_F9__off					-- Champ Commande
						& start_bit																		-- Start Bit
						& (adresse_s xor (flag_change_F12_2_F9 & flag_klaxon_on & flag_F11_2_F9__off))	-- Champ Contrôle
						& stop_bit;																		-- Stop Bit

	-- Interrupteur 2 Activé
		--> Réamorçage du Klaxon (Fonction F11) du Train d'Adresse i
	elsif Interrupteur(2)='1' then
	
		Trame_DCC <= 	preamble_23bit																	-- Préambule
						& start_bit																		-- Start Bit
						& adresse_s																		-- Champ Adresse
						& start_bit																		-- Start Bit
						& flag_change_F12_2_F9 & flag_klaxon_off & flag_F11_2_F9__off					-- Champ Commande
						& start_bit																		-- Start Bit
						& (adresse_s xor (flag_change_F12_2_F9 & flag_klaxon_off & flag_F11_2_F9__off))	-- Champ Contrôle
						& stop_bit;																		-- Stop Bit

	-- Interrupteur 1 Activé
		--> Annonce SNCF (Fonction F13) du Train d'Adresse i
	elsif Interrupteur(1)='1' then
	
		Trame_DCC <= 	preamble_14bit																				-- Préambule
						& start_bit																					-- Start Bit
						& adresse_s																					-- Champ Adresse
						& start_bit																					-- Start Bit
						& flag_change_F20_2_F13																		-- Champ Commande (Octet 1)
						& start_bit																					-- Start Bit
						& flag_F20_2_F14_off & flag_anonceFR1_on													-- Champ Commande (Octet 2)
						& start_bit																					-- Start Bit
						& (adresse_s xor flag_change_F20_2_F13 xor (flag_F20_2_F14_off & flag_anonceFR1_on))		-- Champ Contrôle
						& stop_bit	;																				-- Stop Bit

	-- Interrupteur 0 Activé
		--> Annonce SNCF (Fonction F13) du Train d'Adresse i        	-- off  Question?
	elsif Interrupteur(0)='1' then
	
		Trame_DCC <= 	preamble_14bit																				-- Préambule
						& start_bit																					-- Start Bit
						& adresse_s																					-- Champ Adresse
						& start_bit																					-- Start Bit
						& flag_change_F20_2_F13																		-- Champ Commande (Octet 1)
						& start_bit																					-- Start Bit
						& flag_F20_2_F14_off & flag_anonceFR1_off													-- Champ Commande (Octet 2)
						& start_bit																					-- Start Bit
						& (adresse_s xor flag_change_F20_2_F13 xor (flag_F20_2_F14_off & flag_anonceFR1_off))		-- Champ Contrôle
						& stop_bit	;																				-- Stop Bit

	-- Aucun Interrupteur Activé
		--> Arrêt du Train d'Adresse i
	else 
	
		Trame_DCC <= 	preamble_23bit													-- Préambule
						& start_bit														-- Start Bit
						& adresse_s														-- Champ Adresse
						& start_bit														-- Start Bit
						& flag_change_speed & flag_stop_move							-- Champ Commande
						& start_bit														-- Start Bit
						& adresse_s xor (flag_change_speed & flag_stop_move)			-- Champ Contrôle
						& stop_bit;														-- Stop Bit
	
end process;


end Behavioral;

