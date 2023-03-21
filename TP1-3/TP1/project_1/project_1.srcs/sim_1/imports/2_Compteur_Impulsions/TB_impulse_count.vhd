----------------------------------------------------------------------------------
-- Company: UPMC
-- Engineer: Julien Denoulet
-- 
-- Create Date:   	Septembre 2016 
-- Module Name:    	TP_Impulse_Count - Behavioral 
-- Project Name: 		TP1 - FPGA1
-- Target Devices: 	Nexys4 / Artix7

-- XDC File:			Aucun					

-- Description: Testbench du Compteur d'Impulsions
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_impulse_count IS
END TB_impulse_count;
 
ARCHITECTURE behavior OF TB_impulse_count IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IMPULSE_COUNT
    PORT(   Clk : IN std_logic;
            Reset : IN  std_logic;
            Button_L : IN  std_logic;
            Button_C : IN  std_logic;
            Count : OUT  std_logic_vector(3 downto 0);
            Sup : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Button_L : std_logic := '0';
   signal Button_C : std_logic := '0';

 	--Outputs
   signal Count : std_logic_vector(3 downto 0);
   signal Sup : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IMPULSE_COUNT PORT MAP (
            Clk => Clk,
            Reset => Reset,
            Button_L => Button_L,
            Button_C => Button_C,
            Count => Count,
            Sup => Sup
        );


	-- Evolution des Entrées
	Reset <= '1' after 2 ns, '0' after 10 ns;
	clk <= not Clk after 5 ns;
	
	Button_L <= '1' after 100 ns, '0' after 150 ns, '1' after 200 ns, '0' after 250 ns, '1' after 300 ns, '0' after 350 ns,
					'1' after 700 ns, '0' after 750 ns, '1' after 800 ns, '0' after 850 ns, '1' after 900 ns, '0' after 950 ns,
					'1' after 1000 ns, '0' after 1050 ns, '1' after 1100 ns, '0' after 1150 ns, '1' after 1200 ns, '0' after 1250 ns,
					'1' after 1300 ns, '0' after 1350 ns, '1' after 1400 ns, '0' after 1450 ns, '1' after 1500 ns, '0' after 1550 ns;
	
	Button_C <= '1' after 400 ns, '0' after 450 ns, '1' after 500 ns, '0' after 600 ns;
	
	
END;
