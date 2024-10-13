
#### Circuitos combinacionais

#

Atividade 1 - Pequenas Práticas: codificador de código gray parametrizável

Descreva um circuito correspondente a um codificador de código gray de width bits.  Esse codificador recebe um valor binário de width bits na entrada (binInput) e devolve o código gray correspondente na saída (grayOutput), também em width bits.
Um exemplo de tabela-verdade da correspondência dos códigos binários e gray para o caso específico 3 bits é mostrado a seguir:

<img src="../atv1.png">

Da análise dessas <b>tabelas-verdade</b> pode-se chegar à seguinte regra geral para descrição de cada bit do código gray (G) corresponde a um valor binário (B):
<b>
G[i] = B[i] xor B[i+1]
</b>

Não altere a descrição da entidade, apenas inclua possíveis declarações e comandos concorrentes na arquitetura da entidade. O uso de processos não é permitido.

# Sintaxe:

 ```vhdl

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
            ''' G[i] = B[i] xor B[i+1] '''
            grayOutput(i) <= binInput(i) xor binInput(i+1);
        end generate gen_gray;

end architecture;

```

Esse código VHDL descreve um codificador Gray parametrizável que converte um valor binário de width bits em um valor de código Gray também de width bits. O código utiliza uma abordagem concorrente e não processual (não permite o uso de processos) para realizar a conversão.

*   Essas linhas incluem a biblioteca IEEE padrão e permitem o uso de tipos e operações relacionados à lógica digital, como std_logic_vector e operações lógicas (xor).


<b> ENTIDADE </b> <br><br>

 ```vhdl

entity grayEncoder is
   generic(width: natural); -- Parametriza a largura do codificador (número de bits)
   port(
      binInput: in std_logic_vector(width-1 downto 0); -- Entrada binária de largura "width"
      grayOutput: out std_logic_vector(width-1 downto 0) -- Saída Gray de largura "width"
   );
end entity;

```
*   Aqui é definida a entidade grayEncoder, que tem um parâmetro genérico width. Esse parâmetro especifica o número de bits para as entradas e saídas. 

    A entidade possui duas portas:
    *   binInput: vetor de bits de entrada, representando o número binário.
    *   grayOutput: vetor de bits de saída, representando o código Gray correspondente.

 <b> Generate para os bits restantes: </b> <br><br>


 ```vhdl
gen_gray: for i in 0 to width-2 generate
   grayOutput(i) <= binInput(i) xor binInput(i+1);
end generate gen_gray;


```
*   O laço generate percorre os bits de 0 até <b> width-2
</b> (ou seja, todos os bits menos o mais significativo).
*   Para cada iteração, o bit Gray correspondente é calculado como <b>binInput(i) xor binInput(i+1)</b>. Essa operação segue a regra do código Gray, onde cada bit de saída é o resultado da operação xor entre dois bits consecutivos da entrada binária.
*   A operação de <b> xor </b> é usada para comparar bits adjacentes do número binário e determinar os bits do código Gray.

# Regra do código Gray:

*   O bit mais significativo do código Gray (grayOutput(width-1)) é sempre igual ao bit mais significativo do valor binário (binInput(width-1)).
*   Para os demais bits, o bit do código Gray em uma determinada posição i é calculado como a operação XOR entre o bit binário na posição i e o bit binário na posição i+1. Ou seja, grayOutput(i) = binInput(i) xor binInput(i+1).

Entrada Binária (binInput)| Saída Gray (grayOutput)
---  | ---
000  | 000  
001  | 001
001  | 011
011  | 010
100  | 110
101  | 111
110  | 101
111  | 100

<b> Explicação do Processo de Codificação </b>
1. Entrada Binária: 000
    *   binInput(2) = 0, binInput(1) = 0, binInput(0) = 0
    *   grayOutput(2) = binInput(2) = 0
    *   grayOutput(1) = binInput(1) xor binInput(2) = 0 xor 0 = 0
    *   grayOutput(0) = binInput(0) xor binInput(1) = 0 xor 0 = 0
    *   <b> Resultado: grayOutput = 000</b> <br>

2. Entrada Binária: 001
    *   binInput(2) = 0, binInput(1) = 0, binInput(0) = 1
    *   grayOutput(2) = binInput(2) = 0
    *   grayOutput(1) = binInput(1) xor binInput(2) = 0 xor 0 = 0
    *   grayOutput(0) = binInput(0) xor binInput(1) = 1 xor 0 = 1
    *   <b> Resultado: grayOutput = 001</b> <br>

3. Entrada Binária: 010
    *   binInput(2) = 0, binInput(1) = 1, binInput(0) = 0
    *   grayOutput(2) = binInput(2) = 0
    *   grayOutput(1) = binInput(1) xor binInput(2) = 1 xor 0 = 1
    *   grayOutput(0) = binInput(0) xor binInput(1) = 0 xor 1 = 1
    *  <b>  Resultado: grayOutput = 011</b> <br>

4. Entrada Binária: 011
    *   binInput(2) = 0, binInput(1) = 1, binInput(0) = 1
    *   grayOutput(2) = binInput(2) = 0
    *   grayOutput(1) = binInput(1) xor binInput(2) = 1 xor 0 = 1
    *   grayOutput(0) = binInput(0) xor binInput(1) = 1 xor 1 = 0
    *   <b> Resultado: grayOutput = 010</b> <br>

5. Entrada Binária: 100
    *   binInput(2) = 1, binInput(1) = 0, binInput(0) = 0
    *   grayOutput(2) = binInput(2) = 1
    *   grayOutput(1) = binInput(1) xor binInput(2) = 0 xor 1 = 1
    *   grayOutput(0) = binInput(0) xor binInput(1) = 0 xor 0 = 0
    *   <b> Resultado: grayOutput = 110</b> <br>

6. Entrada Binária: 101
    *   binInput(2) = 1, binInput(1) = 0, binInput(0) = 1
    *   grayOutput(2) = binInput(2) = 1
    *   grayOutput(1) = binInput(1) xor binInput(2) = 0 xor 1 = 1
    *   grayOutput(0) = binInput(0) xor binInput(1) = 1 xor 0 = 1
    *   <b> Resultado: grayOutput = 111</b> <br>

7. Entrada Binária: 110
    *   binInput(2) = 1, binInput(1) = 1, binInput(0) = 0
    *   grayOutput(2) = binInput(2) = 1
    *   grayOutput(1) = binInput(1) xor binInput(2) = 1 xor 1 = 0
    *   grayOutput(0) = binInput(0) xor binInput(1) = 0 xor 1 = 1
    *  <b> Resultado: grayOutput = 101 </b> <br>

8. Entrada Binária: 111
    *   binInput(2) = 1, binInput(1) = 1, binInput(0) = 1
    *   grayOutput(2) = binInput(2) = 1
    *   grayOutput(1) = binInput(1) xor binInput(2) = 1 xor 1 = 0
    *   grayOutput(0) = binInput(0) xor binInput(1) = 1 xor 1 = 0
    *   <b> Resultado: grayOutput = 100 </b> <br>

# Recapitulando as Regras:
*   O bit mais significativo é sempre o mesmo para os valores binário e Gray.
*   Os bits subsequentes são calculados usando a operação xor entre bits consecutivos da entrada binária.