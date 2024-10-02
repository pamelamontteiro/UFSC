library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registerN is
	generic(	width: natural; -- Parâmetro genérico "width" que define o tamanho do vetor de dados.
				resetValue: integer := 0 );
	port(	-- control
			clock, reset, load: in std_logic;
			-- data
			input: in std_logic_vector(width-1 downto 0);
			output: out std_logic_vector(width-1 downto 0));
end entity;

architecture behav0 of registerN is
    -- Declaração de dois sinais internos: "currentState" e "nextState".
    -- Sinais para armazenar o estado atual e o próximo.
    signal currentState, nextState: std_logic_vector(output'range);
begin
    -- next-state logic  (nao exclua e nem mude esta linha)
    process(currentState, load, input) is
    begin
        nextState <= currentState;
        if load = '1' then
                nextState <= input;
        end if;
    end process;

	-- memory element --state register-- (nao exclua e nem mude esta linha)
	process(clock, reset) is
	begin
	    if reset = '1' then
            currentState <= std_logic_vector(to_unsigned(resetValue, width));
        else
            if rising_edge(clock) then
                currentState <= nextState;
            end if;
        end if;
	end process;
	
	-- output logic  (nao exclua e nem mude esta linha)
	output <= currentState; -- A saída é diretamente conectada ao estado atual (currentState).
end architecture;