----------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------------
entity mux_4_1x32 is
port(
		control 						: in std_logic_vector(1 downto 0);
		dato0,dato1,dato2,dato3 : in std_logic_vector(31 downto 0);
		F								: out std_logic_vector(31 downto 0)
		);
end entity mux_4_1x32;
----------------------------------------------------------------
architecture beh of mux_4_1x32 is
begin
	with control select
		F <= 
				dato0 when "00",
				dato1 when "01",
				dato2 when "10",
				dato3 when "11";
end architecture beh;
----------------------------------------------------------------
		