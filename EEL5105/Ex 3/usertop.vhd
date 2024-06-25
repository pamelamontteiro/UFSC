library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_signed.all;

-- Aluna: Pamela Monteiro 
-- Aluna : Heloise 

entity usertop is
port(KEY:in std_logic_vector(3 downto 0);
     SW:in std_logic_vector(17 downto 0);
     LEDR:out std_logic_vector(17 downto 0);
     HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7: out std_logic_vector(6 downto 0));
end usertop;

architecture circuito_exe3 of usertop is
signal N, S: std_logic_vector(3 downto 0);
signal reset, Clock: std_logic;

component registrador_D is port (
CLK, RST: in std_logic;
D: in std_logic_vector(3 downto 0);
Q: out std_logic_vector(3 downto 0)
);
end component;

component decod7seg is
port (C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
		);
end component;

begin

Reset <= not(KEY(0));
Clock <= not(KEY(1));


-- Sequencia (H)
N(3)<= (( (not S(3)) and S(0)  ) or ( S(2) and (not S(1)) ) or ( S(3) and (not S(0))  )); 
N(2)<= ( ( (not S(2)) and S(1)  ) or ( S(2) and (not S(1))  ) or ( (not S(3)) and (not S(2)) and (not S(0))  ) ); 
N(1)<= ( (S(3) and (not S(1)) and S(0)) or ( (not S(3)) and (not S(2)) and (not S(0))   )  ); 
N(0)<= ( ( S(3) and (not S(1))  ) or ( (not S(3)) and S(1) ) );


M0: registrador_D port map (Clock, Reset, N, S); 
M1: decod7seg port map(S, HEX0);

LEDR(3 downto 0) <= S;

end circuito_exe3;