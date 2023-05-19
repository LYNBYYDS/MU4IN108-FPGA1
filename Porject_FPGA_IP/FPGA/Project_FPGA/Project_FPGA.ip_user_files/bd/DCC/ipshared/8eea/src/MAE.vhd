----------------------------------------------------------------------------------
-- Company: Sorbonne University
-- Engineer: Yong LI 
-- 
-- Create Date: 04.04.2023 09:33:14
-- Design Name: MAE.vhd
-- Module Name: MAE - Behavioral
-- Project Name: IP_Centrale_DCC
-- Target Devices: 
-- Tool Versions: Vivado 2020.2
-- Description: 
-- This file is the vhd file discribes main FSM of the Genetrator of DCC trame
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

entity MAE is
    Port ( Clk 			     : in std_logic;		                     -- Horloge 100 MHz
           Clk1M 		     : in std_logic;		                     -- Horloge 1 MHz
           Reset 		     : in std_logic;		                     -- Reset Asynchrone
           Reset_Tempo       : out std_logic;                            -- Reset the block Trmpo
           Start_Tempo	     : out std_logic;		                     -- Command to start the block Tempo
           Fin_Tempo	     : in std_logic;		                     -- Flag that shows if the Tempo reach to the end
           Reset_DDC0        : out std_logic;                            -- Reset the block DDC0
           GO_0	             : out std_logic;		                     -- Command to start the block DDC0 to send one bit 0
           FIN_0	         : in std_logic;		                     -- Flag that shows if the DDC0 finished send the signal 0
           Reset_DDC1        : out std_logic;                            -- Reset the block DCC1
           GO_1	             : out std_logic;		                     -- Command to start the block DDC1 to send one bit 1
           FIN_1	         : in std_logic;		                     -- Flag that shows if the DDC1 finsihed send the singal 1
           Com_REG           : out std_logic_vector(1 downto 0);         -- Command send to block REGISTRE_DCC 0/1/2 Do nothing/Shift/Charge
           Bit_out           : in std_logic                              -- Bit send to MAE
           );
end MAE;

architecture Behavioral of MAE is

-- Component Counter
    component MAE_Compteur is
        Port ( Clk 			: in std_logic;		-- Horloge 100 MHz
               Reset 		: in std_logic;		-- Reset Asynchrone
               Cmd	        : in std_logic;		-- Counting or not 1/0
               Seuil        : in integer;       -- Seuil for the counter
               Fin	        : out std_logic		-- Finish counting or not 
            );
    end component;
        
-- FSM state
    type etat is(IDLE, CHARGE, SHIFT, SEND0, SEND0_WAIT, SEND1, SEND1_WAIT, TEMPO, TEMPO_WAIT);
    signal EP, EF: etat;                            -- Etat of FSM
    
-- Intern signal
    signal Reset_Compteur : std_logic;              -- Reset the MAE_Counter
    signal Cmd_Compteur : std_logic;                -- Command send to MAE_Counter 0/1 Don't count/Count
    signal Fin_Compteur : std_logic;                -- Flag shows that if the MAE_Counter count to the seuil
    constant signal_bit : integer := 52;            -- The seuil of the counter
    
