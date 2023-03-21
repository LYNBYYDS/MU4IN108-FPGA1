library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DDC_MAE is
    Port ( Clk 			: in std_logic;		-- Horloge 100 MHz
           Reset 		: in std_logic;		-- Reset Asynchrone
           GO	        : in std_logic;	    -- Start create signal
           FIN	        : out std_logic;	-- Signal finish
		);
end DDC_MAE;

architecture Behavioral of DDC_MAE is

type etat is(IDLE, LVL_LOW, LVL_HIGH)
signal EP, EF: etat;     -- Etat of FSM

begin

    process(Clk,Reset)
    begin
        if Reset = '1' then EP <= IDLE;                                                   -- Reset Q to 00
        elsif rising_edge(Clk) then EP <= EF;
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
