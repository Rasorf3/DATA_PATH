----------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------
entity registro_n is
generic(
			constant n : natural := 10
			);
port(
		CLK,EN,RST : in std_logic;
		D			  : in std_logic_vector(n-1 downto 0);
		Q			  : out std_logic_vector(n-1 downto 0)
		);
end entity registro_n;
----------------------------------------------------------
architecture beh of registro_n is
begin
	REG : for i in 0 to n-1 generate
		REG: entity work.FF_D port map(CLK,EN,RST,D(i),Q(i));
		end generate REG;
end architecture beh;
----------------------------------------------------------