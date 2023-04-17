library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity afficher is
    Port (  Clk 			    : in  STD_LOGIC;								-- Horloge 25 MHz
            Reset 			: in  STD_LOGIC;								-- Reset Asynchrone
		    game_type 	: in  STD_LOGIC;								-- Type de Jeu (Pong / Casse-Briques=
            sel_seg 		: out STD_LOGIC_VECTOR (7 downto 0); 	        -- Selection de l'Afficheur
            seg 			: out STD_LOGIC_VECTOR (7 downto 0);	-- Valeur des Segments de l'Afficheur
            );
end afficher;

--------------------------------------------------
-- Fonctionnement Afficheurs
--------------------------------------------------
--
--		- Segments Allum�s � 0, Eteints � 1
--		- Validation
--				- SEL = 0 --> Affichage des Segments
--				- SEL = 1 --> Segments Eteints

--		- Num�ro des Segments Afficheur (Point = 7)
--
--					  0
--				 --------
--				-		  -
--			 5	-	      - 1
--				-	  6	  -
--				 --------
--				-	      -
--			 4	-		  - 2
--				-		  -
--				 --------
--				     3
--
--------------------------------------------------


architecture Behavioral of aff_mgr_basys is

signal counter: integer range 0 to 100000; -- COmpteur de Temporisation
signal counter_7seg : std_logic_vector(3 downto 0);

begin

process(Clk, Reset)
    begin
        if reset = '0' then 
			counter<=0; 
            sel_seg <= not "0000"; 
            seg <= not "00000000";
			counter_7seg <= "0000";

        elsif rising_edge(Clk) then
      
			-- Gestion du Compteur
			counter <= counter + 1; 
            if (counter = 99999) then counter <= 0; end if;
   
			-- affichage de "CASSE BRI(ques)"
			case (nbbrick) is
				when "0000000" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "00111111"; --0
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0000001" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "00000110"; --1
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0000010" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01011011"; --2
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0000011" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01001111"; --3
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0000100" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01100110"; --4
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0000101" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01101101"; --5
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0000110" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01111101"; --6
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0000111" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "00000111"; --7
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0001000" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01111111"; --8
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0001001" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01101111"; --9
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00111111"; --0
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0001010" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "00111111"; --0
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00000110"; --1
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0001011" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "00000110"; --1
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00000110"; --1
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0001100" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01011011"; --2
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00000110"; --1
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0001101" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01001111"; --3
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00000110"; --1
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0001110" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01100110"; --4
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00000110"; --1
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0001111" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01101101"; --5
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00000110"; --1
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0010000" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01111101"; --6
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00000110"; --1
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0010001" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "00000111"; --7
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00000110"; --1
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				when "0010010" =>   case (counter)is
				                    when 00000 => sel_seg <= not "0001"; seg <= not "01111111"; --8
				                    when 25000 => sel_seg <= not "0010"; seg <= not "00000110"; --1
--				                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
--				                    when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                    when others => NULL;
				                    end case;
				
				
--				when 00000 => sel_seg <= not "0001"; seg <= not "00111001"; --not "00111001"; --C
--				when 25000 => sel_seg <= not "0010"; seg <= not "00010000"; --I
--				when 50000 => sel_seg <= not "0100"; seg <= not "01010000"; --R
--				when 75000 => sel_seg <= not "1000"; seg <= not "01111100"; --B
--				when 40000 => sel_seg <= not "00010000"; seg <= not "01101101"; --s
--				when 50000 => sel_seg <= not "00100000"; seg <= not "01101101"; --s
--				when 60000 => sel_seg <= not "01000000"; seg <= not "01110111"; --a
--				when 70000 => sel_seg <= not "10000000"; seg <= not "00111001"; --c

				when others => NULL;
			
			end case;    
            case (Time_Play) is
                when "00000000" =>  case (counter)is --0
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00000001" =>  case (counter)is --1
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000110"; --1
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00000010" =>  case (counter)is --2
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011011"; --2
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00000011" =>  case (counter)is --3
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01001111"; --3
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00000100" =>  case (counter)is --4
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01100110"; --4
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00000101" =>  case (counter)is --5
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --5
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00000110" =>  case (counter)is --6
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111101"; --6
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00000111" =>  case (counter)is --7
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000111"; --7
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00001000" =>  case (counter)is --8
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111111"; --8
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00001001" =>  case (counter)is --9
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101111"; --9
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00001010" =>  case (counter)is --10
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110111"; --A
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00001011" =>  case (counter)is --11
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111100"; --b
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00001100" =>  case (counter)is --12
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111001"; --C
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00001101" =>  case (counter)is --13
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011110"; --d
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00001110" =>  case (counter)is --14
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111001"; --E
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00001111" =>  case (counter)is --15
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110001"; --F
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00111111"; --0
				                        when others => NULL;
				                    end case;
                when "00010000" =>  case (counter)is --16
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00010001" =>  case (counter)is --17
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000110"; --1
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00010010" =>  case (counter)is --18
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011011"; --2
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00010011" =>  case (counter)is --19
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01001111"; --3
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00010100" =>  case (counter)is --20
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01100110"; --4
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00010101" =>  case (counter)is --21
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --5
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00010110" =>  case (counter)is --22
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --6
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00010111" =>  case (counter)is --23
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000111"; --7
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00011000" =>  case (counter)is --24
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111111"; --8
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00011001" =>  case (counter)is --25
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101111"; --9
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00011010" =>  case (counter)is --26
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110111"; --A
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00011011" =>  case (counter)is --27
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111100"; --b
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00011100" =>  case (counter)is --28
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111001"; --C
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00011101" =>  case (counter)is --29
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011110"; --d
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00011110" =>  case (counter)is --30
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111001"; --E
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00011111" =>  case (counter)is --31
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110001"; --F
				                        when 75000 => sel_seg <= not "1000"; seg <= not "00000110"; --1
				                        when others => NULL;
				                    end case;
                when "00100000" =>  case (counter)is --32
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00100001" =>  case (counter)is --33
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000110"; --1
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00100010" =>  case (counter)is --34
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011011"; --2
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00100011" =>  case (counter)is --35
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01001111"; --3
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00100100" =>  case (counter)is --36
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01100110"; --4
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00100101" =>  case (counter)is --37
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --5
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00100110" =>  case (counter)is --38
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --6
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00100111" =>  case (counter)is --39
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000111"; --7
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00101000" =>  case (counter)is --40
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111111"; --8
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00101001" =>  case (counter)is --41
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101111"; --9
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00101010" =>  case (counter)is --42
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110111"; --A
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00101011" =>  case (counter)is --43
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111100"; --b
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00101100" =>  case (counter)is --44
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111001"; --C
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00101101" =>  case (counter)is --45
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011110"; --d
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00101110" =>  case (counter)is --46
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111001"; --E
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00101111" =>  case (counter)is --47
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110001"; --F
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01011011"; --2
				                        when others => NULL;
				                    end case;
                when "00110000" =>  case (counter)is --48
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00110001" =>  case (counter)is --49
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000110"; --1
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00110010" =>  case (counter)is --50
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011011"; --2
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00110011" =>  case (counter)is --51
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01001111"; --3
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00110100" =>  case (counter)is --52
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01100110"; --4
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00110101" =>  case (counter)is --53
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --5
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00110110" =>  case (counter)is --54
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --6
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00110111" =>  case (counter)is --55
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000111"; --7
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00111000" =>  case (counter)is --56
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111111"; --8
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00111001" =>  case (counter)is --57
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101111"; --9
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00111010" =>  case (counter)is --58
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110111"; --A
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00111011" =>  case (counter)is --59
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111100"; --b
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00111100" =>  case (counter)is --60
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111001"; --C
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00111101" =>  case (counter)is --61
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011110"; --d
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00111110" =>  case (counter)is --62
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111001"; --E
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "00111111" =>  case (counter)is --63
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110001"; --F
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01001111"; --3
				                        when others => NULL;
				                    end case;
                when "01000000" =>  case (counter)is --64
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01000001" =>  case (counter)is --65
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000110"; --1
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01000010" =>  case (counter)is --66
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011011"; --2
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01000011" =>  case (counter)is --67
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01001111"; --3
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01000100" =>  case (counter)is --68
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01100110"; --4
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01000101" =>  case (counter)is --69
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --5
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01000110" =>  case (counter)is --70
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --6
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01000111" =>  case (counter)is --71
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000111"; --7
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01001000" =>  case (counter)is --72
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111111"; --8
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01001001" =>  case (counter)is --73
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101111"; --9
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01001010" =>  case (counter)is --74
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110111"; --A
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01001011" =>  case (counter)is --75
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111100"; --b
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01001100" =>  case (counter)is --76
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111001"; --C
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01001101" =>  case (counter)is --77
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011110"; --d
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01001110" =>  case (counter)is --78
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111001"; --E
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01001111" =>  case (counter)is --79
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110001"; --F
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01100110"; --4
				                        when others => NULL;
				                    end case;
                when "01010000" =>  case (counter)is --80
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --0
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01010001" =>  case (counter)is --81
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000110"; --1
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01010010" =>  case (counter)is --82
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01011011"; --2
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01010011" =>  case (counter)is --83
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01001111"; --3
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01010100" =>  case (counter)is --84
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01100110"; --4
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01010101" =>  case (counter)is --85
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --5
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01010110" =>  case (counter)is --86
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101101"; --6
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01010111" =>  case (counter)is --87
				                        when 50000 => sel_seg <= not "0100"; seg <= not "00000111"; --7
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01011000" =>  case (counter)is --88
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01111111"; --8
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01011001" =>  case (counter)is --89
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01101111"; --9
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
                when "01011010" =>  case (counter)is --90
				                        when 50000 => sel_seg <= not "0100"; seg <= not "01110111"; --A
				                        when 75000 => sel_seg <= not "1000"; seg <= not "01101101"; --5
				                        when others => NULL;
				                    end case;
            
            
            when others => NULL;
            end case;    
			if master_slave = '0' then 
			
			-- Affichage de "MANETTE"
				case (counter) is

				    when 00000 => sel_seg <= not "0001"; seg <= not "01111000"; --T
				    when 25000 => sel_seg <= not "0010"; seg <= not "01010100"; --N
				    when 50000 => sel_seg <= not "0100"; seg <= not "01110111"; --A
				    when 75000 => sel_seg <= not "1000"; seg <= not "00110111"; --M
					
--					when 00000 => sel_seg <= not "00000001"; seg <= not "00000000"; 
--					when 10000 => sel_seg <= not "00000010"; seg <= not "01111001"; --e
--					when 20000 => sel_seg <= not "00000100"; seg <= not "01111000"; --t
--					when 30000 => sel_seg <= not "00001000"; seg <= not "01111000"; --t
--					when 40000 => sel_seg <= not "00010000"; seg <= not "01111001"; --e
--					when 50000 => sel_seg <= not "00100000"; seg <= not "01010100"; --n
--					when 60000 => sel_seg <= not "01000000"; seg <= not "01110111"; --a
--					when 70000 => sel_seg <= not "10000000"; seg <= not "00110111"; --m
      
					when others => NULL;

				end case;

			-- Affichage de "PAUSE"
			elsif pause = '1' then       
     
				case (counter) is

				    when 00000 => sel_seg <= not "0001"; seg <= not "01101101"; --S
				    when 25000 => sel_seg <= not "0010"; seg <= not "00111110"; --U
				    when 50000 => sel_seg <= not "0100"; seg <= not "01110111"; --A
				    when 75000 => sel_seg <= not "1000"; seg <= not "01110011"; --P

--					when 00000 => sel_seg <= not "00000001"; seg <= not "00000000"; 
--					when 10000 => sel_seg <= not "00000010"; seg <= not "00000000"; 
--					when 20000 => sel_seg <= not "00000100"; seg <= not "00000000"; 
--					when 30000 => sel_seg <= not "00001000"; seg <= not "01111001"; --e
--					when 40000 => sel_seg <= not "00010000"; seg <= not "01101101"; --s
--					when 50000 => sel_seg <= not "00100000"; seg <= not "00111110"; --u
--					when 60000 => sel_seg <= not "01000000"; seg <= not "01110111"; --a
--					when 70000 => sel_seg <= not "10000000"; seg <= not "01110011"; --p
      
					when others => NULL;

				end case;
 
			-- Affichage de "PONG"
			elsif game_type = '1' then       
				
				case (counter) is
				
				    when 00000 => sel_seg <= not "0001"; seg <= not "01111101"; --G
                    when 25000 => sel_seg <= not "0010"; seg <= not "00110111"; --N
                    when 50000 => sel_seg <= not "0100"; seg <= not "00111111"; --O
                    when 75000 => sel_seg <= not "1000"; seg <= not "01110011"; --P

--					when 00000 => sel_seg <= not "00000001"; seg <= not "00000000"; --
--					when 10000 => sel_seg <= not "00000010"; seg <= not "00000000"; --
--					when 20000 => sel_seg <= not "00000100"; seg <= not "00000000"; --
--					when 30000 => sel_seg <= not "00001000"; seg <= not "00000000"; --
--					when 40000 => sel_seg <= not "00010000"; seg <= not "01111101"; --g
--					when 50000 => sel_seg <= not "00100000"; seg <= not "00110111"; --n
--					when 60000 => sel_seg <= not "01000000"; seg <= not "00111111"; --o
--					when 70000 => sel_seg <= not "10000000"; seg <= not "01110011"; --p
      
					when others => NULL;

				end case;
			end if;     
		end if;
	end process;
end Behavioral;

