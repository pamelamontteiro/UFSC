library IEEE; 
use IEEE.Std_Logic_1164.all; 

entity circuito_multi 
is port (A: in std_logic_vector(3 downto 0);            
	 F3: out std_logic;
         F2: out std_logic;
         F1: out std_logic;
         F0: out std_logic); 
end circuito_multi; 

architecture circuito of circuito_multi is

begin    
   F3 <= ((not A(3)) and (not A(2)) and  A(1) and A(0)) or (A(2) and A(1) and (not A(0))) or (A(3) and (not A(1)) and A(0)) or (A(3) and A(2));
   F2 <= (A(3) and A(2)) or (not A(0));
   F1 <= (A(2)and A(1)) or (A(3));
   F0 <= ((not A(3)) and (not A(2)) and  A(1)) or ((A(1)and A(0)) or (A(2)and A(0)));
end circuito; 
