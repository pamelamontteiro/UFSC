library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity Counter_round is 
port( Set: in std_logic;
	  Enable: in std_logic;
	  Clock: in std_logic;
	  end_round: out std_logic;
	  Y: out std_logic_vector(3 downto 0)
 );
end Counter_round;

architecture counter2 of Counter_round is
signal cont: std_logic_vector (3 downto 0);
begin
process (Clock, Set, Enable, cont)
begin
	if Set = '1' then
	    cont <= "1111";
	elsif Clock'event and Clock = '1' then
	    if Enable = '1' then
		    cont <= cont - "0001";
	    end if;
	end if;
end process;

end_round <= '1' when cont = "0000" else '0';
Y <= cont;

end counter2;