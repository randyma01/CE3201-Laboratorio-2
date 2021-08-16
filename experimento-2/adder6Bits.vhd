library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity adder6Bits is

	 port (A: in STD_LOGIC_VECTOR (5 downto 0);
			B: in STD_LOGIC_VECTOR (5 downto 0);
			Cin: in STD_LOGIC;
			S0_3: out STD_LOGIC_VECTOR (3 downto 0);
			S4_7: out STD_LOGIC_VECTOR (7 downto 4);
			Cout: out STD_LOGIC);
		
end adder6Bits;

architecture sum6 of adder6Bits is
	
	component fullAdder is

	port (A, B, Cin: in STD_LOGIC;
			S, Cout: out STD_LOGIC);
		
	end component;

signal C : STD_LOGIC_VECTOR (4 downto 0);
signal A0: STD_LOGIC;
signal B0: STD_LOGIC;
 
begin
-- Los botones son negados. 
 
fa0: fullAdder port map (A0, B0, Cin, S0_3(0), C(0));
fa1: fullAdder port map (A(1), B(1), C(0), S0_3(1), C(1));
fa2: fullAdder port map (A(2), B(2), C(1), S0_3(2), C(2));
fa3: fullAdder port map (A(3), B(3), C(2), S0_3(3), C(3));
fa4: fullAdder port map (A(4), B(4), C(3), S4_7(4), C(4));
fa5: fullAdder port map (A(5), B(5), C(4), S4_7(5), Cout);

 
end sum6;