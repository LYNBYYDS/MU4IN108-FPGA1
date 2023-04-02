
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DCC_BIT0 is
    Port ( Clk 			: in std_logic;		-- Horloge 100 MHz
           Reset 		: in std_logic;		-- Reset Asynchrone
           Clk1M 		: in std_logic;		-- Horloge 1 MHz
           GO_0	        : in std_logic;		-- Commande de D�marrage de la Temporisation
           FIN_0	    : out std_logic		-- Drapeau de Fin de la Temporisation
		);
end DCC_BIT0;

architecture Behavioral of DCC_BIT0 is

-- Component MAE
    component DDC_MAE is
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
    end component;

-- Component Counter
    component DCC_Compteur is
        Port ( Clk1M 		: in std_logic;		-- Horloge 1 MHz
               Reset 		: in std_logic;		-- Reset Asynchrone
               Cmd	        : in std_logic;		-- Counting or not 1/0
               Seuil        : in integer;       -- Seuil for the counter
               Fin	        : out std_logic		-- Finish counting or not 
            );
        end component;

constant seuil : integer := 3; -- test use 3 otherwise should use 100
    
signal Reset_Cpt_Low    : std_logic;        -- Reset counter_low
signal Reset_Cpt_High   ; std_logic;        -- Reset counter_high
signal Cmd_Cpt_Low      ; std_logic;        -- Command counter_low
signal Cmd_Cpt_high     : std_logic;        -- Command counter_high
signal Fin_Cpt_Low      : std_logic;        -- Finsish counting counter_low
signal Fin_Cpt_High     : std_logic;        -- Finsish counting counter_high

etat

begin

    -- Component Counter low
    Counter_Low : DCC_Compteur
    port map (  Clk1M => Clk1M,
                Reset => Reset_Cpt_Low,
                Cmd => Cmd_Cpt_Low,
                Seuil => seuil,
                Fin	=> Fin_Cpt_Low);
    
    -- Component Counter high
    Counter_High : DCC_Compteur
    port map (  Clk1M => Clk1M,
                Reset => Reset_Cpt_High,
                Cmd => Cmd_Cpt_High,
                Seuil => seuil,
                Fin	=> Fin_Cpt_High);

    -- Component MAE
    MAE : DDC_MAE
    port map (  Clk => Clk,
                Reset => reset,
                Go => GO_0,
                Reset_Cpt_Low => Reset_Cpt_Low,
                Reset_Cpt_High => Reset_Cpt_High,
                Cmd_Cpt_Low => Cmd_Cpt_Low,
                Cmd_Cpt_high => Cmd_Cpt_High,
                Fin_Cpt_Low => Fin_Cpt_Low,
                Fin_Cpt_High => Fin_Cpt_High,
                Fin => FIN_0);

end Behavioral;
