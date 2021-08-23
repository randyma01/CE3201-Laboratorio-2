LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fourBitFullAdder is
	port( a, b		: in	STD_LOGIC_VECTOR(3 downto 0);
	      sum4		: out	STD_LOGIC_VECTOR(3 downto 0);
	      cout		: out	STD_LOGIC		);
end fourBitFullAdder;


architecture STRUCTURE of fourBitFullAdder is

--Utilizamos el sumador completo de un bit creado anteriormente

component oneBitFullAdder
	port( a, b, cin		: in  STD_LOGIC;
	      sum, cout		: out STD_LOGIC );
end component;


-- carrys de los sumadores de un bit

signal c0, c1, c2, c3 : STD_LOGIC;
begin

-- Colocamos el carry de entrada inicial inicial en 0 
c0 <= '0';

-- Asignamos cada bit de la entrada aun sumador de 1 bit
b_adder0: oneBitFullAdder port map (a(0), b(0), c0, sum4(0), c1);
b_adder1: oneBitFullAdder port map (a(1), b(1), c1, sum4(1), c2);
b_adder2: oneBitFullAdder port map (a(2), b(2), c2, sum4(2), c3);
b_adder3: oneBitFullAdder port map (a(3), b(3), c3, sum4(3), cout);

END STRUCTURE;