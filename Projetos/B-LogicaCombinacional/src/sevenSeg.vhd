library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sevenSeg is
	port (
			bcd : in  STD_LOGIC_VECTOR(3 downto 0);
			leds: out STD_LOGIC_VECTOR(6 downto 0));
end entity;

architecture arch of sevenSeg is
begin
	leds <= "0000001" when bcd = "0000" else --display 0
			"1001111" when bcd = "0001" else --display 1
			"0010010" when bcd = "0010" else --display 2
			"0000110" when bcd = "0011" else --display 3
			"1001100" when bcd = "0100" else --display 4
			"0100100" when bcd = "0101" else --display 5
			"0100000" when bcd = "0110" else --display 6
			"0001111" when bcd = "0111" else --display 7
			"0000000" when bcd = "1000" else --display 8
			"0000100" when bcd = "1001" else --display 9
			"0000010" when bcd = "1010" else --display A
			"1100000" when bcd = "1011" else --display B
			"0110001" when bcd = "1100" else --display C
			"1000010" when bcd = "1101" else --display D
			"0110000" when bcd = "1110" else --display E
			"0111000"; --display F
end architecture;
