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
    -- Sinais internos
    signal estado_atual, estado_proximo: std_logic_vector(2 downto 0);
begin
    -- Lógica de próximo estado
    process(ck, Reset)
    begin
        if Reset = '1' then
            estado_atual <= "000";
        elsif rising_edge(ck) then
            estado_atual <= estado_proximo;
        end if;
    end process;

    -- Lógica de transição de estados
    process(estado_atual, iniciar, Az, Bz)
    begin
        case estado_atual is
            when "000" =>
                if iniciar = '1' then
                    estado_proximo <= "001";
                else
                    estado_proximo <= "000";
                end if;
            when "001" =>
                if Az = '1' then
                    estado_proximo <= "010";
                else
                    estado_proximo <= "001";
                end if;
            when "010" =>
                if Bz = '1' then
                    estado_proximo <= "011";
                else
                    estado_proximo <= "010";
                end if;
            when others =>
                estado_proximo <= "000";
        end case;
    end process;

    -- Lógica de saída
    process(estado_atual)
    begin
        case estado_atual is
            when "000" =>
                pronto <= '1';
                mP <= '0';
                cP <= '0';
                mA <= '0';
                cA <= '0';
                cB <= '0';
                cmult <= '0';
                m1 <= '0';
                m2 <= '0';
                op <= '0';
            when "001" =>
                pronto <= '0';
                mP <= '1';
                cP <= '1';
                mA <= '0';
                cA <= '0';
                cB <= '0';
                cmult <= '0';
                m1 <= '0';
                m2 <= '0';
                op <= '0';
            when "010" =>
                pronto <= '0';
                mP <= '0';
                cP <= '0';
                mA <= '1';
                cA <= '1';
                cB <= '0';
                cmult <= '0';
                m1 <= '0';
                m2 <= '0';
                op <= '1';
            when others =>
                pronto <= '0';
                mP <= '0';
                cP <= '0';
                mA <= '0';
                cA <= '0';
                cB <= '0';
                cmult <= '0';
                m1 <= '0';
                m2 <= '0';
                op <= '0';
        end case;
    end process;
end architecture;
