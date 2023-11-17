----------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
----------------------------------------------------------
entity File32x32 is
generic(
			constant n : natural := 32
			);
port(
		CLK : in std_logic;
		EN,RST : in std_logic_vector(n-1 downto 0);
		D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31 : in std_logic_Vector(n-1 downto 0);
		Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31 : out std_logic_Vector(n-1 downto 0)
		);
end entity File32x32;
----------------------------------------------------------
architecture beh of File32x32 is
begin
	REG0: entity work.registro_n generic map(n) port map(CLK,EN(0),RST(0),D0,Q0);
	REG1: entity work.registro_n generic map(n) port map(CLK,EN(1),RST(1),D1,Q1);
	REG2: entity work.registro_n generic map(n) port map(CLK,EN(2),RST(2),D2,Q2);
	REG3: entity work.registro_n generic map(n) port map(CLK,EN(3),RST(3),D3,Q3);
	REG4: entity work.registro_n generic map(n) port map(CLK,EN(4),RST(4),D4,Q4);
	REG5: entity work.registro_n generic map(n) port map(CLK,EN(5),RST(5),D5,Q5);
	REG6: entity work.registro_n generic map(n) port map(CLK,EN(6),RST(6),D6,Q6);
	REG7: entity work.registro_n generic map(n) port map(CLK,EN(7),RST(7),D7,Q7);
	REG8: entity work.registro_n generic map(n) port map(CLK,EN(8),RST(8),D8,Q8);
	REG9: entity work.registro_n generic map(n) port map(CLK,EN(9),RST(9),D9,Q9);
	REG10: entity work.registro_n generic map(n) port map(CLK,EN(10),RST(10),D10,Q10);
	REG11: entity work.registro_n generic map(n) port map(CLK,EN(11),RST(11),D11,Q11);
	REG12: entity work.registro_n generic map(n) port map(CLK,EN(12),RST(12),D12,Q12);
	REG13: entity work.registro_n generic map(n) port map(CLK,EN(13),RST(13),D13,Q13);
	REG14: entity work.registro_n generic map(n) port map(CLK,EN(14),RST(14),D14,Q14);
	REG15: entity work.registro_n generic map(n) port map(CLK,EN(15),RST(15),D15,Q15);
	REG16: entity work.registro_n generic map(n) port map(CLK,EN(16),RST(16),D16,Q16);
	REG17: entity work.registro_n generic map(n) port map(CLK,EN(17),RST(17),D17,Q17);
	REG18: entity work.registro_n generic map(n) port map(CLK,EN(18),RST(18),D18,Q18);
	REG19: entity work.registro_n generic map(n) port map(CLK,EN(19),RST(19),D19,Q19);
	REG20: entity work.registro_n generic map(n) port map(CLK,EN(20),RST(20),D20,Q20);
	REG21: entity work.registro_n generic map(n) port map(CLK,EN(21),RST(21),D21,Q21);
	REG22: entity work.registro_n generic map(n) port map(CLK,EN(22),RST(22),D22,Q22);
	REG23: entity work.registro_n generic map(n) port map(CLK,EN(23),RST(23),D23,Q23);
	REG24: entity work.registro_n generic map(n) port map(CLK,EN(24),RST(24),D24,Q24);
	REG25: entity work.registro_n generic map(n) port map(CLK,EN(25),RST(25),D25,Q25);
	REG26: entity work.registro_n generic map(n) port map(CLK,EN(26),RST(26),D26,Q26);
	REG27: entity work.registro_n generic map(n) port map(CLK,EN(27),RST(27),D27,Q27);
	REG28: entity work.registro_n generic map(n) port map(CLK,EN(28),RST(28),D28,Q28);
	REG29: entity work.registro_n generic map(n) port map(CLK,EN(29),RST(29),D29,Q29);
	REG30: entity work.registro_n generic map(n) port map(CLK,EN(30),RST(30),D30,Q30);
	REG31: entity work.registro_n generic map(n) port map(CLK,EN(31),RST(31),D31,Q31);
end architecture beh;
----------------------------------------------------------