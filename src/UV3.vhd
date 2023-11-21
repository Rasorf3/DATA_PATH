------------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------------------------
entity UV3 is 
generic(
			constant n : natural := 32
			);
port(
		CLK,EN,RST,Write_Enable,control_REGC_REGIN :in std_logic;
		control_in,control_outA,control_outB,Read_Address,Write_Address : in std_logic_vector(4 downto 0);
		S : in std_logic_Vector(1 downto 0);
		shift : in std_logic_vector(2 downto 0);
		REG_cout_out : out std_logic
		);
end entity UV3;
------------------------------------------------------------------
architecture RTL of UV3 is
begin
	DATA_PATH : entity work.data_path 
		generic map(
						n
						) 
		port map(
					CLK,EN,RST,Write_Enable,control_REGC_REGIN,
					control_in,control_outA,control_outB,Read_Address,Write_Address,
					S,
					Shift, 
					REG_cout_out
					);
end architecture RTL;
