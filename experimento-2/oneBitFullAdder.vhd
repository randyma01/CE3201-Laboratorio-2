LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity oneBitFullAdder is
        port( a, b, cin         : in  STD_LOGIC;
              sum, cout         : out STD_LOGIC );
end oneBitFullAdder;

architecture BHV of oneBitFullAdder is
	begin

        
	-- Calculo de la suma
        sum <=  (not a and not b and cin) or
                        (not a and b and not cin) or
                        (a and not b and not cin) or
                        (a and b and cin);

	-- Calculo del carry
        cout <= (not a and b and cin) or
                        (a and not b and cin) or
                        (a and b and not cin) or
                        (a and b and cin);
								
	end BHV;