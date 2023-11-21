------------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------------------------
entity UV3 is 
generic(
			constant n : natural := 32
			);
port(
		CLK : in std_logic;
		EN_REG_A,EN_REG_B,EN_REG_C,EN_REG_IN,EN_REG_OUT,EN_REG_COUT : in std_logic;
		RST_REG_A,RST_REG_B,RST_REG_C,RST_REG_OUT,RST_REG_IN,RST_REG_COUT : in std_logic;
		Write_Enable,control_REGC_REGIN :in std_logic;
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
				CLK,
				EN_REG_A,EN_REG_B,EN_REG_C,EN_REG_IN,EN_REG_OUT,EN_REG_COUT,
				RST_REG_A,RST_REG_B,RST_REG_C,RST_REG_OUT,RST_REG_IN,RST_REG_COUT,
				Write_Enable,control_REGC_REGIN,
				control_in,control_outA,control_outB,Read_Address,Write_Address,
				S,
				shift,
				REG_cout_out
				);
end architecture RTL;
