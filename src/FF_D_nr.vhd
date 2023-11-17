----------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------
entity FF_D_nr is
port(
		CLK,EN : in std_logic;
		D			  : in std_logic;
		Q			  : out std_logic
		);
end entity FF_D_nr;
----------------------------------------------------------
architecture beh of FF_D_nr is
begin
	process(CLK,EN) is
		begin
			if(EN = '1') then
				if(CLK'event AND CLK = '1') then
						Q <= D;
				end if;
			end if;
		end process;
end architecture beh;
----------------------------------------------------------