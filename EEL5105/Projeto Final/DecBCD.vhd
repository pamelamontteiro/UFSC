library IEEE;
use IEEE.Std_Logic_1164.all;

--decoder binario para bcd de 0 a 99

entity DecBCD is port (

	input  : in  std_logic_vector(7 downto 0);
	output : out std_logic_vector(7 downto 0));

end DecBCD;

architecture arc_DecBCD of DecBCD is begin

	output <= x"00" when input = x"00" else
			    x"01" when input = x"01" else
		       x"02" when input = x"02" else
		       x"03" when input = x"03" else
			    x"04" when input = x"04" else
			    x"05" when input = x"05" else
			    x"06" when input = x"06" else
			    x"07" when input = x"07" else
			    x"08" when input = x"08" else
			    x"09" when input = x"09" else
				 x"10" when input = x"0A" else
			    x"11" when input = x"0B" else
		       x"12" when input = x"0C" else
		       x"13" when input = x"0D" else
			    x"14" when input = x"0E" else
			    x"15" when input = x"0F" else
			    x"16" when input = x"10" else
			    x"17" when input = x"11" else
			    x"18" when input = x"12" else
			    x"19" when input = x"13" else
				 x"20" when input = x"14" else
			    x"21" when input = x"15" else
		       x"22" when input = x"16" else
		       x"23" when input = x"17" else
			    x"24" when input = x"18" else
			    x"25" when input = x"19" else
			    x"26" when input = x"1A" else
			    x"27" when input = x"1B" else
			    x"28" when input = x"1C" else
			    x"29" when input = x"1D" else
				 x"30" when input = x"1E" else
			    x"31" when input = x"1F" else
		       x"32" when input = x"20" else
		       x"33" when input = x"21" else
			    x"34" when input = x"22" else
			    x"35" when input = x"23" else
			    x"36" when input = x"24" else
			    x"37" when input = x"25" else
			    x"38" when input = x"26" else
			    x"39" when input = x"27" else
				 x"40" when input = x"28" else
			    x"41" when input = x"29" else
		       x"42" when input = x"2A" else
		       x"43" when input = x"2B" else
			    x"44" when input = x"2C" else
			    x"45" when input = x"2D" else
			    x"46" when input = x"2E" else
			    x"47" when input = x"2F" else
			    x"48" when input = x"30" else
			    x"49" when input = x"31" else
				 x"50" when input = x"32" else
			    x"51" when input = x"33" else
		       x"52" when input = x"34" else
		       x"53" when input = x"35" else
			    x"54" when input = x"36" else
			    x"55" when input = x"37" else
			    x"56" when input = x"38" else
			    x"57" when input = x"39" else
			    x"58" when input = x"3A" else
			    x"59" when input = x"3B" else
				 x"60" when input = x"3C" else
			    x"61" when input = x"3D" else
		       x"62" when input = x"3E" else
		       x"63" when input = x"3F" else
			    x"64" when input = x"40" else
			    x"65" when input = x"41" else
			    x"66" when input = x"42" else
			    x"67" when input = x"43" else
			    x"68" when input = x"44" else
			    x"69" when input = x"45" else
				 x"70" when input = x"46" else
			    x"71" when input = x"47" else
		       x"72" when input = x"48" else
		       x"73" when input = x"49" else
			    x"74" when input = x"4A" else
			    x"75" when input = x"4B" else
			    x"76" when input = x"4C" else
			    x"77" when input = x"4D" else
			    x"78" when input = x"4E" else
			    x"79" when input = x"4F" else
				 x"80" when input = x"50" else
			    x"81" when input = x"51" else
		       x"82" when input = x"52" else
		       x"83" when input = x"53" else
			    x"84" when input = x"54" else
			    x"85" when input = x"55" else
			    x"86" when input = x"56" else
			    x"87" when input = x"57" else
			    x"88" when input = x"58" else
			    x"89" when input = x"59" else
				 x"90" when input = x"5A" else
			    x"91" when input = x"5B" else
		       x"92" when input = x"5C" else
		       x"93" when input = x"5D" else
			    x"94" when input = x"5E" else
			    x"95" when input = x"5F" else
			    x"96" when input = x"60" else
			    x"97" when input = x"61" else
			    x"98" when input = x"62" else
			    x"99" when input = x"63" else
				 x"FF"; -- saida invalida para caso entrada invalida

end arc_DecBCD;