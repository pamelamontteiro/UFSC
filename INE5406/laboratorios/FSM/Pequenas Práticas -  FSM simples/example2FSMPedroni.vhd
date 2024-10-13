library ieee;
use ieee.std_logic_1164.all;

entity example2FSMPedroni is
	port(
		-- control inputs
		clock, reset: in std_logic;
		-- data inputs
		inp: in std_logic;
		-- control outputs
		-- data outputs
		outp: out std_logic_vector(1 downto 0)
	);
end entity;

architecture archstudenttryPg195 of example2FSMPedroni is
	type State is (state1, state2, state3, state4);
	signal currentState, nextState: State;
begin
	-- next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	process(currentState, inp)
    begin
        case currentState is
            when state1 => 
                if inp = '1' then
                    nextState <= state2;
                else
                    nextState <= state1;
                end if;

            when state2 =>
                if inp = '1' then 
                    nextState <= state4;
                else
                    nextState <= state3;
                end if;
            
            when state3 =>
                if inp = '1' then
                    nextState <= state4;
                else
                    nextState <= state3;
                end if;

            when state4 =>
                if inp = '1' then
                    nextState <= state1;
                else
                    nextState <= state2;
                end if;

        end case;
    end process;
	-- end-next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock, reset)
    begin
        if reset = '1' then
            currentState <= state1;
        elsif clock'event and clock = '1' then
            currentState <= nextState;
        end if;
    end process;
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
    outp <= "00" when currentState = state1 else
            "01" when currentState = state2 else
            "10" when currentState = state3 else
            "11";
    -- end-output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
end architecture;
