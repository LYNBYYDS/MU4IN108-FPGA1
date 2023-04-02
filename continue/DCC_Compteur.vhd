
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DCC_Compteur is
    Port ( Clk1M 		: in std_logic;		-- Horloge 1 MHz
           Reset 		: in std_logic;		-- Reset Asynchrone
           Cmd	        : in std_logic;		-- Counting or not 1/0
           Seuil        : in integer;       -- Seuil for the counter
           Fin	        : out std_logic		-- Finish counting or not 
		);
end DCC_Compteur;

architecture Behavioral of DCC_Compteur is

-- Counter
    signal cpt : integer;

begin

    process(Clk,Reset)
    begin
        if Reset='1' then cpt <= 0;         -- Reset counter
        elsif rising_edge(Clk) then
            if Cmd = '1' then               -- if Cmd is to count and not in reset mode
                cpt <= cpt + 1;             -- cpt ++
            end if;
        end if;
    end process;

    --  Output signal
    Fin  <= '1' when cpt = Seuil else '0';

end Behavioral;
