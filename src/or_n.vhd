----------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------------
entity or_n is
generic(
			constant n : natural := 32
			);
port(
		A,B : in std_logic_vector(n-1 downto 0);
		F	 : out std_logic_vector(n-1 downto 0)
		);
end entity or_n;
----------------------------------------------------------------
architecture flow of or_n is
begin
	F <= A or B;
end architecture flow;
----------------------------------------------------------------