library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
	--Especificamos entradas y salidas
	port(d:in STD_LOGIC_VECTOR(3 downto 0);
	z:out STD_LOGIC_VECTOR(6 downto 0));

end decoder;

-- definimos el comportamiento del deco
architecture Behavioral of decoder is
	begin
	
	 process(d)
		begin
	

		z <= "1111111";        -- valor default de salida, 7 segmentos apagado
		
		case d is
			
			when "0000" => z <= "1000000";
         when "0001" => z <= "1111001";
         when "0010" => z <= "0100100";
         when "0011" => z <= "0110000";
			when "0100" => z <= "0011001";
         when "0101" => z <= "0010010";
			when "0110" => z <= "0000010";
			when "0111" => z <= "1111000";
			when "1000" => z <= "0000000";
			when "1001" => z <= "0011000";
			when "1010" => z <= "0001000"; --A
			when "1011" => z <= "0000011"; --b
			when "1100" => z <= "1000110"; --C
			when "1101" => z <= "0100001"; --d
			when "1110" => z <= "0000110"; --E
			when "1111" => z <= "0001110"; --F
         when others => z <= "1111111"; -- 7 segmentos apagado
       
		end case;
			
	end process;
end Behavioral;