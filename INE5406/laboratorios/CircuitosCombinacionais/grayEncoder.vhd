library ieee;
use ieee.std_logic_1164.all;

entity grayEncoder is
	generic(width: natural);
	port(	binInput: in std_logic_vector(width-1 downto 0);
			grayOutput: out std_logic_vector(width-1 downto 0) );
end entity;

architecture concurrent_behav0 of grayEncoder is

begin
    grayOutput(width-1) <= binInput(width-1);
        gen_gray: for i in 0 to width-2 generate
            grayOutput(i) <= binInput(i) xor binInput(i+1);
        end generate gen_gray;

end architecture;