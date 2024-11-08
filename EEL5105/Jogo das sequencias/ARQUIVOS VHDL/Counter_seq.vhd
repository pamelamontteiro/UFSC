library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity counter_seq is 
port(
     Reset, Enable, Clock: in  std_logic;
     end_seq             : out std_logic;
     X                 : out std_logic_vector(2 downto 0)
 );
end counter_seq;

architecture counter3 of counter_seq is
signal cont: std_logic_vector (2 downto 0);
begin
process (Clock, Reset, Enable, cont)
begin
	if Reset = '1' then
	    cont <= "000";
    	end_seq <= '0';
	elsif Clock'event and Clock = '1' then
	    if Enable = '1' then
		cont <= cont + "001";
	    end if;
		if cont = "011" then
		    end_seq <= '1';
		else
		    end_seq <= '0';
		end if;
    end if;
		
end process;
X <= cont;
end counter3;