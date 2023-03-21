----------------------------------------------------------------------------------
-- Company: UPMC
-- Engineer: Julien Denoulet
-- 
-- Create Date:   	Septembre 2016 
-- Module Name:    	Impulse_Count - Behavioral 
-- Project Name: 		TP1 - FPGA1
-- Target Devices: 	Nexys4 / Artix7

-- XDC File:			Impulse_Count.xdc					

-- Description: Compteur d'Impulsions - Version KO
--
--		Compteur d'Impulsions sur 4 bits
--			- Le Compteur s'Incrémente si on Appuie sur le Bouton Left
--			- Le Compteur se'Décrémente si on Appuie sur le Bouton Center
--			- Sup Passe à 1 si le Compteur Dépasse 9
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity IMPULSE_COUNT is
    Port (  Clk : in std_logic;                                 -- signal horloge
            Reset : in  std_logic;								-- Reset Asynchrone
            Button_L : in  std_logic;							-- Bouton Left
            Button_C : in  std_logic;							-- Bouton Center
            Count : out  std_logic_vector (3 downto 0);	        -- Compteur d'Impulsions
            Sup : out  std_logic);								-- Indicateur Valeur Seuil
end IMPULSE_COUNT;

architecture Behavioral of IMPULSE_COUNT is

signal cpt: std_logic_vector(3 downto 0);		-- Compteur d'Impulsions
signal button_L_S, button_C_S : std_logic;       -- Signal stocked the acient valeur of the button state

begin

	count <= cpt;	-- Affichage en Sortie du Compteur

	-------------------------
	-- Gestion du Compteur --
	-------------------------
	process(reset,Clk)

	begin

		-- Reset Asynchrone
		if reset='1' then cpt<="0000";
		else
            if rising_edge(Clk) then
                if Button_L = '1' and button_L_S = '0' then
                    if Button_C = '1' and button_C_S = '0' then
                      
                    else
                        -- Incrémentation Si on Appuie sur le Bouton Left
                        cpt <= cpt + 1;
                    end if;
                else
                    if Button_C = '1' and button_C_S = '0' then
                        -- Décrémentation Si on Appuie sur le Bouton Center
                        cpt <= cpt - 1;
                    else
                      
                    end if;   
                end if;
                button_L_S <= Button_L;
                button_C_S <= Button_C;
            end if;
		end if;

		
	end process;

	-------------------------
	-- Gestion du Flag Sup --
	-------------------------
	process(Cpt)

	begin
		
		-- Mise à 1 si CPT Dépasse 9. A 0 Sinon...
		if (cpt > 9) then 			
			Sup<='1'; 									
		else 							
			Sup<='0'; 
		end if;
	end process;

end Behavioral;

