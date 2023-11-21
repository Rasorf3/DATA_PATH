------------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------------------------
entity data_path is
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
end entity data_path;
------------------------------------------------------------------
architecture struct of data_path is
	signal REG_A_out,REG_B_out,REG_C_out : std_logic_Vector(n-1 downto 0);
	signal REG_A_in,REG_B_in,REG_C_in,REG_BANK_IN,REG_IN_out : std_logic_Vector(n-1 downto 0);
	signal REG_cout_in : std_logic;
	signal ReadData,WriteData : std_logic_vector(n-1 downto 0);
	signal Shifter_in : std_logic_vector(n-1 downto 0);
begin

	REG_A: entity work.registro_n_reset generic map(n) port map(CLK,EN_REG_A,RST_REG_A, REG_A_in,REG_A_out);
	
	REG_B: entity work.registro_n_reset generic map(n) port map(CLK,EN_REG_B,RST_REG_B, REG_B_in,REG_B_out);
	
	REG_C: entity work.registro_n_reset generic map(n) port map(CLK,EN_REG_C,RST_REG_C, REG_C_in,REG_C_out);
	
	REG_cout : entity work.FF_D port map(CLK,EN_REG_COUT,RST_REG_COUT,REG_cout_in, REG_cout_out);
	
	ALU : entity work.ALU_n generic map(n) port map(S,REG_A_out, REG_B_out, Shifter_in, REG_cout_in);
	
	REG_BANK : entity work.Block_REG generic map(n) port map(CLK,control_in,control_outA,control_outB,REG_BANK_IN,REG_A_in,REG_B_in);
	
	REG_OUT : entity work.registro_n_reset generic map(n) port map(CLK,EN_REG_OUT,RST_REG_OUT, REG_B_in,WriteData);
	
	RAM : entity work.RAM_n generic map(5) port map(CLK, WriteData,ReadData,Read_Address,Write_Address,Write_Enable);
	
	REG_IN : entity work.registro_n_reset generic map(n) port map(CLK,EN_REG_IN,RST_REG_IN, ReadData,REG_IN_out);
	
	MUX_REG_C_REG_IN : entity work.mux_2_1xn generic map(n) port map(control_REGC_REGIN,REG_C_out,REG_IN_out,REG_BANK_IN);
	
	Shifter : entity work.Shifter generic map(n) port map(shift,Shifter_in,REG_C_in);
end architecture struct;
------------------------------------------------------------------