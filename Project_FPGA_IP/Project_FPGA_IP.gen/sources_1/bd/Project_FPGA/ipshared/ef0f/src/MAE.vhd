----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2023 09:33:14
-- Design Name: 
-- Module Name: MAE - Behavioral
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

entity MAE is
    Port ( Clk 			    : in std_logic;		-- Horloge 100 MHz
           Clk1M 		: in std_logic;		-- Horloge 1 MHz
           Reset 		    : in std_logic;		-- Reset Asynchrone
           Reset_Tempo : out std_logic;	
           Start_Tempo	: out std_logic;		-- Commande de Démarrage de la Temporisation
           Fin_Tempo	: in std_logic;		-- Drapeau de Fin de la Temporisation
           Reset_DDC0 : out std_logic;
           GO_0	        : out std_logic;		-- Commande de D?marrage de la Temporisation
           FIN_0	    : in std_logic;		-- Drapeau de Fin de la Temporisation
           Reset_DDC1 : out std_logic;
           GO_1	        : out std_logic;		-- Commande de D?marrage de la Temporisation
           FIN_1	    : in std_logic;		-- Drapeau de Fin de la Temporisation
           Com_REG : out std_logic_vector(1 downto 0);          -- Command for register
           Bit_out : in std_logic                             -- Bit send to MAE
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
-- Counter signal
    signal Reset_Compteur : std_logic;
    signal Cmd_Compteur : std_logic;
    signal Fin_Compteur : std_logic;
    constant signal_bit : integer := 51;
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

            when CHARGE => 
                EF <= SHIFT; 
            
            when SHIFT => 
                if Bit_out = '0' then               
                    EF <= SEND0;              
                elsif  Bit_out = '1' then              
                    EF <= SEND1;  
                else
                    EF <= CHARGE;                 
                end if;
                
            when SEND0 =>
                EF <= SEND0_WAIT;
              
            when SEND1 =>
                EF <= SEND1_WAIT;
                
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
                
            when TEMPO => 
                EF <= TEMPO_WAIT;     
             
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
                Reset_Tempo <= '1';
                Cmd_Compteur <= '0';
                Start_Tempo <= '0';
                Reset_DDC0 <= '1';
                GO_0 <= '0';
                Reset_DDC1 <= '1';
                GO_1 <= '0';
                Com_REG <= "00";
                Reset_Compteur <= '1';
                
            when CHARGE => 
                Reset_Compteur <= '0';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '1';
                Start_Tempo <= '0';
                Reset_DDC0 <= '1';
                GO_0 <= '0';
                Reset_DDC1 <= '1';
                GO_1 <= '0';
                Com_REG <= "10";            -- Charge when 
                
            when SHIFT => 
                Reset_Compteur <= '0';
                Cmd_Compteur <= '1';
                Reset_Tempo <= '1';
                Start_Tempo <= '0';
                Reset_DDC0 <= '1';
                GO_0 <= '0';
                Reset_DDC1 <= '1';
                GO_1 <= '0';
                Com_REG <= "01";            -- Shift
                
            when SEND0 =>
                Reset_Compteur <= '0';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '0';
                Start_Tempo <= '0';
                Reset_DDC0 <= '0';
                GO_0 <= '1';
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
                GO_1 <= '1';
                Com_REG <= "00";
                
            when SEND0_WAIT =>
                Reset_Compteur <= '0';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '0';
                Start_Tempo <= '0';
                Reset_DDC0 <= '0';
                GO_0 <= '0';
                Reset_DDC1 <= '0';
                GO_1 <= '0';
                Com_REG <= "00";
                
            when SEND1_WAIT =>
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
                Reset_Compteur <= '1';
                Cmd_Compteur <= '0';
                Reset_Tempo <= '0';
                Start_Tempo <= '1';
                Reset_DDC0 <= '1';
                GO_0 <= '0';
                Reset_DDC1 <= '1';
                GO_1 <= '0';
                Com_REG <= "00";
            
            when TEMPO_WAIT =>
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
