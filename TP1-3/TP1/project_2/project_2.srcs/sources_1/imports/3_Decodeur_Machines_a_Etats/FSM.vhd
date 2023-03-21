----------------------------------------------------------------------------------
-- Company: UPMC
-- Engineer: Julien Denoulet
-- 
-- Create Date:   	Septembre 2016 
-- Module Name:    	FSM - Behavioral 
-- Project Name: 		TP1 - FPGA1
-- Target Devices: 	Nexys4 / Artix7

-- XDC File:			Top.xdc					

-- Description: Machine � Etat - Version KO
--
--				Fixe le Comportement des LEDs (Allum�es/Eteintes/Clignotement)
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM is
    Port ( Clk : in  STD_LOGIC;									-- Horloge
           Reset : in  STD_LOGIC;								-- Reset Asynchrone
           Mode : in  STD_LOGIC_VECTOR (1 downto 0);		-- Mode d'Affichage des LEDs
           Seuil : in  STD_LOGIC_VECTOR (25 downto 0);	-- Seuil du Compteur pour Vitesse Clignotement
           LED : out  STD_LOGIC_VECTOR (3 downto 0));		-- Commande des LEDs
end FSM;

architecture Behavioral of FSM is

signal cpt: integer range 0 to 24000000;						-- Compteur de Temporisation

type etat is (LED_OFF, CLIGN_OFF, LED_ON, CLIGN_ON);		-- Etats de la MAE
signal EP,EF: etat;													-- Etat Pr�sent, Etat Futur

begin

	------------------------------------------
	-- Gestion du COmpteur de Temporisation --
	------------------------------------------
	process(Clk,Reset)
	
	begin
	
		-- Reset Asynchrone
		if Reset='1' then Cpt <= 0;
		
		-- Si on A un Front d'Horloge...
		elsif rising_edge(Clk) then
		
			-- Si On Est en Mode Clignotement, le Compteur s'Incr�mente
			if (EP = CLIGN_OFF) or (EP = CLIGN_ON) then
				Cpt <= Cpt + 1;
			-- Sinon, on Remet le Compteur � 0
			else
				Cpt <= 0;
			end if;
		end if;
	end process;
	
	
	---------------------------
	-- MAE - Registre d'Etat --
	---------------------------
	process(Clk,Reset)
	
	begin
	
		-- Reset Asynchrone
		if Reset = '1' then EP <= LED_OFF;
		
		-- Si on A un Front d'Horloge
		elsif rising_edge (Clk) then
		
			EP <= EF; -- Mise � Jour du Registre d'Etat
		end if;
	end process;
	
	
	----------------------------------------------
	-- MAE - Evolution des Etats et des Sorties --
	----------------------------------------------
	process(Cpt,EP,Mode,Seuil)
	
	begin
		
		LED <= "0000"; -- Par D�faut les LEDs Sont Eteintes
	
		-----------------------------------------------------------------
		-- 						Modes de Fonctionnement							--
		--																					--
		--		Mode = 00 	 --> LEDs Eteintes										--
		--		Mode = 01/10 --> LEDs Clignotent										--
		--							Vitesse de Clignotement D�pend de Seuil	--
		--		Mode = 11 	 --> LEDs Allum�es										--
		-----------------------------------------------------------------
				
		
		case (EP) is
		
			-- LEDs Eteintes
			-- On Reste dans Cet Etat Tant que Mode est � 00
			-- Si Mode Passe � 10, On Passe en LEDs Clignotement
			-- Si Mode Passe � 11, On Passe en LEDs Allum�es
			when LED_OFF	=>      if Mode = "10" then         EF <= CLIGN_OFF;
									elsif Mode = "11" then      EF <= LED_ON;
									else                        EF <= EP;
									end if;
									
			-- LEDs Clignotement - (Eteint)
			-- Le Compteur Compte Jusqu'au Seuil puis on Passe � l'Etat Suivant
			when CLIGN_OFF	=>      if Mode = "00" then                        EF <= LED_OFF;
									elsif Mode = "11" or Cpt = Seuil then      EF <= LED_ON;
									else                                       EF <= EP;
									end if;
									
			-- LEDs Allum�es
			-- On Reste dans Cet Etat Tant que Mode est � 11
			-- Si Mode Passe � 10, On Passe en LEDs Clignotement
			-- Si Mode Passe � 00, On Passe en LEDs Eteintes
			when LED_ON		=> LED <= "1111";
									if Mode = "10" then                        EF <= CLIGN_ON;
									elsif Mode = "00" then                     EF <= LED_OFF;
									else                                       EF <= EP;
									end if;
	
			-- LEDs Clignotement - (Allum�)
			-- Le Compteur Compte Jusqu'au Seuil puis on Passe � l'Etat Suivant
			when CLIGN_ON	=> LED <= "1111";
									if Mode = "00" or Cpt = Seuil then         EF <= LED_OFF;
									elsif Mode = "11" then                     EF <= LED_ON;
									else                                       EF <= EP;
									end if;
		end case;
	end process;


end Behavioral;

