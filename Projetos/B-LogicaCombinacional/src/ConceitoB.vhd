----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity ConceitoB is
	port(
		CLOCK_50 : in  std_logic;
		SW       : in  std_logic_vector(9 downto 0);
        HEX0     : out std_logic_vector(6 downto 0); -- 7seg0
        HEX1     : out std_logic_vector(6 downto 0); -- 7seg0
        HEX2     : out std_logic_vector(6 downto 0); -- 7seg0
		LEDR     : out std_logic_vector(9 downto 0)
	);
end entity;

architecture rtl of ConceitoB is
begin
    HEX0 <= "0000001" when SW (9 downto 8) = "00" else --display 0
            "1001111" when SW (9 downto 8) = "01" else --display 1
            "0010010" when SW (9 downto 8) = "10" else --display 2
            "0000110"; --display 3

    HEX1 <= "0000001" when SW (7 downto 4) = "0000" else --display 0
            "1001111" when SW (7 downto 4) = "0001" else --display 1
            "0010010" when SW (7 downto 4) = "0010" else --display 2
            "0000110" when SW (7 downto 4) = "0011" else --display 3
            "1001100" when SW (7 downto 4) = "0100" else --display 4
            "0100100" when SW (7 downto 4) = "0101" else --display 5
            "0100000" when SW (7 downto 4) = "0110" else --display 6
            "0001111" when SW (7 downto 4) = "0111" else --display 7
            "0000000" when SW (7 downto 4) = "1000" else --display 8
            "0000100" when SW (7 downto 4) = "1001" else --display 9
            "0000010" when SW (7 downto 4) = "1010" else --display A
            "1100000" when SW (7 downto 4) = "1011" else --display B
            "0110001" when SW (7 downto 4) = "1100" else --display C
            "1000010" when SW (7 downto 4) = "1101" else --display D
            "0110000" when SW (7 downto 4) = "1110" else --display E
            "0111000"; --display F
    
    HEX2 <= "0000001" when SW (3 downto 0) = "0000" else --display 0
            "1001111" when SW (3 downto 0) = "0001" else --display 1
            "0010010" when SW (3 downto 0) = "0010" else --display 2
            "0000110" when SW (3 downto 0) = "0011" else --display 3
            "1001100" when SW (3 downto 0) = "0100" else --display 4
            "0100100" when SW (3 downto 0) = "0101" else --display 5
            "0100000" when SW (3 downto 0) = "0110" else --display 6
            "0001111" when SW (3 downto 0) = "0111" else --display 7
            "0000000" when SW (3 downto 0) = "1000" else --display 8
            "0000100" when SW (3 downto 0) = "1001" else --display 9
            "0000010" when SW (3 downto 0) = "1010" else --display A
            "1100000" when SW (3 downto 0) = "1011" else --display B
            "0110001" when SW (3 downto 0) = "1100" else --display C
            "1000010" when SW (3 downto 0) = "1101" else --display D
            "0110000" when SW (3 downto 0) = "1110" else --display E
            "0111000"; --display F

end rtl;
