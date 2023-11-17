----------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------
entity FF_D is
port(
		CLK,EN,RST : in std_logic;
		D			  : in std_logic;
		Q			  : out std_logic
		);
end entity FF_D;
----------------------------------------------------------
architecture beh of FF_D is
begin
	process(CLK,EN,RST) is
		begin
			if(RST = '0') then
				Q <= '0';
			else
				if(EN = '1') then
					if(CLK'event AND CLK = '1') then
						Q <= D;
					end if;
				end if;
			end if;
		end process;
end architecture beh;
----------------------------------------------------------

