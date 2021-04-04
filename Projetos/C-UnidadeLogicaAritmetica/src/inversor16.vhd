-- Elementos de Sistemas
-- by Luciano Soares
-- inversor16.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity inversor16 is
  port(
        z   : in STD_LOGIC;
        a   : in STD_LOGIC_VECTOR(15 downto 0);
        y   : out STD_LOGIC_VECTOR(15 downto 0)
      );
end entity;

architecture rtl of inversor16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

begin
  -- Implementação vem aqui!
  y(0 ) <= not a(0) when z = '1' else a(0 );
  y(1 ) <= not a(1) when z = '1' else a(1 );
  y(2 ) <= not a(2) when z = '1' else a(2 );
  y(3 ) <= not a(3) when z = '1' else a(3 );
  y(4 ) <= not a(4) when z = '1' else a(4 );
  y(5 ) <= not a(5) when z = '1' else a(5 );
  y(6 ) <= not a(6) when z = '1' else a(6 );
  y(7 ) <= not a(7) when z = '1' else a(7 );
  y(8 ) <= not a(8) when z = '1' else a(8 );
  y(9 ) <= not a(9) when z = '1' else a(9 );
  y(10) <= not a(10) when z = '1' else a(10);
  y(11) <= not a(11) when z = '1' else a(11);
  y(12) <= not a(12) when z = '1' else a(12);
  y(13) <= not a(13) when z = '1' else a(13);
  y(14) <= not a(14) when z = '1' else a(14);
  y(15) <= not a(15) when z = '1' else a(15);
end architecture;
