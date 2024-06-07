library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux2_1 is

port (
F1: in std_logic_vector(6 downto 0);
F2: in std_logic_vector(6 downto 0);
sel: in std_logic;
F: out std_logic_vector(6 downto 0)
);

end mux2_1;

architecture circuito of mux2_1  is
begin
F <= 
F1 when sel = '0' else
F2 when sel = '1'; 
end circuito;