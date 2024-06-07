library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_signed.all; 

entity usertop_otimizado is
port(SW:in std_logic_vector(17 downto 0);
     HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6: out std_logic_vector(6 downto 0));
end usertop_otimizado;

architecture circuito_exe2 of usertop_otimizado is
signal A, F, F1, F2, F3, F4, V: std_logic_vector(3 downto 0); 
signal C: std_logic_vector(1 downto 0); 

component decod_C2 is
port (G: in std_logic_vector(3 downto 0);
F: out std_logic_vector(6 downto 0)
);
end component;

component  decod is
port (G: in std_logic_vector(1 downto 0);
F: out std_logic_vector(6 downto 0)
);
end component;

begin
D3: decod_C2 port map (A,HEX5);
D2: decod_C2 port map (F,HEX0);
D1: decod port map (C,HEX3);
A <= SW(3 downto 0);
C <= SW(9 downto 8);

V <= C(1) & '1' & C(1) & C(0);

HEX2 <= "0110111";
HEX6 <= not A(3) & "111111";
HEX1 <= not F(3) & "111111" ;
HEX4 <= "0" & C(1) & C(1) & "1111";
F <= A + V;

end circuito_exe2;