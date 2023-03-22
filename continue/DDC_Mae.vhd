library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DDC_MAE is
    Port ( Clk 			: in std_logic;		-- Horloge 100 MHz
           Reset 		: in std_logic;		-- Reset Asynchrone
           Value        : in std_logic;     -- 1/0 to generate
           GO	        : in std_logic;	    -- Start create signal
           FIN	        : out std_logic;	-- Signal finish
		);
end DDC_MAE;

architecture Behavioral of DDC_MAE is

type etat is(IDLE, LVL_LOW, LVL_HIGH);
signal EP, EF: etat;     -- Etat of FSM
constant seul_0 : integer := to_integer(unsigned(a))
signal cpt : INTEGER range 0 to 10000; -- Compteur (6000 = 6 ms)

begin

    process(Clk,Reset)
    begin
        if Reset = '1' then EP <= IDLE;                                                   -- Reset Q to 00
        elsif rising_edge(Clk) then EP <= EF;
            Q(1) <= ((not Q(1)) and Q(0) and Fin_Cpt) or (Q(1) and Start_Tempo);   	   -- Q1 = (Q = 01 and Fin_Cpt) or (Q = 1X and Start_Tempo) 
            Q(0) <= Start_Tempo or ((not Q(1)) and Q(0));				               -- Q0 = Start_Tempo or Q = 01
        end if;
    end process;

    process(EP, GO)
    begin
        case (EP) is 
            when IDLE => 
                if GO = '1' then 
                    EF <= LVL_LOW;
                else 
                    EF <= IDLE;
                end if;
            when LVL_LOW => 
                case (Value) is 
                    when '0' =>

end Behavioral;


