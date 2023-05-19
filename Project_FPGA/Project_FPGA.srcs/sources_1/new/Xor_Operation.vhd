----------------------------------------------------------------------------------
-- Company: UPMC
-- Engineer: YongLI & MarcZHAN
-- 
-- Create Date: 22.03.2023 17:13:04
-- Design Name: Xor_Operation.vhd
-- Module Name: XOR_OPERATION - Behavioral
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

entity XOR_OPERATION is
    Port (  Opt1 : in std_logic_vector(7 downto 0);         -- Operator 1
            Opt2 : in std_logic_vector(7 downto 0);         -- Operator 2
            Opt3 : in std_logic_vector(7 downto 0);         -- Operator 3
            Xor_out : out std_logic_vector(7 downto 0));    -- Output
end XOR_OPERATION;

architecture Behavioral of XOR_OPERATION is

begin

    -- loop for to do all bit xor of 3 inputs
    Xor_for : for i in 0 to 7 generate
        Xor_out(i) <= Opt1(i) xor Opt2(i) xor Opt3(i);
    end generate Xor_for;

end Behavioral;
