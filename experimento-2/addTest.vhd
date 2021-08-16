library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity addTest is 

end addTest;

architecture test of addTest is

	component fullAdder
	port(
	 A : in std_logic;
	 B : in std_logic;
	 Cin : in std_logic;
	 S : out std_logic;
	 Cout : out std_logic);

end component;

 signal A : std_logic := '0';
 signal B : std_logic := '0';
 signal Cin : std_logic := '0';
 
 signal S : std_logic;
 signal Cout : std_logic;

begin
	uut: fullAdder PORT MAP (
	 A => A,
	 B => B,
	 Cin => Cin,
	 S => S,
	 Cout => Cout
	 );
 
 
 stim_proc: process
 begin
 
 A <= '1';
 B <= '0';
 Cin <= '0';
 wait for 1 ns;
 
 A <= '0';
 B <= '1';
 Cin <= '0';
 wait for 1 ns;
 
 A <= '1';
 B <= '1';
 Cin <= '0';
 wait for 1 ns;
 
 A <= '0';
 B <= '0';
 Cin <= '1';
 wait for 1 ns;
 
 A <= '1';
 B <= '0';
 Cin <= '1';
 wait for 1 ns;
 
 A <= '0';
 B <= '1';
 Cin <= '1';
 wait for 1 ns;
 
 A <= '1';
 B <= '1';
 Cin <= '1';
 wait for 1 ns;
 
 end process;
 
end;
