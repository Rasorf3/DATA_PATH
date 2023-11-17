------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------------------
entity control_path is
port(
		CLK,EN,RST : in std_logic;
		load_num : in std_logic_vector(4 downto 0);
		igual : out std_logic	
		);
end entity control_path;
------------------------------------------------------------
architecture struc of control_path is
begin
	contar_comparar : entity work.contador_comparador port map(CLK,EN,RST,load_num,igual);
end architecture struc;