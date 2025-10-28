library ieee;
use ieee.std_logic_1164.all;

entity Sumador_Completo is
	port( A: in std_logic;
			B: in std_logic;
			Cin: in std_logic;
			Cout: out std_logic;
			Sum: out std_logic);
end Sumador_Completo;
architecture comportamiento of Sumador_Completo is
	Signal Sig1,Sig2,Sig3,Sig4: std_logic;
begin
	Sig1 <= B xor Cin;
	Sum <= Sig1 xor A;
	Sig2 <= Cin and B;
	Sig3 <= A and B;
	Sig4 <= A and Cin;
	Cout<= Sig2 or Sig3 or Sig4;
end comportamiento;
	