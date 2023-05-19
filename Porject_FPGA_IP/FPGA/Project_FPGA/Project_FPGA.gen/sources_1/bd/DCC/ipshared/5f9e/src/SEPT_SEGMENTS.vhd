----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/08 16:13:29
-- Design Name: 
-- Module Name: SEPT_SEGMENTS - Behavioral
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

entity SEPT_SEGMENTS is
    Port (  Clk100 			: in  std_logic;								-- Horloge 100MHz
            Reset 			: in  std_logic;								-- Reset Asynchrone
            if_speed        : in std_logic;                                 --
            led_setting     : in std_logic_vector(5 downto 0);              -- Led_setting
            led_index       : in std_logic_vector(1 downto 0);              -- Led_index
            sel_seg 		: out std_logic_vector(3 downto 0); 	        -- Selection de l'Afficheur
            seg 			: out std_logic_vector(7 downto 0)         	    -- Valeur des Segments de l'Afficheur
            );
end SEPT_SEGMENTS;

architecture Behavioral of SEPT_SEGMENTS is

    signal counter: integer range 0 to 100000; -- Counter of temporisation

begin
    
    process(Clk100, Reset)
    begin
    
    if Reset = '1' then 
	    counter  <= 0;
        sel_seg  <= not "0000";
	    seg      <= not "00000000";
	    
    elsif rising_edge(Clk100) then
    
        -- Gestion du Compteur
		    counter <= counter + 1; 
            if (counter = 100000) then
                counter <= 0; 
            end if;
            
        -- Function affiche
        if led_index = "00" then
            -- Changing speed
            if led_setting = "000000" then
            
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "01011110";         -- d 12346
                    when 25000 => sel_seg <= not "0010"; seg <= not "01111001";         -- E 03456
                    when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                    when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                    when others => NULL;
                end case;    
			
			else -- F0 - 20
			    
			    if led_setting = "000001" then -- F0
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00111111";         -- 0 012345
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "000010" then -- F1
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000110";         -- 1 12
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "000011" then -- F2
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01011011";         -- 2 01346
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "000100" then -- F3
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01001111";         -- 3 01236
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "000101" then -- F4
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100110";         -- 4 1256
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "000110" then -- F5
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01101101";         -- 5 02356
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "000111" then -- F6
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111101";         -- 6 023456
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "001000" then -- F7
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000111";         -- 7 012
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "001001" then -- F8
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111111";         -- 8 0123456
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "001010" then -- F9
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100111";         -- 9 01256
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "001011" then -- F10
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00111111";         -- 0 012345
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "001100" then -- F11
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000110";         -- 1 12
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "001101" then -- F12
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01011011";         -- 2 01346
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "001110" then -- F13
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01001111";         -- 3 01236
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "001111" then -- F14
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100110";         -- 4 1256
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "010000" then -- F15
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01101101";         -- 5 02356
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "010001" then -- F16
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111101";         -- 6 023456
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "010010" then -- F17
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000111";         -- 7 012
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "010011" then -- F18
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111111";         -- 8 0123456
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "010100" then -- F19
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100111";         -- 9 01256
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;
                    
                elsif led_setting = "010101" then -- F20
			        
			        case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00111111";         -- 0 012345
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011000";         -- c 346
                        when 75000 => sel_seg <= not "1000"; seg <= not "01110001";         -- F 0456
                        when others => NULL;
                    end case;

                end if;
            end if;
        
        elsif led_index = "01" then

            -- Address train
            if led_setting = "000000" then
                
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "00111111";         -- 0 012345
                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                    when 50000 => sel_seg <= not "0100"; seg <= not "01011110";         -- d 12346
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110111";         -- A 012456
                    when others => NULL;
                end case;
            
            elsif led_setting = "000001" then -- 01
			        
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "00000110";         -- 1 12
                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                    when 50000 => sel_seg <= not "0100"; seg <= not "01011110";         -- d 12346
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110111";         -- A 012456
                    when others => NULL;
                end case;
                
            elsif led_setting = "000010" then -- 02
                
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "01011011";         -- 2 01346
                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                    when 50000 => sel_seg <= not "0100"; seg <= not "01011110";         -- d 12346
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110111";         -- A 012456
                    when others => NULL;
                end case;
                
            elsif led_setting = "000011" then -- 03
                
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "01001111";         -- 3 01236
                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                    when 50000 => sel_seg <= not "0100"; seg <= not "01011110";         -- d 12346
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110111";         -- A 012456
                    when others => NULL;
                end case;
                
            elsif led_setting = "000100" then -- 04
                
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "01100110";         -- 4 1256
                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                    when 50000 => sel_seg <= not "0100"; seg <= not "01011110";         -- d 12346
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110111";         -- A 012456
                    when others => NULL;
                end case;
                
            elsif led_setting = "000101" then -- 05
                
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "01101101";         -- 5 02356
                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                    when 50000 => sel_seg <= not "0100"; seg <= not "01011110";         -- d 12346
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110111";         -- A 012456
                    when others => NULL;
                end case;
                
            elsif led_setting = "000110" then -- 06
                
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "01111101";         -- 6 023456
                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                    when 50000 => sel_seg <= not "0100"; seg <= not "01011110";         -- d 12346
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110111";         -- A 012456
                    when others => NULL;
                end case;
                
            elsif led_setting = "000111" then -- 07
                
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "00000111";         -- 7 012
                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                    when 50000 => sel_seg <= not "0100"; seg <= not "01011110";         -- d 12346
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110111";         -- A 012456
                    when others => NULL;
                end case;
                
            elsif led_setting = "001000" then -- 08
                
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "01111111";         -- 8 0123456
                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                    when 50000 => sel_seg <= not "0100"; seg <= not "01011110";         -- d 12346
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110111";         -- A 012456
                    when others => NULL;
                end case;
            
            end if;
            
        elsif led_index = "10" then        

            -- Train direction
            if led_setting = "000000" then -- BW
                
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "00111111";         -- 0 012345
                    when 25000 => sel_seg <= not "0010"; seg <= not "01010000";         -- r 46
                    when 50000 => sel_seg <= not "0100"; seg <= not "00000100";         -- i 2
                    when 75000 => sel_seg <= not "1000"; seg <= not "01011110";         -- d 12346
                    when others => NULL;
                end case;
            
            elsif led_setting = "000001" then -- FW
			        
                case (counter) is
                    when 00000 => sel_seg <= not "0001"; seg <= not "00000110";         -- 1 12
                    when 25000 => sel_seg <= not "0010"; seg <= not "01010000";         -- r 46
                    when 50000 => sel_seg <= not "0100"; seg <= not "00000100";         -- i 2
                    when 75000 => sel_seg <= not "1000"; seg <= not "01011110";         -- d 12346
                    when others => NULL;
                end case;
            end if;

        elsif led_index = "11" then     
        
            if if_speed = '1' then -- affiche value
                
                if led_setting = "000000" then -- 00
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00111111";         -- 0 012345
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "000001" then -- 01
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000110";         -- 1 12
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "000010" then -- 02
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01011011";         -- 2 01346
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "000011" then -- 03
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01001111";         -- 3 01236
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "000100" then -- 04
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100110";         -- 4 1256
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "000101" then -- 05
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01101101";         -- 5 02356
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "000110" then -- 06
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111101";         -- 6 023456
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "000111" then -- 07
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000111";         -- 7 012
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "001000" then -- 08
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111111";         -- 8 0123456
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "001001" then -- 09
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100111";         -- 9 01256
                        when 25000 => sel_seg <= not "0010"; seg <= not "00111111";         -- 0 012345
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "001010" then -- 10
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00111111";         -- 0 012345
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "001011" then -- 11
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000110";         -- 1 12
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "001100" then -- 12
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01011011";         -- 2 01346
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "001101" then -- 13
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01001111";         -- 3 01236
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "001110" then -- 14
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100110";         -- 4 1256
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "001111" then -- 15
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01101101";         -- 5 02356
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "010000" then -- 16
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111101";         -- 6 023456
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "010001" then -- 17
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000111";         -- 7 012
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "010010" then -- 18
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111111";         -- 8 0123456
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "010011" then -- 19
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100111";         -- 9 01256
                        when 25000 => sel_seg <= not "0010"; seg <= not "00000110";         -- 1 12
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "010100" then -- 20
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00111111";         -- 0 012345
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "010101" then -- 21
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000110";         -- 1 12
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "010110" then -- 22
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01011011";         -- 2 01346
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "010111" then -- 23
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01001111";         -- 3 01236
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "011000" then -- 24
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100110";         -- 4 1256
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "011001" then -- 25
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01101101";         -- 5 02356
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "011010" then -- 26
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111101";         -- 6 023456
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "011011" then -- 27
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000111";         -- 7 012
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "011100" then -- 28
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01111111";         -- 8 0123456
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "011101" then -- 29
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01100111";         -- 9 01256
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011011";         -- 2 01346
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "011110" then -- 30
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00111111";         -- 0 012345
                        when 25000 => sel_seg <= not "0010"; seg <= not "01001111";         -- 3 01236
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
            
                elsif led_setting = "011111" then -- 31
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "00000110";         -- 1 12
                        when 25000 => sel_seg <= not "0010"; seg <= not "01001111";         -- 3 01236
                        when 50000 => sel_seg <= not "0100"; seg <= not "01110011";         -- P 01456
                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101";         -- S 05623
                        when others => NULL;
                    end case;
                end if;
            
            elsif if_speed = '0' then -- ON/OFF
                
                if led_setting = "000000" then -- OFF
                            
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01110001";         -- F 0456
                        when 25000 => sel_seg <= not "0010"; seg <= not "01110001";         -- F 0456
                        when 50000 => sel_seg <= not "0100"; seg <= not "01011100";         -- O 2346
                        when 75000 => sel_seg <= not "1000"; seg <= not "00000000";         -- 
                        when others => NULL;
                    end case;
            
                elsif led_setting = "000001" then -- ON
                        
                    case (counter) is
                        when 00000 => sel_seg <= not "0001"; seg <= not "01010100";         -- N 246
                        when 25000 => sel_seg <= not "0010"; seg <= not "01011100";         -- O 2346
                        when 50000 => sel_seg <= not "0100"; seg <= not "00000000";         -- 
                        when 75000 => sel_seg <= not "1000"; seg <= not "00000000";         -- 
                        when others => NULL;
                    end case;

                end if;
            end if;
        end if;
    end if;
    
	end process;
end Behavioral;               
            
            
                