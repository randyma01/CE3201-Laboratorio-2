LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_oneBitFullAdder is
end tb_oneBitFullAdder;

architecture TEST of tb_oneBitFullAdder is

	component oneBitFullAdder 
		port( a, b, cin         : in  STD_LOGIC;
	      	sum, cout         : out STD_LOGIC );
	end component;

	
	for U1: oneBitFullAdder use entity WORK.oneBitFullAdder(BHV);


	signal A_s, B_s	: STD_LOGIC;
	signal CIN_s	: STD_LOGIC;
	signal SUM_s	: STD_LOGIC;
	signal COUT_s	: STD_LOGIC;

	begin
	

	U1: oneBitFullAdder port map (A_s, B_s, CIN_s, SUM_s, COUT_s);
	
	
	process
	begin

		-- Caso 0 : 0 y 0 con carry 0.
		A_s <= '0';
		B_s <= '0';
		CIN_s <= '0';
		

		wait for 10 ns;
		assert ( SUM_s = '0'  ) report "Falla Caso 0 - SUM" severity error;
		assert ( COUT_s = '0' ) report "Falla Caso 0 - COUT" severity error;
		wait for 40 ns;


		-- Caso 1 : 0 y 0 con carry 1.
		A_s <= '0';
		B_s <= '0';
		CIN_s <= '1';
		wait for 10 ns;
		assert ( SUM_s = '1'  ) report "Falla Caso 1 - SUM" severity error;
		assert ( COUT_s = '0' ) report "Falla Caso 1 - COUT" severity error;
		wait for 40 ns;

		-- Caso 2 : 0 y 1 con carry 0.
		A_s <= '0';
		B_s <= '1';
		CIN_s <= '0';
		wait for 10 ns;
		assert ( SUM_s = '1'  ) report "Falla Caso 2 - SUM" severity error;
		assert ( COUT_s = '0' ) report "Falla Caso 2 - COUT" severity error;
		wait for 40 ns;

		-- Caso 3 : 0 y 1 con carry 1.
		A_s <= '0';
		B_s <= '1';
		CIN_s <= '1';
		wait for 10 ns;
		assert ( SUM_s = '0'  ) report "Falla Caso 3 - SUM" severity error;
		assert ( COUT_s = '1' ) report "Falla Caso 3 - COUT" severity error;
		wait for 40 ns;

		-- Caso 4 : 1 y 0 con carry 0.
		A_s <= '1';
		B_s <= '0';
		CIN_s <= '0';
		wait for 10 ns;
		assert ( SUM_s = '1'  ) report "Falla Caso 4 - SUM" severity error;
		assert ( COUT_s = '0' ) report "Falla Caso 4 - COUT" severity error;
		wait for 40 ns;

		-- Caso 5 : 1 y 0 con carry 1.
		A_s <= '1';
		B_s <= '0';
		CIN_s <= '1';
		wait for 10 ns;
		assert ( SUM_s = '0'  ) report "Falla Caso 5 - SUM" severity error;
		assert ( COUT_s = '1' ) report "Falla Caso 5 - COUT" severity error;
		wait for 40 ns;

		-- Caso 6 : 1 y 1 con carry 0.
		A_s <= '1';
		B_s <= '1';
		CIN_s <= '0';
		wait for 10 ns;
		assert ( SUM_s = '0'  ) report "Falla Caso 6 - SUM" severity error;
		assert ( COUT_s = '1' ) report "Falla Caso 6 - COUT" severity error;
		wait for 40 ns;

		-- Caso 7 : 1 y 1 con carry 1.
		A_s <= '1';
		B_s <= '1';
		CIN_s <= '1';
		wait for 10 ns;
		assert ( SUM_s = '1'  ) report "Falla Caso 7 - SUM" severity error;
		assert ( COUT_s = '1' ) report "Falla Caso 7 - COUT" severity error;
		wait for 40 ns;

	end process;
END TEST;
