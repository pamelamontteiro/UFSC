library IEEE; 
use IEEE.Std_Logic_1164.all; 

entity usertop is
port(
	CLOCK_50:in std_logic;
	CLK_500Hz:in std_logic;
	KEY:in std_logic_vector(3 downto 0);
	SW:in std_logic_vector(17 downto 0);
	LEDR:out std_logic_vector(17 downto 0);
	HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7: out std_logic_vector(6 downto 0));
end usertop;

architecture circuito of usertop is

begin    
    LEDR(3) <= ((not SW(3)) and (not SW(2)) and  SW(1) and SW(0)) or (SW(2) and SW(1) and (not SW(0))) or (SW(3) and (not SW(1)) and SW(0)) or (SW(3) and SW(2));
    LEDR(2) <= (SW(3) and SW(2)) or (not SW(0));
    LEDR(1) <= (SW(2)and SW(1)) or (SW(3));
    LEDR(0) <= ((not SW(3)) and (not SW(2)) and  SW(1)) or ((SW(1)and SW(0)) or (SW(2)and SW(0)));
end circuito; 