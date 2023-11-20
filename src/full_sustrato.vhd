------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------------
entity full_sustrato is
port(
		a,b,cin : in std_logic;
		res,cout : out std_logic
		);
end entity full_sustrato;
------------------------------------------------------
architecture flow of full_sustrato is
	signal m1,m2,m3,m4,m7 : std_logic;
begin
	m1 <= not(a) and not(b) and cin;
	m2 <= not(a) and b and not(cin);
	m3 <= not(a) and b and cin;
	m4 <= a and not(b) and not(cin);
	m7 <= a and b and cin;
	res <= m1 or m2 or m4 or m7;
	cout <= m1 or m2 or m3 or m7;
end architecture flow;
------------------------------------------------------