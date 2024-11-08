# Eliminação de Gauss

A boa e velha técnica de resolução por "escalonamento", aqui temos um sistema com N incógnitas e N equações, representadas como uma matriz "estendida" do sistema, e queremos no final chegar em uma matriz triangular (superior ou inferior) para podermos "isolar" um dos termos com um resultado válido, e então aplicarmos substituições sucessivas nas outras equações para encontrarmos o valor de todas as incógnitas.

## Erro numérico em eliminação de Gauss

Quando estamos trabalhando com sistemas que estão no domínio dos números reais, existe uma precisão máxima que precisamos definir que utilizaremos nas contas. Por exemplo, para um certo sistema S, vamos usar 4 dígitos significativos nas contas.

Ao realizar muitas substituições em uma mesma equação, os erros numéricos vão se acumulando e deteriorando o resultado final. Uma forma de verificar o erro é ao final da resolução, substituir os valores da equação e verificar a diferença.