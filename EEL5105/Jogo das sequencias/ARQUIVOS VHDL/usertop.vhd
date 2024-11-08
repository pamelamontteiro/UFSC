library ieee;
use ieee.std_logic_1164.all;

--Alunas: Pamela e Heloisa

entity usertop is
port(
	SW: in std_logic_vector(17 downto 0);
	KEY: in std_logic_vector(1 downto 0);
	CLK_50: in std_logic; 
	LEDR: out std_logic_vector(17 downto 0);
	HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0: out std_logic_vector(6 downto 0));
end usertop;

architecture rtl of usertop is

signal BTN: std_logic_vector(1 downto 0);
signal r1, e1, e2, e3, e4, e5, e6: std_logic;
signal end_game, end_sequence, end_round, enter: std_logic;


component ButtonSync is port(
    KEY1, KEY0, CLK: in  std_logic;
    BTN1, BTN0   : out std_logic);
end component;

component controle is port(  
    clock, enter, reset: in std_logic;
    end_game, end_sequence, end_round: in std_logic;
    R1, E1, E2, E3, E4, E5, E6: out std_logic);
end component;

component datapath is port(
    SW: in std_logic_vector(7 downto 0);
    CLK: in std_logic;
	 Enter: in std_logic;
    R1, E1, E2, E3, E4, E5, E6: in std_logic;
	 end_game, end_sequence, end_round: out std_logic;
    HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0: out std_logic_vector(6 downto 0);
    LEDR: out std_logic_vector(17 downto 0));
end component;

begin

bsc: ButtonSync port map(KEY(1), KEY(0), CLK_50, BTN(1), BTN(0)); 
			
ctr: controle port map(CLK_50, BTN(1), BTN(0),
 			end_game, end_sequence, end_round,
 			r1, e1, e2, e3, e4, e5, e6); 

			
 dtp: datapath port map(SW(7 downto 0), CLK_50, BTN(1),
			r1, e1, e2, e3, e4, e5, e6,
 			end_game, end_sequence, end_round,
 			HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0, LEDR); 


end rtl;
