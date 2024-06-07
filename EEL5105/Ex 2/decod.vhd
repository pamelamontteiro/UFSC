library IEEE;
use IEEE.Std_Logic_1164.all;

entity decod is
port (G: in std_logic_vector(1 downto 0);
F: out std_logic_vector(6 downto 0)
);
end decod;

architecture circuito of decod is
begin
F <= "0011001" when G = "00" else --4--
"0010010" when G = "01" else   --5--
"0100100" when G = "10" else --2--
"1111001"; --1--
end circuito;