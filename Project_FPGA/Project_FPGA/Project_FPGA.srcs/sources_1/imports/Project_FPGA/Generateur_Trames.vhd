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
    Port ( Interrupteur	: in STD_LOGIC_VECTOR(7 downto 0);	-- Interrupteurs de la Carte
           Trame_DCC 	: out STD_LOGIC_VECTOR(50 downto 0));					-- Trame DCC de Test					
end DCC_FRAME_GENERATOR;

architecture Behavioral of DCC_FRAME_GENERATOR is

begin

-- Génération d'une Trame selon l'Interrupteur Tiré vers le Haut
-- Si Plusieurs Interupteurs Sont Tirés, Celui de Gauche Est Prioritaire

-- Compléter les Trames pour Réaliser les Tests Voulus

process(Interrupteur)
begin
	
	-- Interrupteur 7 Activé
		--> Trame Marche Avant du Train d'Adresse i
	if Interrupteur(7)='1' then
	
		Trame_DCC <= 				-- Préambule
					& 				-- Start Bit
					&				-- Champ Adresse
					& 				-- Start Bit
					&				-- Champ Commande
					& 				-- Start Bit
					& 				-- Champ Contrôle
					& 	;			-- Stop Bit

	-- Interrupteur 6 Activé
		--> Trame Marche Arrière du Train d'Adresse i
	elsif Interrupteur(6)='1' then
	
		Trame_DCC <= 				-- Préambule
					& 				-- Start Bit
					&				-- Champ Adresse
					& 				-- Start Bit
					&				-- Champ Commande
					& 				-- Start Bit
					& 				-- Champ Contrôle
					& 	;			-- Stop Bit


	-- Interrupteur 5 Activé
		--> Allumage des Phares du Train d'Adresse i
	elsif Interrupteur(5)='1' then
	
		Trame_DCC <= 				-- Préambule
					& 				-- Start Bit
					&				-- Champ Adresse
					& 				-- Start Bit
					&				-- Champ Commande
					& 				-- Start Bit
					& 				-- Champ Contrôle
					& 	;			-- Stop Bit

	-- Interrupteur 4 Activé
		--> Extinction des Phares du Train d'Adresse i
	elsif Interrupteur(4)='1' then
	
		Trame_DCC <= 				-- Préambule
					& 				-- Start Bit
					&				-- Champ Adresse
					& 				-- Start Bit
					&				-- Champ Commande
					& 				-- Start Bit
					& 				-- Champ Contrôle
					& 	;			-- Stop Bit

	-- Interrupteur 3 Activé
		--> Activation du Klaxon (Fonction F11) du Train d'Adresse i
	elsif Interrupteur(3)='1' then
	
		Trame_DCC <= 				-- Préambule
					& 				-- Start Bit
					&				-- Champ Adresse
					& 				-- Start Bit
					&				-- Champ Commande
					& 				-- Start Bit
					& 				-- Champ Contrôle
					& 	;			-- Stop Bit

	-- Interrupteur 2 Activé
		--> Réamorçage du Klaxon (Fonction F11) du Train d'Adresse i
	elsif Interrupteur(2)='1' then
	
		Trame_DCC <= 				-- Préambule
					& 				-- Start Bit
					&				-- Champ Adresse
					& 				-- Start Bit
					&				-- Champ Commande
					& 				-- Start Bit
					& 				-- Champ Contrôle
					& 	;			-- Stop Bit

	-- Interrupteur 1 Activé
		--> Annonce SNCF (Fonction F13) du Train d'Adresse i
	elsif Interrupteur(1)='1' then
	
		Trame_DCC <= 				-- Préambule
					& 				-- Start Bit
					&				-- Champ Adresse
					& 				-- Start Bit
					&				-- Champ Commande (Octet 1)
					& 				-- Start Bit
					&				-- Champ Commande (Octet 2)
					& 				-- Start Bit
					& 				-- Champ Contrôle
					& 	;			-- Stop Bit

	-- Interrupteur 0 Activé
		--> Annonce SNCF (Fonction F13) du Train d'Adresse i
	elsif Interrupteur(0)='1' then
	
		Trame_DCC <= 				-- Préambule
					& 				-- Start Bit
					&				-- Champ Adresse
					& 				-- Start Bit
					&				-- Champ Commande (Octet 1)
					& 				-- Start Bit
					&				-- Champ Commande (Octet 2)
					& 				-- Start Bit
					& 				-- Champ Contrôle
					& 	;			-- Stop Bit

	-- Aucun Interrupteur Activé
		--> Arrêt du Train d'Adresse i
	else 
	
		Trame_DCC <= 				-- Préambule
					& 				-- Start Bit
					&				-- Champ Adresse
					& 				-- Start Bit
					&				-- Champ Commande
					& 				-- Start Bit
					& 				-- Champ Contrôle
					& 	;			-- Stop Bit
	
end process;

end Behavioral;

