library ieee;
use ieee.std_logic_1164.all;
entity Reg16b is port (
    D: in  std_logic_vector(15 downto 0);
    Reset : in  std_Logic;
    Enable: in  std_logic;
    CLK   : in  std_logic;
    Q     : out std_logic_vector(15 downto 0)
	);
end Reg16b;
architecture reg16 of Reg16b is
begin
	process(CLK)
	begin
	    if (Reset = '1') then
	        Q <= "0000000000000000";
	        
		elsif (CLK'event and CLK = '1') then
            if (Enable = '1') then
                Q <= D;
            end if;
		end if;
	end process;
end reg16;


   