------------------------------
-- Company: UPMC              
-- Engineer: YongLI & MarcZHAN
-- 
-- Create Date: 22.03.2023 18:44:59
-- Design Name: 
-- Module Name: Registre_DCC_tb - Behavioral
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

entity Registre_DCC_tb is
--  Port ( );
end Registre_DCC_tb;

architecture Behavioral of Registre_DCC_tb is

component REGISTRE_DCC is 
    Port (  Clk : in std_logic;		                            -- Horloge 100 MHz 
            Reset : in std_logic;		                        -- Reset Asynchrone
            Trame_DCC : in std_logic_vector(50 downto 0);	    -- Trame DCC
            Com_REG : in std_logic_vector(1 downto 0);          -- Command for register
            Bit_out : out std_logic                             -- Bit send to MAE
            );
end component;

signal Clk_s : std_logic := '0';                                -- Horloge input
signal Reset_s : std_logic := '1';                              -- Reset Asynchrone
-- Trame input default train at @1 stop
    -- @1       0000 0001 
    -- stop     0110 0000
    -- xor      0110 0001
    -- 1111 1111 1111 1111 1111 1110 0000 0001 0011 0000 0001 1000 011
signal Trame_DCC_s : std_logic_vector(50 downto 0) := "111111111111111111111110000000010011000000011000011";
signal Com_REG_s : std_logic_vector(1 downto 0) := "00";        -- CMD from FSM 00/11 do nothing 01 shift 10 charge
signal Bit_out_s : std_logic;                                   -- Output to FSM

begin

    -- Component REGISTRE_DCC 
        REGISTRE_DCC_1 : REGISTRE_DCC
            port map (  Clk => Clk_s,
                        Reset => Reset_s,
                        Trame_DCC => Trame_DCC_s,
                        Com_REG => Com_REG_s,
                        Bit_out => Bit_out_s);

    -- Inverse the signal of input horloge
        Clk_s <= not Clk_s after 1 ns;
    
    -- Reset off
        Reset_s <= '0' after 10 ns;
    
    -- Change the Trame to run train at @1 at max speed
        -- Trame input default train at @1 at max speed
            -- @1               0000 0001 
            -- max speed        0111 1111
            -- xor              0111 1110
            -- 1111 1111 1111 1111 1111 1110 0000 0001 0011 0000 0001 1000 011
        Trame_DCC_s <= "111111111111111111111110000000010011111110011111101"after 100 ns;
        

    -- Change CMD
        Com_REG_s <= "01" after 20 ns, "10" after 50 ns, "00" after 55 ns, "01" after 60 ns;
    -- charge at start after 20 ns and then shift but recharge at 50 ns and do nothing from 55 ns to 60 ns and then at 60 ns start to shift normally it will recharge when is dont transfer 


end Behavioral;
