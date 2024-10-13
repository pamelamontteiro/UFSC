library ieee;
use ieee.std_logic_1164.all;
-- pg364

entity ManchesterEncoder is
	port(
		-- control inputs
		clock, reset: in std_logic;
		-- data inputs
		v, d: in std_logic;
		-- control outputs
		-- data outputs
		y: out std_logic
	);
end entity;

architecture studenttry of ManchesterEncoder is
	type State is (idle, s1a, s1b, s0a, s0b);
	signal currentState, nextState: State;
begin
	-- next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	process(currentState, v, d)
	begin
    	case currentState is
                when idle =>
                    if v = '0' then
                        nextState <= idle;
                    else
                        if d = '0' then
                            nextState <= s0a;
                        else
                            nextState <= s1a;
                        end if;
                    end if;
                
                when s1a =>
                    nextState <= s1b;
    
                when s1b =>
                    if v = '0' then 
                        nextState <= idle;
                    else
                        if d = '0' then
                            nextState <= s0a;
                        else
                            nextState <= s1a;
                        end if;
                    end if;
    
                when s0a =>
                    nextState <= s0b;
    
                when s0b =>
                    if v = '0' then
                        nextState <= idle;
                    else
                        if d = '0' then
                            nextState <= s0a;
                        else
                            nextState <= s1a;
                        end if;
                    end if;
    
                end case;
        end process;
	-- end-next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock, reset)
	begin 
	    if reset = '1' then
            currentState <= idle;
        elsif rising_edge(clock) then
            currentState <= nextState;
        end if;
    end process;
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
    y <= '1' when currentState = s0b or currentState = s1a
    else '0';
    -- end-output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
end architecture;





	