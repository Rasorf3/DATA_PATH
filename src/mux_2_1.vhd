----------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------------
entity mux_2_1 is
port(
		control 						: in std_logic;
		dato0,dato1 : in std_logic;
		F								: out std_logic
		);
end entity mux_2_1;
----------------------------------------------------------------
architecture beh of mux_2_1 is
begin
	with control select
		F <= 
				dato0 when '0',
				dato1 when '1';
end architecture beh;
----------------------------------------------------------------