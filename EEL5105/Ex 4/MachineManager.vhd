
library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity MachineManager is port (
            LEDR: out std_logic_vector(9 downto 0);
            C1Hz: in std_logic;
				CLOCK_50:in std_logic;
            KEY: in std_logic_vector(3 downto 0);
            HEX0: out std_logic_vector(6 downto 0);
            SW: in std_logic_vector(9 downto 0)
            );
end MachineManager;

architecture arqmachine of MachineManager is
	signal I, Q: std_logic_vector(3 downto 0); -- declaração dos sinais
	signal S: std_logic_vector(1 downto 0);
	signal K1, K0: std_logic;
	signal C1: std_logic;


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

component div_freq is
port (reset: in std_logic;
clock: in std_logic;
C1Hz: out std_logic
);
end component;

-- component Controle is port (
-- clock,ctrl: in std_logic;
-- S1,S0: out std_logic);
-- end component;

begin
I <= SW(3 downto 0);
S <= SW(9 downto 8);
K1 <= KEY(1);
K0 <= KEY(0);

DIV: div_freq port map(KEY(0), CLOCK_50, C1);
L1: datapath port map (I, SW(4), SW(5), S, Q, C1, K0);
-- L2: controle port map (--fazer);
L3: decod port map (Q, HEX0);

-- entradaI <= --fazer; 
ledr(3 downto 0) <= Q;
-- Hex0 <= --fazer;

end arqmachine;