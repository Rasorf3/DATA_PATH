--------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
--------------------------------------------------
entity counter_32 is
port(
		CLK,EN, RST : in std_logic;
		numero : out std_logic_vector(4 downto 0)
		);
end entity counter_32;
--------------------------------------------------
architecture beh of counter_32 is
	type estados is(S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31);
	signal PS, NS : estados := S0;
begin
	FF_D : process(CLK,EN,RST) is
		begin
			if(RST ='0') then
				PS <= S0;
			else
				if(EN ='1') then
					if(CLK'event and CLK = '1') then
						PS <= NS;
					end if;
				end if;
			end if;
		end process FF_D;
	
	FSM : process(PS) is
		begin
			case(PS) is
				
				when S0 =>
					numero <= "00000";
					NS <= S1;
				
				when S1 =>
					numero <= "00001";
					NS <= S2;
					
				when S2 =>
					numero <= "00010";
					NS <= S3;
					
				when S3 =>
					numero <= "00011";
					NS <= S4;
					
				when S4 =>
					numero <= "00100";
					NS <= S5;
					
				when S5 =>
					numero <= "00101";
					NS <= S6;
					
				when S6 =>
					numero <= "00110";
					NS <= S7;
					
				when S7 =>
					numero <= "00111";
					NS <= S8;
					
				when S8 =>
					numero <= "01000";
					NS <= S9;
				
				when S9 =>
					numero <= "01001";
					NS <= S10;
					
				when S10 =>
					numero <= "01010";
					NS <= S11;
					
				when S11 =>
					numero <= "01011";
					NS <= S12;
					
				when S12 =>
					numero <= "01100";
					NS <= S13;
					
				when S13 =>
					numero <= "01101";
					NS <= S14;
					
				when S14 =>
					numero <= "01110";
					NS <= S15;
					
				when S15 =>
					numero <= "01111";
					NS <= S16;
					
				when S16 =>
					numero <= "10000";
					NS <= S17;
				
				when S17 =>
					numero <= "10001";
					NS <= S18;
					
				when S18 =>
					numero <= "10010";
					NS <= S19;
					
				when S19 =>
					numero <= "10011";
					NS <= S20;
					
				when S20 =>
					numero <= "10100";
					NS <= S21;
					
				when S21 =>
					numero <= "10101";
					NS <= S22;
					
				when S22 =>
					numero <= "10110";
					NS <= S23;
					
				when S23 =>
					numero <= "10111";
					NS <= S24;
					
				when S24 =>
					numero <= "11000";
					NS <= S25;
				
				when S25 =>
					numero <= "11001";
					NS <= S26;
					
				when S26 =>
					numero <= "11010";
					NS <= S27;
					
				when S27 =>
					numero <= "11011";
					NS <= S28;
					
				when S28 =>
					numero <= "11100";
					NS <= S29;
					
				when S29 =>
					numero <= "11101";
					NS <= S30;
					
				when S30 =>
					numero <= "11110";
					NS <= S31;
					
				when S31 =>
					numero <= "11111";
					NS <= S0;
					
			end case;
		end process FSM;
end architecture beh;

					

					

					
				