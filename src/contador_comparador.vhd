------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------------------
entity contador_comparador is
port(
		CLK,EN,RST : in std_logic;
		igual : out std_logic
		);
end entity contador_comparador;
------------------------------------------------------------
architecture struc of contador_comparador is
	signal num_count : std_logic_vector(4 downto 0);
begin
	comparador : entity work.comparador_32 port map("11111",num_count,igual);
	counter	  : entity work.counter_32 port map(CLK,EN,RST,num_count);
	
end architecture struc;