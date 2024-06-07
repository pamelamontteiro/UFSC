library ieee;
use ieee.std_logic_1164.all;

entity Controle is port (
clock,ctrl: in std_logic;
S1,S0: out std_logic);
end Controle;

architecture bhv of controle is
    type STATES is (E0,E1,E2,E3,E4);
    signal EA, PE: STATES;
begin
    
    P1: process(clock)
    begin
    if (clock'event AND clock = '1') then
            EA <= PE;
        end if;
    end process;
    
    P2: process(EA,ctrl)
    begin
        case EA is
        when E0 => s1 <= '0'; s0 <= '0';
            PE <= E1;
        when E1 => s1 <= '0'; s0 <= '0';
            if ctrl = '1' then
                PE <= E2;
            elsif ctrl = '0' then
                PE <= E3;
            end if;
        when E2 => s1 <= '0'; s0 <= '1';
            if ctrl = '1' then
                PE <= E2;
            elsif ctrl = '0' then
                PE <= E0;
            end if;
        when E3 => s1 <= '1'; s0 <= '1';
            if ctrl = '0' then
                PE <= E4;
            elsif ctrl = '1' then
                PE <= E0;
            end if;
        when E4 => s1 <= '1'; s0 <= '1';
            PE <= E0;
               end case;
    end process;
end bhv;