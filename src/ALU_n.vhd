----------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------------
entity ALU_n is
generic(
			constant n : natural := 32
			);
port(
		S	 : in std_logic_vector(1 downto 0);
		A,B : in std_logic_vector(n-1 downto 0);
		result : out std_logic_vector(n-1 downto 0);
		cout : out std_logic
		);
end entity ALU_n;
----------------------------------------------------------------
architecture struc of ALU_n is
	signal suma, resta, and_op,or_op : std_logic_vector(n-1 downto 0);
	signal cout_suma, cout_resta : std_logic;
begin
	opera_sum : entity work.sumador_n generic map(n) port map(A,B,suma, cout_suma);
	
	opera_res : entity work.restador_n generic map(n) port map(A,B,resta, cout_resta);
	
	opera_and : entity work.and_n generic map(n) port map(A,B,and_op);
	
	opera_or  : entity work.or_n generic map(n) port map(A,B,or_op);
	
	decode_ope : entity work.mux_4_1x32 port map(S,suma,resta,and_op,or_op,result);
	
	decode_cout : entity work.mux_2_1 port map(S(0),cout_suma,cout_resta,cout);
	
end architecture struc;
----------------------------------------------------------------