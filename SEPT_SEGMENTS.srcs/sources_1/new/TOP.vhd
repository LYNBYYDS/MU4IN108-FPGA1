----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/08 18:19:03
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
    Port (  Clk 		    : in std_logic;		                            -- Horloge 100 MHz
            Reset 		    : in std_logic;		                            -- Reset Asynchrone
            sw              : in std_logic_vector(14 downto 0);
            SEL_SEG 		: out std_logic_vector(3 downto 0); 	        -- Selection de l'Afficheur
            SEG 			: out std_logic_vector(7 downto 0)         	    -- Valeur des Segments de l'Afficheur
            );
end TOP;

architecture Behavioral of TOP is

    -- Component 7segment
    component SEPT_SEGMENTS
    port (  Clk100 			: in  std_logic;								-- Horloge 100MHz
            Reset 			: in  std_logic;								-- Reset Asynchrone
            if_speed        : in std_logic;                                 --
            led_setting     : in std_logic_vector(5 downto 0);              -- Led_setting
            led_index       : in std_logic_vector(1 downto 0);              -- Led_index
            sel_seg 		: out std_logic_vector(3 downto 0); 	        -- Selection de l'Afficheur
            seg 			: out std_logic_vector(7 downto 0)         	    -- Valeur des Segments de l'Afficheur
            );
    end component;

begin

    affi_1 : SEPT_SEGMENTS
    port map (  Clk100 => Clk,
                Reset => Reset,
                if_speed => sw(14),
                led_setting => sw(7 downto 2),
                led_index => sw(1 downto 0),
                sel_seg => SEL_SEG,
                seg => SEG
    );

end Behavioral;
