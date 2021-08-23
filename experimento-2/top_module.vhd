library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_module is

	port(sw1: in STD_LOGIC_VECTOR(3 downto 0);
	sw2: in STD_LOGIC_VECTOR(3 downto 0);
	z: out STD_LOGIC_VECTOR(6 downto 0);
	led: out STD_LOGIC);

end top_module;

architecture STRUCTURE of top_module is

	--Utilizamos el sumador completo de 4 bits creado anteriormente

		component fourBitFullAdder
			port( a, b		: in  STD_LOGIC_VECTOR;
					sum4: out STD_LOGIC_VECTOR;
					cout: STD_LOGIC);
		end component;
		
		--Utilizamos el decodificador creado anteriormente
		component decoder 
			port (d : in STD_LOGIC_VECTOR;
					z : out STD_LOGIC_VECTOR);
		end component;

 signal temp : STD_LOGIC_VECTOR(3 downto 0);
 
begin
	
		tm: fourBitFullAdder port map(sw1,sw2,temp,led);
		dec: decoder port map(temp,z);

end STRUCTURE; 