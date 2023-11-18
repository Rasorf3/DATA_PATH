------------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------------------------
entity data_path is
generic(
			constant n : natural := 32
			);
port(
		CLK,EN,RST :in std_logic;
		control_in,control_outA,control_outB : in std_logic_vector(4 downto 0);
		S : in std_logic_Vector(1 downto 0);
		REG_cout_out : out std_logic
		);
end entity data_path;
------------------------------------------------------------------
architecture struct of data_path is
	signal REG_A_out,REG_B_out,REG_C_out : std_logic_Vector(n-1 downto 0);
	signal REG_A_in,REG_B_in,REG_C_in : std_logic_Vector(n-1 downto 0);
	signal REG_cout_in : std_logic;
begin

	REG_A: entity work.registro_n_reset generic map(n) port map(CLK,EN,RST, REG_A_in,REG_A_out);
	
	REG_B: entity work.registro_n_reset generic map(n) port map(CLK,EN,RST, REG_B_in,REG_B_out);
	
	REG_C: entity work.registro_n_reset generic map(n) port map(CLK,EN,RST, REG_C_in,REG_C_out);
	
	REG_cout : entity work.FF_D port map(CLK,EN,RST,REG_cout_in, REG_cout_out);
	
	ALU : entity work.ALU_n generic map(n) port map(S,REG_A_out, REG_B_out, REG_C_in, REG_cout_in);
	
	REG_BANK : entity work.Block_REG generic map(n) port map(CLK,control_in,control_outA,control_outB,REG_C_out,REG_A_in,REG_B_in);
	
end architecture struct;
------------------------------------------------------------------