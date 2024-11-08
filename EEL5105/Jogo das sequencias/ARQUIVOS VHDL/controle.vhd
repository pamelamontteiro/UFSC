library ieee;
use ieee.std_logic_1164.all; 

entity controle is port(
    
    clock, enter, reset: in std_logic;
    end_game, end_sequence, end_round: in std_logic;
    R1, E1, E2, E3, E4, E5, E6: out std_logic);

end controle;

architecture arc_controle of controle is
   type STATES is (Innit, Setup, Sequence, Play, Check, Sellect, Result);
   signal EAtual, PEstado: STATES;
begin
    REG: process(clock,reset)
    begin
        if (reset = '1') then
            EAtual <= Innit;
        elsif (clock'event AND clock = '1') then 
             EAtual <= PEstado;
        end if;
    end process;
    COMB: process(EAtual, enter,  end_game, end_sequence, end_round)
    begin
        case EAtual is
            when Innit =>
                
                E1 <= '0';
                E2 <= '0';
                E3 <= '0';
                E4 <= '0';
                E5 <= '0';
                E6 <= '0';
                R1 <= '1';
                
                PEstado <= Setup;
            
            when Setup =>
                
                E1 <= '1';
                E2 <= '0';
                E3 <= '0';
                E4 <= '0';
                E5 <= '0';
                E6 <= '0';
                R1 <= '0';
                if(enter = '1') then 
                    PEstado <= Sellect;
                else
                    PEstado <= Setup;
                end if;
            
            when Sellect =>
                
                E1 <= '0';
                E2 <= '1';
                E3 <= '0';
                E4 <= '0';
                E5 <= '0';
                E6 <= '0';
                R1 <= '0';
                
                if(enter = '1') and (end_round = '0') and (end_game = '0') then
                    PEstado <= Sequence;
                elsif (end_round = '1') or (end_game = '1') then
                    PEstado <= Result;
                else
                    PEstado <= Sellect;
                end if;
                
            when Sequence =>
                
                E1 <= '0';
                E2 <= '0';
                E3 <= '1';
                E4 <= '0';
                E5 <= '0';
                E6 <= '0';
                R1 <= '0';
                
                if(end_sequence = '1') then
                    PEstado <= Play;
                else
                    PEstado <= Sequence;
                end if;
                
            when Play => 
                E1 <= '0';
                E2 <= '0';
                E3 <= '0';
                E4 <= '1';
                E5 <= '0';
                E6 <= '0';
                R1 <= '0';
                
                if(end_game = '1') or (end_round = '1') then
                    PEstado <= Result;
                elsif(enter = '1') then
                    PEstado <= Check;
                else
                    PEstado <= Play;
                end if;
                
            when Check =>
                E1 <= '0';
                E2 <= '0';
                E3 <= '0';
                E4 <= '0';
                E5 <= '1';
                E6 <= '0';
                R1 <= '0';
                
                PEstado <= Sellect;
                
            when Result =>
                
                E1 <= '0';
                E2 <= '0';
                E3 <= '0';
                E4 <= '0';
                E5 <= '0';
                E6 <= '1';
                R1 <= '0';
                if(enter = '1') then
                    PEstado <= Innit;
                else
                    PEstado <= Result;
                end if;
                
        end case;
    end process;
end arc_controle;               
