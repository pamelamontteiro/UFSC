library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity div_freq is
port ( reset: in std_logic;
clock: in std_logic;
C1Hz: out std_logic
);
end div_freq;
architecture topo_beh of div_freq is
signal contador: std_logic_vector(27 downto 0); -- registra valor da contagem
Begin
P1: process(clock, reset, contador)
begin
if reset= '0' then
contador <= x"0000000";
elsif clock'event and clock = '1' then
contador <= contador + 1;
if contador = x"2FAF07F" then
contador <= x"0000000";
C1Hz <= '1';
else
C1Hz <= '0';
end if;
end if;
end process;
end topo_beh;