begin

    -- Component Counter MAE
    Counter_MAE : MAE_Compteur
    port map (  Clk => Clk,
                Reset => Reset_Compteur,
                Cmd => Cmd_Compteur,
                Seuil => signal_bit,
                Fin	=> Fin_Compteur);
                
    process(Clk,Reset)
    begin
        if Reset = '1' then 
            EP <= IDLE;                         -- Reset to state initial
            
        elsif rising_edge(Clk) then 
            EP <= EF;                           -- Move to next state
        end if;
    end process;
    
    process(EP, Fin_Compteur, FIN_0, FIN_1, Fin_Tempo, Bit_out)
    begin
        case (EP) is 
            -- etat IDLE
            when IDLE => 
                EF <= CHARGE;             
            
            -- etat CHARGE
            when CHARGE => 
                EF <= SHIFT; 
            
            -- etat SHIFT
            when SHIFT => 
                if Bit_out = '0' then               
                    EF <= SEND0;              
                elsif  Bit_out = '1' then              
                    EF <= SEND1;  
                else
                    EF <= CHARGE;                 
                end if;
                
            -- etat SEND0
            when SEND0 =>
                EF <= SEND0_WAIT;
            
            -- etat SEND1
            when SEND1 =>
                EF <= SEND1_WAIT;
            
            -- etat SEND0_WAIT
            when SEND0_WAIT =>
                if  FIN_0 = '1' then   
                    if Fin_Compteur = '1' then 
                        EF <= TEMPO; 
                    else
                        EF <= SHIFT; 
                    end if;
                else
                    EF <= SEND0_WAIT;                 
                end if;
            
            -- etat SEND1_WAIT
            when SEND1_WAIT =>
                if  FIN_1 = '1' then   
                    if Fin_Compteur = '1' then 
                        EF <= TEMPO; 
                    else
                        EF <= SHIFT; 
                    end if;
                else
                    EF <= SEND1_WAIT;                 
                end if;  
            
            -- etat TEMPO
            when TEMPO => 
                EF <= TEMPO_WAIT;     
            
            -- etat TEMPO_WAIT
            when TEMPO_WAIT =>
                if Fin_Tempo = '1' then 
                    EF <= IDLE;      
                else
                    EF <= TEMPO_WAIT;                 
                end if;
               
        end case;
    end process;
    
    process(EP)
    begin
        case (EP) is 
            when IDLE => 
                Reset_Compteur <= '1';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '1';
                Start_Tempo <= '0';
                Reset_DDC0 <= '1';
                GO_0 <= '0';
                Reset_DDC1 <= '1';
                GO_1 <= '0';
                Com_REG <= "00";
                
            when CHARGE => 
                Reset_Compteur <= '0';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '1';
                Start_Tempo <= '0';
                Reset_DDC0 <= '1';
                GO_0 <= '0';
                Reset_DDC1 <= '1';
                GO_1 <= '0';
                Com_REG <= "10";            -- Charge new data to register 
                
            when SHIFT => 
                Reset_Compteur <= '0';
                Cmd_Compteur <= '1';        -- Add 1 to counter as one bit data is push to send 
                Reset_Tempo <= '1';
                Start_Tempo <= '0';
                Reset_DDC0 <= '1';
                GO_0 <= '0';
                Reset_DDC1 <= '1';
                GO_1 <= '0';
                Com_REG <= "01";            -- Shift the data in the register to next bit
                
            when SEND0 =>
                Reset_Compteur <= '0';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '0';
                Start_Tempo <= '0';
                Reset_DDC0 <= '0';
                GO_0 <= '1';                -- Ask the componant DCC0 to start send bit data 0
                Reset_DDC1 <= '0';
                GO_1 <= '0';
                Com_REG <= "00";
              
            when SEND1 =>
                Reset_Compteur <= '0';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '0';
                Start_Tempo <= '0';
                Reset_DDC0 <= '0';
                GO_0 <= '0';
                Reset_DDC1 <= '0';
                GO_1 <= '1';                -- Ask the componant DCC1 to start send bit data 1
                Com_REG <= "00";
                
            when SEND0_WAIT =>              -- Do nothing just wait the componant DCC0 send the flag when its finished 
                Reset_Compteur <= '0';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '0';
                Start_Tempo <= '0';
                Reset_DDC0 <= '0';
                GO_0 <= '0';
                Reset_DDC1 <= '0';
                GO_1 <= '0';
                Com_REG <= "00";
                
            when SEND1_WAIT =>              -- Do nothing just wait the componant DCC1 send the flag when its finished 
                Reset_Compteur <= '0';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '0';
                Start_Tempo <= '0';
                Reset_DDC0 <= '0';
                GO_0 <= '0';
                Reset_DDC1 <= '0';
                GO_1 <= '0';
                Com_REG <= "00";
              
            when TEMPO =>               
                Reset_Compteur <= '1';      -- As the trame is sent need to reset the bit sent to start the new trame arrives
                Cmd_Compteur <= '0';
                Reset_Tempo <= '0';
                Start_Tempo <= '1';         --  Send the command to ask the componant Tempo start count
                Reset_DDC0 <= '1';
                GO_0 <= '0';
                Reset_DDC1 <= '1';
                GO_1 <= '0';
                Com_REG <= "00";
            
            when TEMPO_WAIT =>              -- Wait the componant Tempo to send the flag when it finished 
                Reset_Compteur <= '0';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '0';
                Start_Tempo <= '0';
                Reset_DDC0 <= '1';
                GO_0 <= '0';
                Reset_DDC1 <= '1';
                GO_1 <= '0';
                Com_REG <= "00";
                    
        end case;
    end process;
    
end Behavioral;
