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
           Reset_Cpt_High   : out std_logic;    -- Reset counter_high
           Cmd_Cpt_Low      : out std_logic;    -- Command counter_low
           Cmd_Cpt_high     : out std_logic;    -- Command counter_high
           Fin_Cpt_Low      : in std_logic;     -- Finsish counting counter_low
           Fin_Cpt_High     : in std_logic;     -- Finsish counting counter_high
           Output           : out std_logic;    -- Signal output
           Fin	            : out std_logic	    -- Signal finish
		);
end DDC_MAE;

architecture Behavioral of DDC_MAE is

-- FSM state
    type etat is(IDLE, LVL_LOW, LVL_HIGH);
    signal EP, EF: etat;                            -- Etat of FSM

begin
    Fin <= Fin_Cpt_High;
    process(Clk,Reset)
    begin
        if Reset = '1' then 
            EP <= IDLE;                         -- Reset to state initial
        elsif rising_edge(Clk) then 
            EP <= EF;                           -- Move to next state
        end if;
    end process;
    
    process(EP, GO, Fin_Cpt_Low, Fin_Cpt_High)
    begin
        case (EP) is 
            -- etat IDLE
            when IDLE => 
                if GO = '1' then                -- GO start generate signal
                    EF <= LVL_LOW;              -- State with LOW 
                else 
                    EF <= IDLE;                 -- If not stay in the state IDLE
                end if;
                
            -- etat LVL_LOW generate LOW
            when LVL_LOW => 
                if Fin_Cpt_Low = '1' then                -- GO start generate signal
                    EF <= LVL_HIGH;              -- State with LOW 
                else 
                    EF <= LVL_LOW;                 -- If not stay in the state LVL_LOW
                end if;
              
            -- etat LVL_HIGH generate LOW
            when LVL_HIGH => 
                if Fin_Cpt_High = '1' then                -- GO start generate signal
                    EF <= IDLE;              -- State with HIGH
                else 
                    EF <= LVL_HIGH;                 -- If not stay in the state LVL_HIGH
                end if;
                    
        end case;
    end process;
    
    process(EP)
    begin
        case (EP) is 
            -- etat IDLE
            when IDLE => 
                Reset_Cpt_Low <= '1';
                Reset_Cpt_High <= '1';
                Cmd_Cpt_Low <= '0';
                Cmd_Cpt_high <= '0';
                Output <= '0';
                
            -- etat LVL_LOW generate LOW
            when LVL_LOW => 
                Reset_Cpt_Low <= '0';
                Reset_Cpt_High <= '1';
                Cmd_Cpt_Low <= '1';
                Cmd_Cpt_high <= '0';
                Output <= '0';
              
            -- etat LVL_HIGH generate LOW
            when LVL_HIGH => 
                Reset_Cpt_Low <= '1';
                Reset_Cpt_High <= '0';
                Cmd_Cpt_Low <= '0';
                Cmd_Cpt_high <= '1';
                Output <= '1';
                    
        end case;
    end process;
    
end Behavioral;
