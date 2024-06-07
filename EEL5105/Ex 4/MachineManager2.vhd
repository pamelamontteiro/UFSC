
library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--Pamela e Heloisa

entity MachineManager2 is port (
            LEDR: out std_logic_vector(9 downto 0);
            --CLK_1: in std_logic;
            KEY: in std_logic_vector(3 downto 0);
            HEX0: out std_logic_vector(6 downto 0);
            SW: in std_logic_vector(9 downto 0)
            );
end MachineManager2;

architecture arqmachine of MachineManager2 is
	signal I, Q: std_logic_vector(3 downto 0); -- declaração dos sinais
	signal S: std_logic_vector(1 downto 0);
	signal K1, K0, S1, S0: std_logic;


component Datapath is port (
        I: in std_logic_vector(3 downto 0);
        sw4,sw5: in std_logic;
        sel: in std_logic_vector(1 downto 0);
        Q_out: out std_logic_vector(3 downto 0);
        clock, reset: in std_logic);
        end component;

component decod is
port (C:  in std_logic_vector(3 downto 0);
      F:  out std_logic_vector(6 downto 0)
     );
end component;

component Controle is port (
clock,ctrl: in std_logic;
S1,S0: out std_logic);
end component;

begin
I <= SW(3 downto 0);
K1 <= KEY(1);
K0 <= KEY(0);
S <= S1 & S0;
L1: datapath port map (I, '0', '0', S, Q, K1, K0);
L2: controle port map (K1, SW(6), S1, S0);
L3: decod port map (Q, HEX0);

-- entradaI <= --fazer; 
ledr(3 downto 0) <= Q;

end arqmachine;
