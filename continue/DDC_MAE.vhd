----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2023 19:11:37
-- Design Name: 
-- Module Name: DDC_MAE - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DDC_MAE is
    Port ( Clk 			    : in std_logic;		-- Horloge 100 MHz
           Reset 		    : in std_logic;		-- Reset Asynchrone
           Go	            : in std_logic;	    -- Start create signal
           Reset_Cpt_Low    : out std_logic;    -- Reset counter_low
           Reset_Cpt_High   ; out std_logic;    -- Reset counter_high
           Cmd_Cpt_Low      ; out std_logic;    -- Command counter_low
           Cmd_Cpt_high     : out std_logic;    -- Command counter_high
           Fin_Cpt_Low      : in std_logic;     -- Finsish counting counter_low
           Fin_Cpt_High     : in std_logic;     -- Finsish counting counter_high
           Fin	            : out std_logic	    -- Signal finish
		);
end DDC_MAE;

architecture Behavioral of DDC_MAE is

-- FSM state
    type etat is(IDLE, LVL_LOW, LVL_HIGH);
    signal EP, EF: etat;                            -- Etat of FSM

-- FSM condition
    signal GO_HIGH : std_logic;                     -- Condition to pass to etat LVL_HIGH from LVL_LOW
    signal GO_BACK : std_logic;                     -- Condition to pass to etat IDLE from LVL_HIGH

-- Output signal
    Fin <=

begin

    -- Condition to pass etat GO_HIGH & GO_BACK depends on the the counter finished or not
    GO_HIGH <= '1' when Cpt_Low_Fin = '1'' else '0';
    GO_BACK <= '1' when Cpt_High_Fin = '1'' else '0';

    process(Clk,Reset)
    begin
        if Reset = '1' then 
            EP <= IDLE;                             -- Reset to state initial
        elsif rising_edge(Clk) then 
            EP <= EF;                               -- Move to next state
        end if;
    end process;
    
    process(EP, GO, GO_HIGH, GO_BACK)
    begin
        case (EP) is 
            -- State IDLE
            when IDLE => 
                if Go = '1' then                    -- GO : start generate signal
                    EF <= LVL_LOW;                  -- State with LOW value output
                else 
                    EF <= IDLE;                     -- If GO not active, stay in the state IDLE
                end if;
                
            -- State LVL_LOW generate LOW value output
            when LVL_LOW => 
                if GO_HIGH = '1' then -- When the counter reach to seuil change etat otherwise stay in the same etat
                    EF <= LVL_HIGH;
                elsif 
                    EF <= LVL_LOW;
                end if;

            -- State LVL_HIGH generate HIGH value output
            when LVL_HIGH =>
                if GO_BACK = '1' then
                    EF <= LVL_LOW;
                elsif 
                    EF <= IDLE;
                end if;
        end case;
    end process;

    process(EP)
    begin
        case (EP) is 
            when IDLE => 
                -- Reset all two counters and Cmd not counting
                Reset_cpt_low <= '1';
                Reset_cpt_high <= '1';
                Cmd_cpt_low <= '0';
                Cmd_cpt_high <= '0';
            when LVL_LOW =>
                -- Stop reset counters and start counting cpt_low
                Reset_cpt_low <= '0';
                Reset_cpt_high <= '0';
                Cmd_cpt_low <= '1';
                Cmd_cpt_high <= '0';
            when LVL_HIGH => 
                -- Stop reset counters and start counting cpt_high
                Reset_cpt_low <= '0';
                Reset_cpt_high <= '0';
                Cmd_cpt_low <= '0';
                Cmd_cpt_high <= '1';
        end case;
    end process;
    
end Behavioral;
