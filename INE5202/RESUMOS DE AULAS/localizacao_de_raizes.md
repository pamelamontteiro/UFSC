# Localização de raízes

Em todos os métodos que nós usamos anteriormente se fez necessário um "palpite" inicial de onde estaria a raíz, para ai sim o método refinar esse primeiro dado em um resultado mais próximo da realidade. Nos exemplos acabamos utilizando formas empíricas de estimar a raiz, porém o que aconteceria se nós quisessemos "automatizar" esse processo?

## Localização de raízes em equação polinomiais

O processo será diferente dependendo do tipo de equação, primeiro vamos tratar para um caso onde nossa equação é polinomial. Primeiramente você tem que saber que em algum momento no passado um matemático ai provou que é impossível obter uma expressão para solução de raízes em polinômios arbitrários de grau superior a quatro. Pra polinômios de grau 1, isolamos a variável. Grau 2? Baskhara. Graus 3 e 4 possuem fórmulas mais complexas mas ainda assim existem. Acima disso apenas métodos iterativos como os que vimos anteriormente podem nos ajudar.

Outra coisa importante a se lembrar, é possível determinar a quantidade de raízes existentes para um polinômio qualquer de grau `N`, por consequência do teorema fundamental da álgebra, sempre teremos `N` soluções (sendo que elas podem ser reais, imaginárias, distintas ou repetidas).

## Cota do módulo máximo

