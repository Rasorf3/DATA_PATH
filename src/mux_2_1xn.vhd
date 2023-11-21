----------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------------
entity mux_2_1xn is
generic(
			n : natural := 32
			);
port(
		control 						: in std_logic;
		dato0,dato1 : in std_logic_vector(n-1 downto 0);
		F								: out std_logic_vector(n-1 downto 0)
		);
end entity mux_2_1xn;
----------------------------------------------------------------
architecture beh of mux_2_1xn is
begin
	with control select
		F <= 
				dato0 when '0',
				dato1 when '1';
end architecture beh;
----------------------------------------------------------------