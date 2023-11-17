----------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------------
entity and_n is
generic(
			constant n : natural := 32
			);
port(
		A,B : in std_logic_vector(n-1 downto 0);
		F	 : out std_logic_vector(n-1 downto 0)
		);
end entity and_n;
----------------------------------------------------------------
architecture flow of and_n is
begin
	F <= A AND B;
end architecture flow;
----------------------------------------------------------------