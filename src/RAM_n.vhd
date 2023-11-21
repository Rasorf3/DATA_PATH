----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all; 
----------------------------------------------------------------------------
entity RAM_n is	
generic(
			n : natural := 5
			);
port(
		CLK		: in   std_logic; 
		WriteData	: in   std_logic_vector(2**n-1 downto 0);	
		ReadData	: out  std_logic_vector(2**n-1 downto 0);
		Read_Address	: in   std_logic_vector(n-1 downto 0);
		Write_Address	: in   std_logic_vector(n-1 downto 0);
		Write_Enable	: in   std_logic 				
		);
end entity RAM_n ;
----------------------------------------------------------------------------
architecture beh of RAM_n is
	type memory_t is array(0 to 2**n-1 ) of std_logic_vector(2**n-1 downto 0);
	 signal MyRam : memory_t ;
begin
	process (CLK) 
		begin
			if (CLK'event and CLK = '1') then
            if (Write_Enable = '1')  then
               MyRam (to_integer(unsigned(Write_Address))) <= WriteData;
            end if;    
              ReadData <= MyRam(to_integer(unsigned(Read_Address)));    
         end if;
    	end process;
end architecture beh;
-----------------------------------------------------------------------------
