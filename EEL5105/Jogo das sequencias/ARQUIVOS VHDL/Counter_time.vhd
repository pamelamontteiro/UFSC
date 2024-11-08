library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity Counter_time is port (
    Set: in std_logic;
	Enable: in std_logic;
	Clock: in std_logic;
	Load: in std_logic_vector(7 downto 0);
	end_game: out std_logic;
	t_out: out std_logic_vector(7 downto 0)
    );
end Counter_time;

architecture counter of Counter_time is
signal cont: std_logic_vector (7 downto 0);
begin
process (Clock, Set, Enable, cont)
begin
	if Set = '1' then
	    cont <= "01100011";
	elsif Clock'event and Clock = '1' then
	    if Enable = '1' then
		    cont <= cont + Load;
		end if;
	end if;
	end process;
	
	end_game <= '1' when (cont < "00000001") else '0';
	t_out <= cont;
end counter;