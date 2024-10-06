library ieee;
use ieee.std_logic_1164.all;

entity bc is
	generic(largura: positive := 8);
	port(
		-- control in
		ck, Reset, iniciar: in std_logic;
		Az, Bz: in std_logic;
		-- control out
		mP, cP, mA, cA, cB, cmult, m1, m2, op: buffer std_logic;
		pronto: out std_logic
		-- data in
		-- data out
	);
end entity;

architecture descricaoComportamental of bc is
    -- COMPLETE COM SINAIS INTERNOS ESPERADOS DE UM CIRCUITO SEQUENCIAL
begin
	-- logica de proximo estado
	-- COMPLETE COM COMANDOS CONCORRENTES 
	
	-- estado interno (registrador)
	-- COMPLETE COM COMANDO CONCORRENTE PROCESS E COMANDOS SEQUENCIAIS DENTRO DELE 
	
	-- logicas de saida
	-- COMPLETE COM COMANDOS CONCORRENTES 
end architecture;
