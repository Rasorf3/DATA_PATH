-----------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
-----------------------------------------------------------------
entity comparador_32 is 
port(
		num1,num2 : in std_logic_vector(4 downto 0);
		igual : out std_logic
		);
end entity comparador_32;
-----------------------------------------------------------------
architecture beh of comparador_32 is
begin
	igual <= '1' when num1 = num2 else
				'0';
end architecture beh;
-----------------------------------------------------------------