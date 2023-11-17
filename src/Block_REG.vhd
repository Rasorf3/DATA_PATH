----------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------
entity Block_REG is
generic(
			constant n : natural := 32
			);
port(
		CLK : in std_logic;
		control_in,control_outA,control_outB : in std_logic_vector(4 downto 0);
		D : in std_logic_Vector(n-1 downto 0);
		A,B	: out std_logic_Vector(n-1 downto 0)
		);
end entity Block_REG;
----------------------------------------------------------
architecture beh of Block_REG is
	signal Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31 : std_logic_vector(n-1 downto 0);
	signal EN : std_logic_vector(n-1 downto 0);
begin
	decode_outA : entity  work.decode_16x16 port map(control_outA,
																	Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31,A
																	);
	decode_outB : entity  work.decode_16x16 port map(control_outB,
																	Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31,B
																	);
	decode_in : entity  work.decode_1_16 port map(control_in,EN);
	file_reg : entity work.File32x32 generic map(n) port map(CLK,EN,
																				D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,
																				Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31
																				);
end architecture beh;
----------------------------------------------------------