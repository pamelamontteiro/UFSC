library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador is port(
    A: in std_logic_vector(7 downto 0);
    B: in std_logic_vector(7 downto 0);
    S: out std_logic_vector(7 downto 0));
end somador;

architecture soma of somador is
begin
    S <= A + B;
end architecture soma;