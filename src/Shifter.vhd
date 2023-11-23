---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
---------------------------------------------------
entity Shifter is
generic(
			n: natural:=32
			);
port(
		S : in std_logic_vector(2 downto 0);
		D_IN: in std_logic_vector(n-1 downto 0);
		D_OUT: out std_logic_vector(n-1 downto 0)
		);
end entity Shifter;
---------------------------------------------------
architecture beh of Shifter is
begin
	process(S,D_IN) is
		variable D_out_aux,D_in_aux : std_logic_vector(n-1 downto 0);
	begin
		D_in_aux := D_IN;
		-- TRANSFERIR
		if(S = "100") then	
			D_out_aux := D_in_aux;
		--	DESPLAZAR IZQUIERDA CON 0
		elsif(S = "000") then	
			for j in n-1 downto 1 loop
				D_out_aux(j) := D_in_aux(j-1);
			end loop;
			D_out_aux(0) := '0';
		-- DESPLAZAR IZQUIERDA CON 1
		elsif(S = "001") then	
			for j in n-1 downto 1 loop
				D_out_aux(j) := D_in_aux(j-1);
			end loop;
			D_out_aux(0) := '1';	
		-- DESPLAZAR DERECHA CON 0
		elsif(S = "010") then 
			for j in n-2 downto 0 loop
				D_out_aux(j) := D_in_aux(j+1);
			end loop;
			D_out_aux(n-1) := '0';
		-- DESPLAZAR DERECHA CON 1
		elsif(S = "011") then
			for j in n-2 downto 0 loop
				D_out_aux(j) := D_in_aux(j+1);	
			end loop;
			D_out_aux(n-1) := '1';
		-- DESPLAZAMIENTO ARITMETICO A LA DERECHA
		elsif(S = "101") then
			for j in n-3 downto 0 loop
				D_out_aux(j) := D_in_aux(J+1);
			end loop;
			D_out_aux(n-1) := D_in(n-1);
			D_out_aux(n-2) := D_in(n-1);
			
		--DESPLAZAMIENTO ARITMETICO A LA IZQUIERDA
		elsif(S = "110") then
			for j in n-2 downto 1 loop
				D_out_aux(j) := D_in_aux(J-1);
			end loop;
			D_out_aux(n-1) := D_in(n-1);
			D_out_aux(0) := '0';
		else
			D_out_aux := D_in_aux;
		end if;
		D_OUT <= D_out_aux;
	end process;
end architecture beh;
			
		
			