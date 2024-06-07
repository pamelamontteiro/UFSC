library ieee;
use ieee.std_Logic_1164.all;

entity Mux2_1x7 is port(

    S     : in  std_logic;
    L0, L1: in  std_logic_vector(6 downto 0);
    D     : out std_logic_vector(6 downto 0));
    
end Mux2_1x7;

architecture mux7_1 of Mux2_1x7 is begin

    D <= L0 when S = '0' else
         L1;
         
end mux7_1;
