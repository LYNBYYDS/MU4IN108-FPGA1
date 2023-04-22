----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2023 10:48:52
-- Design Name: 
-- Module Name: TOP - Behavioral
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

entity TOP is
    Port (  Clk 		        : in std_logic;		-- Horloge 100 MHz
            Reset 		        : in std_logic;		-- Reset Asynchrone
            Trame_DCC           : in std_logic_vector(50 downto 0);	    -- Trame DCC
            SORTIE_DCC          : out std_logic       -- Bit sent     
            );
end TOP;

architecture Behavioral of TOP is

-- Component MAE
    component MAE is
        Port ( Clk 			     : in std_logic;		                     -- Horloge 100 MHz
               Clk1M 		     : in std_logic;		                     -- Horloge 1 MHz
               Reset 		     : in std_logic;		                     -- Reset Asynchrone
               Reset_Tempo       : out std_logic;	
               Start_Tempo	     : out std_logic;		                     -- Commande de Démarrage de la Temporisation
               Fin_Tempo	     : in std_logic;		                     -- Drapeau de Fin de la Temporisation
               Reset_DDC0        : out std_logic;
               GO_0	             : out std_logic;		                     -- Commande de D?marrage de la Temporisation
               FIN_0	         : in std_logic;		                     -- Drapeau de Fin de la Temporisation
               Reset_DDC1        : out std_logic;
               GO_1	             : out std_logic;		                     -- Commande de D?marrage de la Temporisation
               FIN_1	         : in std_logic;		                     -- Drapeau de Fin de la Temporisation
               Com_REG           : out std_logic_vector(1 downto 0);         -- Command for register
               Bit_out           : in std_logic                             -- Bit send to MAE
		      );
    end component;
    
-- Component REGISTRE_DCC
    component REGISTRE_DCC is
        Port (  Clk : in std_logic;		                            -- Horloge 100 MHz 
            Reset : in std_logic;		                        -- Reset Asynchrone
            Trame_DCC : in std_logic_vector(50 downto 0);	    -- Trame DCC
            Com_REG : in std_logic_vector(1 downto 0);          -- Command for register
            Bit_out : out std_logic                             -- Bit send to MAE
            );
    end component;
    
-- Component COMPTEUR_TEMPO
    component COMPTEUR_TEMPO is
        Port ( Clk 			: in STD_LOGIC;		-- Horloge 100 MHz
           Reset 		: in STD_LOGIC;		-- Reset Asynchrone
           Clk1M 		: in STD_LOGIC;		-- Horloge 1 MHz
           Start_Tempo	: in STD_LOGIC;		-- Commande de Démarrage de la Temporisation
           Fin_Tempo	: out STD_LOGIC		-- Drapeau de Fin de la Temporisation
		);
    end component;
    
-- Component CLK_DIV
    component CLK_DIV is
        Port ( Reset 	: in STD_LOGIC;		-- Reset Asynchrone
           Clk_In 	: in STD_LOGIC;		-- Horloge 100 MHz de la carte Nexys
           Clk_Out 	: out STD_LOGIC);	-- Horloge 1 MHz de sortie
    end component;

-- Component DCC_Bit0
    component DCC_Bit0 is
        Port ( Clk 			: in std_logic;		-- Horloge 100 MHz
           Reset 		: in std_logic;		-- Reset Asynchrone
           Clk1M 		: in std_logic;		-- Horloge 1 MHz
           GO_0	        : in std_logic;		-- Commande de D?marrage de la Temporisation
           FIN_0	    : out std_logic;		-- Drapeau de Fin de la Temporisation
           DCC_0        : out std_logic
		);
    end component;
    
-- Component DCC_Bit1
    component DCC_Bit1 is
        Port ( Clk 			: in std_logic;		-- Horloge 100 MHz
           Reset 		: in std_logic;		-- Reset Asynchrone
           Clk1M 		: in std_logic;		-- Horloge 1 MHz
           GO_1	        : in std_logic;		-- Commande de D?marrage de la Temporisation
           FIN_1	    : out std_logic;		-- Drapeau de Fin de la Temporisation
           DCC_1        : out std_logic
		);
    end component;

signal Clk1M_s : std_logic;		-- Horloge 1 MHz
signal Reset_Tempo_s : std_logic;	
signal Start_Tempo_s : std_logic;		-- Commande de Démarrage de la Temporisation
signal Fin_Tempo_s : std_logic;		-- Drapeau de Fin de la Temporisation
signal Reset_DDC0_s : std_logic;
signal GO_0_s : std_logic;		-- Commande de D?marrage de la Temporisation
signal FIN_0_s : std_logic;		-- Drapeau de Fin de la Temporisation
signal Reset_DDC1_s : std_logic;
signal GO_1_s : std_logic;		-- Commande de D?marrage de la Temporisation
signal FIN_1_s : std_logic;		-- Drapeau de Fin de la Temporisation
signal Com_REG_s : std_logic_vector(1 downto 0);          -- Command for register
signal Bit_out_s : std_logic; 
signal DCC_0_s : std_logic;
signal DCC_1_s : std_logic;
begin

    -- Component MAE
    MAE_0 : MAE
    port map (  Clk => Clk,
                Clk1M => Clk1M_s,
                Reset => Reset,
                Reset_Tempo => Reset_Tempo_s,
                Start_Tempo => Start_Tempo_s,
                Fin_Tempo => Fin_Tempo_s,
                Reset_DDC0 => Reset_DDC0_s,
                GO_0 => GO_0_s,
                FIN_0 => FIN_0_s,
                Reset_DDC1 => Reset_DDC1_s,
                GO_1 => GO_1_s,
                FIN_1 => FIN_1_s,
                Com_REG => Com_REG_s,
                Bit_out => Bit_out_s);
    
    -- Component REGISTRE_DCC
    REGISTRE_DCC_0 : REGISTRE_DCC
    port map (  Clk => Clk,
                Reset => Reset,
                Trame_DCC => Trame_DCC,
                Com_REG => Com_REG_s,
                Bit_out => Bit_out_s);
    
    -- Component COMPTEUR_TEMPO
    COMPTEUR_TEMPO_0 : COMPTEUR_TEMPO
    port map (  Clk => Clk,
                Reset => Reset_Tempo_s,
                Clk1M => Clk1M_s,
                Start_Tempo => Start_Tempo_s,
                Fin_Tempo => Fin_Tempo_s);
    
    -- Component CLK_DIV
    CLK_DIV_0 : CLK_DIV
    port map (  Reset => Reset,
                Clk_In => Clk,
                Clk_Out => Clk1M_s);
    
    -- Component DCC_FRAME_GENERATOR
    DCC_Bit0_0 : DCC_Bit0
    port map (  Clk => Clk,
                Reset => Reset_DDC0_s,
                Clk1M => Clk1M_s,
                GO_0 => GO_0_s,
                FIN_0 => FIN_0_s,
                DCC_0 =>DCC_0_s);
    
    -- Component DCC_FRAME_GENERATOR
    DCC_Bit1_0 : DCC_Bit1
    port map (  Clk => Clk,
                Reset => Reset_DDC1_s,
                Clk1M => Clk1M_s,
                GO_1 => GO_1_s,
                FIN_1 => FIN_1_s,
                DCC_1 =>DCC_1_s);
                
    SORTIE_DCC <= DCC_1_s or DCC_0_s;
    
    
end Behavioral;
