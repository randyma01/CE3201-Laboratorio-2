
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_fourBitFullAdder is
end tb_fourBitFullAdder;


architecture TEST of tb_fourBitFullAdder is 

	component fourBitFullAdder
		port( a, b		: in    	STD_LOGIC_VECTOR(3 downto 0);
		      sum4		: out		STD_LOGIC_VECTOR(3 downto 0);
		      cout		: out 	STD_LOGIC		);
	end component;

	for U1: fourBitFullAdder use entity WORK.fourBitFullAdder(STRUCTURE);
	signal a, b		: STD_LOGIC_VECTOR(3 downto 0);
	signal sum4		: STD_LOGIC_VECTOR(3 downto 0);
	signal cout		: STD_LOGIC;
	
	begin
	U1: fourBitFullAdder port map (a,b,sum4,cout);
	
		process
		begin

		-- Prueba 1 
			a <= "0000";
			b <= "0000";
			wait for 10 ns;
			assert ( SUM4 = "0000" )	report "Falla la suma P1" severity error;
			assert ( Cout = '0' )   report "Falla el carry P1" severity error;
			wait for 40 ns;

		-- Prueba 2 

			a <= "1010";
			b <= "1010";
			wait for 10 ns;
			assert ( SUM4 = "0100" )	report "Falla la suma P2" severity error;
			assert ( Cout = '1' )   report "Falla el carry P2" severity error;
			wait for 40 ns;
			
			
		-- Prueba 3 

			a <= "0010";
			b <= "0011";
			wait for 10 ns;
			assert ( SUM4 = "0101" )	report "Falla la suma P3" severity error;
			assert ( Cout = '0' )   report "Falla en carry P3" severity error;
			wait for 40 ns;
			
		-- Prueba 4 

			a <= "0111";
			b <= "0111";
			wait for 10 ns;
			assert ( SUM4 = "1110" )	report "Falla la suma P4" severity error;
			assert ( Cout = '0' )   report "Falla en carry P4" severity error;
			wait for 40 ns;

			
		-- Prueba 5

			a <= "1100";
			b <= "1100";
			wait for 10 ns;
			assert ( SUM4 = "1000" )	report "Falla la suma P5" severity error;
			assert ( Cout = '1' )   report "Falla en carry P5" severity error;
			wait for 40 ns;

			
		-- Prueba 6 

			a <= "0001";
			b <= "0001";
			wait for 10 ns;
			assert ( SUM4 = "0010" )	report "Falla la suma P6" severity error;
			assert ( Cout = '0' )   report "Falla en carry P6" severity error;
			wait for 40 ns;

		-- Prueba 7 

			a <= "1111";
			b <= "0001";
			wait for 10 ns;
			assert ( SUM4 = "0000" )	report "Falla la suma P7" severity error;
			assert ( Cout = '1' )   report "Falla en carry P7" severity error;
			wait for 40 ns;

			
		-- Prueba 8 

			a <= "0100";
			b <= "0011";
			wait for 10 ns;
			assert ( SUM4 = "0111" )	report "Falla la suma P8" severity error;
			assert ( Cout = '0' )   report "Falla en carry P8" severity error;
			wait for 40 ns;

		end process;
END TEST;