library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add6BitTest is 

end add6BitTest;

architecture test6Bit of add6BitTest is

	component adder6Bits
	port(
			A: in STD_LOGIC_VECTOR (5 downto 0);
			B: in STD_LOGIC_VECTOR (5 downto 0);
			Cin: in STD_LOGIC;
			S0_3: out STD_LOGIC_VECTOR (3 downto 0);
			S4_7: out STD_LOGIC_VECTOR (7 downto 4);
			Cout: out STD_LOGIC);
			
end component;

 signal A:  STD_LOGIC_VECTOR (5 downto 0);
 signal B:  STD_LOGIC_VECTOR (5 downto 0);
 
 signal Cin : std_logic;
 SIGNAL S: STD_LOGIC_VECTOR(7 DOWNTO 0);
 signal S0_3: STD_LOGIC_VECTOR (3 downto 0);
 signal S4_7: STD_LOGIC_VECTOR (7 downto 4);
 signal Cout : std_logic;

begin
	uut: adder6Bits PORT MAP ( 
	A,
	B,
	Cin,
	S0_3,
	S4_7,
	Cout);
	 
	 
 stim_proc: process
 begin
 

 
 A <= "000000";
 B <= "000000";
 Cin <= '0';
 wait for 10 ns;
 
 S <= ('0', Cout, S4_7(5), S4_7(4), S0_3(3), S0_3(2), S0_3(1), S0_3(0));
 
 wait for 15 ns;
 
 A <= "000001";
 B <= "000001";
 Cin <= '0';
 wait for 10 ns;
 
 S <= ('0', Cout, S4_7(5), S4_7(4), S0_3(3), S0_3(2), S0_3(1), S0_3(0));
 
 wait for 15 ns;
 
 A <= "000110";
 B <= "000010";
 Cin <= '1';
 wait for 10 ns;
 
 S <= ('0', Cout, S4_7(5), S4_7(4), S0_3(3), S0_3(2), S0_3(1), S0_3(0));
 
 wait for 15 ns;
 
 A <= "000010";
 B <= "000001";
 Cin <= '1';
 wait for 10 ns;
 
 S <= ('0', Cout, S4_7(5), S4_7(4), S0_3(3), S0_3(2), S0_3(1), S0_3(0));
 
 wait for 15 ns;
 
 end process;
 
end;
