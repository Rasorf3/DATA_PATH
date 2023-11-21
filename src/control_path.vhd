------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------------------
entity control_path is
port(
		CLK,EN,RST : in std_logic;
		igual : out std_logic	
		);
end entity control_path;
------------------------------------------------------------
architecture struc of control_path is
begin
	contar_comparar : entity work.contador_comparador port map(CLK,EN,RST,igual);
end architecture struc;