library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circuito is
	port (
    A,B,C : in  STD_LOGIC;
    x     : out STD_LOGIC);
end entity;

architecture arch of circuito is

begin

    x <= ((not A) nor (B and C)) and (A) and B;

end architecture;
