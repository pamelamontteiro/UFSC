library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_signed.all; 

entity usertop is
port(SW:in std_logic_vector(17 downto 0);
     HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6: out std_logic_vector(6 downto 0));
end usertop;

architecture circuito_exe2 of usertop is
signal A, F, F1, F2, F3, F4: std_logic_vector(3 downto 0); 
signal C: std_logic_vector(1 downto 0); 

component mux4_1 is
port (F1,F2,F3,F4: in std_logic_vector(3 downto 0);
sel: in std_logic_vector(1 downto 0);
F: out std_logic_vector(3 downto 0)
);
end component;

component mux2_1 is
port (
F1: in std_logic_vector(6 downto 0);
F2: in std_logic_vector(6 downto 0);
sel: in std_logic;
F: out std_logic_vector(6 downto 0)
);
end component;

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
M1: mux4_1 port map (F1,F2,F3,F4,C,F);
M2: mux2_1 port map ("1111111","0111111",A(3),HEX6);
M3: mux2_1 port map ("0001111","0111111",C(1),HEX4);
M4: mux2_1 port map ("1111111","0111111",F(3),HEX1);
D3: decod_C2 port map (A,HEX5);
D2: decod_C2 port map (F,HEX0);
D1: decod port map (C,HEX3);
A <= SW(3 downto 0);
C <= SW(9 downto 8);

HEX2 <= "0110111";
F1 <= A + 4;
F2 <= A + 5;
F3 <= A - 2;
F4 <= A - 1;

end circuito_exe2;