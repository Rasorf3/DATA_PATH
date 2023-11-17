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
		control_in,control_outA,control_outB : std_logic_vector(4 downto 0);
		REGC : in std_logic_vector(n-1 downto 0);
		REGA,REGB : out std_logic_vector(n-1 downto 0)
		);
end entity data_path;
------------------------------------------------------------------
architecture struct of data_path is
	signal REGA_AUX,REGB_AUX,REGC_AUX : std_logic_Vector(n-1 downto 0);
begin

	REGIA: entity work.registro_n_reset generic map(n) port map(CLK,EN,RST, REGA_AUX,REGA);
	
	REGIB: entity work.registro_n_reset generic map(n) port map(CLK,EN,RST, REGB_AUX,REGB);
	
	REGIC: entity work.registro_n_reset generic map(n) port map(CLK,EN,RST, REGC,REGC_AUX);
	
	REG_BANK : entity work.Block_REG generic map(n) port map(CLK,control_in,control_outA,control_outB,REGC_AUX,REGA_AUX,REGB_AUX);
	
end architecture struct;