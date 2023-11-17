------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------
entity sumador_n is
generic(
			constant n : natural := 16
			);
port(
		a,b : in std_logic_vector(n-1 downto 0);
		s  : out std_logic_vector(n-1 downto 0);
		cout : out std_logic
		);
end entity sumador_n;
------------------------------------------
architecture beh of sumador_n is
	signal ci : std_logic_vector(n downto 0);
begin
	ci(0) <= '0';
	
	adder : for i in 0 to n-1 generate
		data : entity work.full_adder port map(a(i),b(i),ci(i),s(i),ci(i+1));
	end generate adder;
	
	cout <= ci(n);
	
end architecture beh;
------------------------------------------