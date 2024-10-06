library ieee;
use ieee.std_logic_1164.all;

entity bo is
	generic(largura: positive := 8);
	port(
		-- control in
		ck, Reset: in std_logic;
		mP, cP, mA, cA, cB, cmult, m1, m2, op: in std_logic;
		-- control out
		Az, Bz: out std_logic;
		-- data in
		entA, entB: in std_logic_vector(largura-1 downto 0);
		-- data out
		mult: out std_logic_vector(largura-1 downto 0)
	);
end entity;

architecture descricaoEstrutural of bo is
component  registerN is
	generic(	width: natural;
				resetValue: integer := 0 );
	port(	-- control
			clock, reset, load: in std_logic;
			-- data
			input: in std_logic_vector(width-1 downto 0);
			output: out std_logic_vector(width-1 downto 0));
	end component;
	component compare is
	generic(	width: natural;
				isSigned: boolean;
				generateLessThan: boolean;
				generateEqual: boolean );
	port(	input0, input1: in std_logic_vector(width-1 downto 0);
			lessThan, equal: out std_logic );
	end component;
	component multiplexer2x1_ is
	generic(	width: positive );
	port(	input0, input1: in std_logic_vector(width-1 downto 0);
			sel: in std_logic;
			output: out std_logic_vector(width-1 downto 0) );
	end component;
	component addersubtractor is
	generic(	N: positive;
				isAdder: boolean;
				isSubtractor: boolean );
	port(	op: in std_logic;
			a, b: in std_logic_vector(N-1 downto 0);
			result: out std_logic_vector(N-1 downto 0);
			ovf, cout: out std_logic );
	end component;
begin
    -- COMPLETE COM COMANDOS CONCORRENTES 
end architecture;
