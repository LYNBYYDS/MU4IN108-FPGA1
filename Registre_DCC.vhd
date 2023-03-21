
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REGISTRE_DCC is
    Port (  Clk : in std_logic;		                            -- Horloge 100 MHz 
            Reset : in std_logic;		                        -- Reset Asynchrone
            Trame_DCC : in std_logic_vector(50 downto 0);	    -- Trame DCC
            Com_REG : in std_logic_vector(1 downto 0);          -- Command for register
            Bit_out : out std_logic                             -- Bit send to MAE
            );
end REGISTRE_DCC;


architecture Behavioral of REGISTRE_DCC is

signal nb_shifted : INTEGER range 0 to 50;	                    -- Compteur de cycles d'horloge
signal reg_data : std_logic_vector(50 downto 0);			 	-- Signal stock the Trame data

begin
    
    -- Command for register
        -- shift 
        -- charge
        -- im trying to do it with the Com_REG which
            -- 0 is shift
            -- 1 is charge
            -- others do nothing 

	process (Clk, Reset)
	begin
		-- Reset Asynchrone
		if Reset = '1' then 
            nb_shifted <= '0';                                  -- Reset shift number to 0
			reg_data <= Trame_DCC;                              -- Recharge the data to shift
		-- A Chaque Front d'Horloge
		elsif rising_edge (Clk) then
			case Com_REG is 
                when "00" =>
                    if nb_shifted < 50 then 
                        Bit_out <= ((reg_data >> nb_shifted) && 1);
                        nb_shifted <= nb_shifted + 1;
                    elsif nb_shifted = 50 then

                when others => NULL;
            end case;                    
		end if;
end process;

end Behavioral;
