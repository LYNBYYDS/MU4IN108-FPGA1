
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPTEUR_TEMPO is
    Port ( Clk 			: in std_logic;		-- Horloge 100 MHz
           Reset 		: in std_logic;		-- Reset Asynchrone
           Clk1M 		: in std_logic;		-- Horloge 1 MHz
           GO_1	        : out std_logic;		-- Commande de D�marrage de la Temporisation
           FIN_1	    : out std_logic		-- Drapeau de Fin de la Temporisation
		);
end COMPTEUR_TEMPO;

architecture Behavioral of COMPTEUR_TEMPO is

signal Q: std_logic_vector(1 downto 0);     -- Etat S�quenceur
signal Raz_CPt,Inc_Cpt: std_logic;          -- Commandes Compteur
signal Fin_Cpt: std_logic;                  -- Drapeau de Fin de Comptage

-- Compteur de Temporisation
signal Cpt	    : INTEGER range 0 to 10000; -- Compteur (6000 = 6 ms)
-- signal En_Tempo	: STD_LOGIC;				-- Commande d'Incr�mentation not used don't know for what

etat

begin

    -- S�quenceur
    process(Clk,Reset)
    begin
        if Reset='1' then Q <= "00";                                                   -- Reset Q to 00
        elsif rising_edge(Clk) then
            Q(1) <= ((not Q(1)) and Q(0) and Fin_Cpt) or (Q(1) and Start_Tempo);   	   -- Q1 = (Q = 01 and Fin_Cpt) or (Q = 1X and Start_Tempo) 
            Q(0) <= Start_Tempo or ((not Q(1)) and Q(0));				               -- Q0 = Start_Tempo or Q = 01
        end if;
    end process;

    -- Sorties S�quenceur
    Raz_Cpt <= Q(1) xnor Q(0);              -- Reset counter if Q = 00 or 11
    Inc_Cpt <= (not Q(1)) and Q(0);         -- Counter increase if Q = 01
    Fin_Tempo <= Q(1) and Q(0);             -- Tempo finish if Q = 11


    -- Compteur de Temporisation
	process (Clk1M, Reset)
    begin
        -- Reset Asynchrone
        if (Reset) = '1' then
            Cpt <= 0;                                   -- Reset counter
        elsif rising_edge (Clk1M) then
            if Raz_Cpt = '1' then Cpt <= 0;             -- Reset counter if Q = 00 or 11
            elsif Inc_Cpt = '1' then Cpt <= Cpt  + 1;   -- Counter increase if Q = 01
            end if;
        end if;
    end process;

    Fin_Cpt <= '1' when (Cpt = 5999) else '0';

end Behavioral;
