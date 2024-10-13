-- COMPLETE COM O NOME COMPLETO DOS ALUNOS QUE FAZEM ESTA AVALIACAO
-- Aluno 1: Pamela Monteiro

library ieee;
use ieee.std_logic_1164.all;

entity shifterRotator is
    generic (
        width       : positive;     -- Largura da entrada/saída em bits
        isShifter   : boolean;      -- Define se é um deslocador ou rotacionador
        isLogical   : boolean;      -- Define se é um deslocamento lógico ou aritmético
        toLeft      : boolean;      -- Define a direção (esquerda ou direita)
        bitsToShift : positive      -- Quantidade de bits a deslocar/rotacionar
    );
    port (
        input  : in  std_logic_vector(width-1 downto 0);  -- Entrada
        output : out std_logic_vector(width-1 downto 0)  -- Saída
    );
end entity;

architecture behav of shifterRotator is
    signal remainingShiftedPart : std_logic_vector(width - bitsToShift - 1 downto 0);
    signal toComplete : std_logic_vector(bitsToShift - 1 downto 0);
begin

    toLeft_if: if toLeft generate
        remainingShiftedPart <= input(width - 1 - bitsToShift downto 0);
        output <= remainingShiftedPart & toComplete;
    end generate;
    notToLeft_if: if not toLeft generate
        remainingShiftedPart <= input(width - 1 downto bitsToShift);
        output <= toComplete & remainingShiftedPart;
    end generate;

    isShifter_if: if isShifter generate
        nIsLogicalnToLeft_if: if not isLogical and not toLeft generate
            toComplete <= (others => remainingShiftedPart(width - 1 - bitsToShift));
        end generate;
        notNIsLogicalnToLeft_if: if not (not isLogical and not toLeft) generate
            toComplete <= (others => '0');
        end generate;
    end generate;
    notIsShifter_if: if not isShifter generate
        toLeft_if2: if toLeft generate
            toComplete <= input(width - 1 downto width - bitsToShift);
        end generate;
        notToLeft_if2: if not toLeft generate
            toComplete <= input(bitsToShift - 1 downto 0);
        end generate;
    end generate;

end architecture;