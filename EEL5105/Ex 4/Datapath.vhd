library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Datapath is port (
        I: in std_logic_vector(3 downto 0);
        sw4,sw5: in std_logic;
        sel: in std_logic_vector(1 downto 0);
        Q_out: out std_logic_vector(3 downto 0);
        clock, reset: in std_logic);
        end Datapath;
        
architecture arqdtp of Datapath is
    
    signal Qmux, Q_reg, f1, f2, f3, f4, R: std_logic_vector(3 downto 0);
    signal overflow: std_logic;
    
    begin
    
    -- Registrador
    process(clock, reset)
    begin
        if (reset = '0') then
            Q_reg <= "0000";
        elsif (clock'event AND clock = '1') then
            Q_reg <= Qmux;
        end if;
   
    end process;

    -- escrever logica do mux
    Qmux <= f1 when sel = "00" else
            f2 when sel = "01" else
            f3 when sel = "10" else
            f4;
         
         
    f1 <= I;
    -- Lógica da soma
    f2 <= I + Q_reg;
    -- Lógica do deslocamento a direita
    f3 <= sw4 & Q_reg(3 downto 1);
    -- Lógica do deslocamento a esquerda 
    f4 <= Q_reg(2 downto 0) & sw5;
           
    Q_out <= Q_reg;
    
end arqdtp;