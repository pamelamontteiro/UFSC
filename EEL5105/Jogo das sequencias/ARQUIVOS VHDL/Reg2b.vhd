library ieee;
use ieee.std_logic_1164.all;
entity Reg2b is port (
    D     : in  std_logic_vector(1 downto 0);
    Reset : in  std_Logic;
    Enable: in  std_logic;
    CLK   : in  std_logic;
    Q     : out std_logic_vector(1 downto 0)
    );
end Reg2b;
architecture reg2 of Reg2b is
begin
	process(CLK, Reset, Enable)
	begin
	    if (Reset = '1') then
	        Q <= "00";
		elsif (CLK'event and CLK = '1') then
            if (Enable = '1') then
                Q <= D;
            end if;
		end if;
	end process;
end reg2;

