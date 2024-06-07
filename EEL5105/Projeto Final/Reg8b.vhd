library ieee;
use ieee.std_logic_1164.all;
entity Reg8b is port (
    D     : in  std_logic_vector(7 downto 0);
    Reset : in  std_Logic;
    Enable: in  std_logic;
    CLK   : in  std_logic;
    Q     : out std_logic_vector(7 downto 0));
end Reg8b;
architecture reg8 of Reg8b is
begin
	process(CLK, Reset, Enable)
	begin
	    if (Reset = '1') then
	        Q <= "00000000";
		elsif (CLK'event and CLK = '1') then
            if (Enable = '1') then
                Q <= D;
            end if;
		end if;
	end process;
end reg8;