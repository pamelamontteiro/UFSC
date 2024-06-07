library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_signed.all;

entity usertop is
port(CLOCK_50:in std_logic;
     CLK_500Hz:in std_logic;
     CLK_1Hz: in std_logic;
     -- RKEY:in std_logic_vector(3 downto 0);
     KEY:in std_logic_vector(3 downto 0);
     -- RSW:in std_logic_vector(17 downto 0);
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


-- Caso (A)
-- N(2)<= (((not S(2)) and S(0)) or (S(3) and (not S(2))) or (S(3) and (not S(0)))); 
-- N(3)<= (((not S(3)) and (not S(1))) or ((not S(2)) and S(1) )); 
-- N(1)<= (( S(2) and (not S(1)) ) or ( (not S(3)) and (not S(1)) and S(0) ) or ( (not (S(3))) and (not S(2)) and S(1) and (not S(0)) )); 
-- N(0)<= (not S(3)); 


-- Caso (B)
-- N(3)<= (( (not S(3)) and (not S(1))  ) or ( (not S(3)) and S(0)   ) or ( (not S(2)) and S(0)   ) ); 
-- N(2)<= (( (not S(3)) and S(0)   ) or ( S(2) and (not S(1))  )   ); 
-- N(1)<= (( (not S(0))  ) or ( (not S(3)) and S(2)  ) or ( S(3) and (not S(2))  )   ); 
-- N(0)<= (( (not S(1))  ) or ( (not S(3)) and (not S(0))  ) or ( (not S(3)) and S(2)   )    );

-- Caso (C)
-- N(3)<= ( ( (not S(1)) and S(0) ) or ( (not S(3)) and S(2) ) or ( S(3) and (not S(1))   ) ); 
-- N(2)<= ( ( (not S(3)) and S(1)  ) or ( (not S(3)) and S(2)  ) or ( S(3) and (not S(0))   ) ); 
-- N(1)<= ( ( S(3) and (not S(2))  ) or ( (not S(3)) and (not S(1)) and S(0) ) ); 
-- N(0)<= ( ( (not S(3)) and (not S(1))  ) or ( S(3) and (not S(2))   ) );

-- Caso (D)
-- N(3)<= ( ( (not S(1)) and S(0) ) or ( S(1) and (not S(0)) ) ); 
-- N(2)<= ( ( (not S(2)) and S(0)  ) or ( (not S(3)) and S(1)  ) or ( S(2) and (not S(1))  ) ); 
-- N(1)<= ( ( (not S(2)) and (not S(1))  ) or ( (not S(3)) and S(0)  ) ); 
-- N(0)<= ( ( (not S(2)) and S(0)   ) or ( (not S(3)) and S(2) and (not S(0))  ) or ( S(2) and S(1) and (not S(0))  ) );

-- Caso (E)
N(3)<= ( ( (not S(3)) and S(1)  ) or ( (not S(2)) and S(1)  ) ); 
N(2)<= ( ( (not S(3)) and S(0)  ) or ( (not S(1)) and S(0)  ) or ( S(3) and (not S(0))  )  ); 
N(1)<= ( ( (not S(0))  ) or ( (not S(3)) and (not S(1))  )  or ( S(3)  and (not S(2)) )  ); 
N(0)<= ( ( (not S(0)) ) or ( (not S(3)) and (not S(2))  ) or ( S(3) and (not S(1)) )  );

-- Caso (F)
-- N(3)<= ( ( (not S(2)) and S(0)  ) or ( S(2) and (not S(1)) ) ); 
-- N(2)<= ( ( (not S(0)) ) or ( (not S(2)) and S(1) )  ); 
-- N(1)<= ( ( (not S(2)) and S(0)  ) or ( S(2) and (not S(0)) ) ); 
-- N(0)<= ( ( (not S(2)) and S(0)  ) or ( (not S(3)) and S(1) ) );

-- Caso (H)
-- N(3)<= (( (not S(3)) and S(0)  ) or ( S(2) and (not S(1)) ) or ( S(3) and (not S(0))  )); 
-- N(2)<= ( ( (not S(2)) and S(1)  ) or ( S(2) and (not S(1))  ) or ( (not S(3)) and (not S(2)) and (not S(0))  ) ); 
-- N(1)<= ( (S(3) and (not S(1)) and S(0)) or ( (not S(3)) and (not S(2)) and (not S(0))   )  ); 
-- N(0)<= ( ( S(3) and (not S(1))  ) or ( (not S(3)) and S(1) ) );


-- Caso (I)
-- N(3)<= ( ( (not S(2)) and S(0)   ) or ( S(2) and (not S(0))   ) or ( (not S(3)) and (not S(2)) and S(1)  ) ); 
-- N(2)<= ( ( (not S(3)) and (not S(1))  ) or ( S(3) and (not S(0))  ) ); 
-- N(1)<= ( ( (not S(1))  ) or ( (not S(3)) and S(0)  ) or ( S(2) and (not S(0))  ) ); 
-- N(0)<= ( ( (not S(3)) and (not S(2)) ) or ( S(2) and S(1) and (not S(0)) ) );

-- Caso (F)
-- N(3)<= ( ( (not S(3))  ) or ( S(1) and (not S(0))  ) or ( S(2) and (not S(1))  ) ); 
-- N(2)<= ( ( S(2) and (not S(1)) ) or ( S(3) and (not S(2)) and S(0)  ) ); 
-- N(1)<= ( ( (not S(3)) and S(1)  ) or ( S(3) and (not S(0)) ) ); 
-- N(0)<= ( ( S(2) and (not S(0))  ) or ( S(3) and (not S(2))  )  );

-- Caso (0)

-- N(3)<= (S(1) nor S(0)) or (S(2) and (not S(0))) or ((not S(2)) and S(1) and S(0)); 
-- N(2)<= ((not S(3)) and S(0)) or (S(2) and (not S(0))); 
-- N(1)<= S(1) nand S(0); 
-- N(0)<= (S(3) nor S(1)) or (S(1) and (not S(0))) or ((not S(2)) and S(3) and S(1)); 


-- Caso (1)

--N(3)<= S(3) xor (S(2) and S(1));
--N(2)<= ((not S(3)) and S(2)) or ((not S(2)) and S(1)) ;
--N(1)<= ((not S(3)) and (not S(1))) or ((not S(2)) and S(3)); 
--N(0)<= ((not S(3)) and (not S(1))) or ((not S(2)) and S(3)); 

-- Caso (2)

 -- N(3)<= ((not S(2)) and (not S(1))) or ((not S(3)) and S(2) and S(1)) or (S(3) and (not S(2))); 
 -- N(2)<= (S(3) and (not S(1))) or ((not S(2)) and S(1)); 
 -- N(1)<= ((not S(3)) and S(2)) or ((not S(2)) and S(1)); 
 -- N(0)<= ((not S(3)) and S(2)) or ((not S(2)) and S(1)); 

-- Caso (3)

-- N(3)<= S(3) xor S(2); 
-- N(2)<= (not S(2)); 
-- N(1)<= S(1) xor (S(3) and S(2));
-- N(0)<= S(1) xor (S(3) and S(2)); 

-- Caso (4)

-- N(3)<= S(3) xor (S(1) and S(0)); 
-- N(2)<= S(3) xor (S(1) and S(0)); 
-- N(1)<= S(1) xor S(0);
-- N(0)<= (not S(0)); 

-- Caso (5)

-- N(3)<= (not S(3)); 
-- N(2)<= (not S(3)); 
-- N(1)<= ((not S(3)) and S(1)) or (S(3) and (S(1) xor S(0)));
-- N(0)<= S(3) xor S(0); 

-- Caso (6)

-- N(3)<= S(3) xor (S(1) or S(0));  
-- N(2)<= S(3) xor (S(1) or S(0));  
-- N(1)<= ((not S(1)) and (not S(0))) or (S(1) and (S(3) xor S(0)));
-- N(0)<= ((not S(3)) and (not S(0))) or ((not S(1)) and S(3)); 

-- Caso (7)

-- N(3)<= ((not S(3)) and (S(1) xnor S(0))) or ((not S(1)) and S(3)); 
-- N(2)<= (not S(3)) and S(1) and S(0);  
-- N(1)<= ((not S(1)) and S(0)) or ((not S(3)) and S(1)); 
-- N(0)<= ((not S(0)) and S(3)) or ((not S(2)) and S(1)); 

-- Caso (8)

-- N(3)<= ((not S(3)) and S(1) and S(0)) or ((not S(2)) and S(3));  
-- N(2)<= S(3) and (not S(2)) and S(1) and S(0);  
-- N(1)<= (S(3) and (not S(2))) or (S(1) xor S(0));  
-- N(0)<= (not S(0)) or ((not S(2)) and S(1)); 

-- Caso (9)

-- N(3)<= ((not S(2)) and S(3)) or ((not S(0)) and S(1));
-- N(2)<= (not S(2)) and S(1) and S(0);  
-- N(1)<= ((not S(1)) and S(0)) or (S(3) and (not S(2)) and S(1)); 
-- N(0)<= ((not S(1)) and (not S(0))) or (S(3) and (not S(2)) and S(1)); 

M0: registrador_D port map (CLK_1Hz, Reset, N, S); 
M1: decod7seg port map(S, HEX0);

LEDR(3 downto 0) <= S;

end circuito_exe3;