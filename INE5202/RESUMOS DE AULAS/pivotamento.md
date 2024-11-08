# Pivotamento parcial

O pivotamento parcial é uma técnica utilizada para mitigar o erro de arredondamento comentado na explicação sobre eliminação de Gauss, basicamente consiste em antes de cada passo de eliminação, verificar os módulos de todos os elementos da coluna que está sendo resolvida, abaixo da linha K (onde K é a iteração das eliminações) se necessário alternar a posição das linhas para que a linha com elemento de maior módulo esteja "em cima".

Isso faz com que a gente elimine potenciais pivôs nulos, além de sempre utilizar o maior pivô disponível, o que faz com que o fator multiplicativo do pivô seja menor do que os outros e dessa forma o erro numérico acumulado seja menor.

# Pivotamento total

Da mesma forma que no pivotamento parcial nós trocavamos as linhas de lugar, agora também iremos trocar colunas de lugar, de forma a sempre utilizar o maior valor (em módulo) da matriz como pivô. Esse tipo de operação precisa levar em conta ao final em qual posição está cada incógnita, já que estamos alterando a ordem delas.

Esse método adiciona uma complexidade maior ao algoritmo e possui poucos benefícios reais, normalmente se usa apenas pivotamento parcial.