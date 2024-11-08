# Método da Bisseção

É comum que nós queiramos encontrar a solução (ou raiz, ou zero blablabla) de uma função `f(x) = 0`, e apesar de que pra algumas funções é simples isolar a variável e obter o resultado, nem sempre é tão fácil. Por exemplo, tente resolver `f(x) = cos(x) - x` (não tente) dessa forma.

Já que nem toda solução é tão simples, precisamos encontrar outras formas de se isolar X ou de resolver a equação `f(x) = 0`. A boa notícia é que existem alguns jeitos, a má notícia é que nem todos eles funcionam pra qualquer função.

## Isolando ou localização da solução

1. Conhecimento prático do problema ou da geração da função

Se você tem uma boa ideia de como deveria ser o comportamento da função em seu 0, é capaz de tentar estimar um ponto para ele ou aproximar de alguma forma, principalmente se sua função é uma representação de algum fenômeno físico.

2. Gráfico da função geradora

Ao criar um gráfico (usando software ou manualmente) você pode ser capaz de aproximar ou até em alguns casos específicos encontrar o valor de X que satisfaz a equação `f(x) = 0`.

3. Agrupamento de funções

Existem tipos de funções com propriedades parecidas que podem sem agrupadas em conjuntos de classificação para que algumas propriedades possam ser aplicadas a elas.

4. Teorema de Bolzano

Esse teorema tem o seguinte enunciado: 

> Se `y = f(x)` for contínua no intervalo `[a, b]` e `f(a) * f(b) <= 0` então existe um `ɑ` pertencente a `[a, b]` tal que `f(ɑ) = 0`. 

O teorema faz uma condição suficiente, porém não necessária. O que isso significa? Que caso a condição seja cumprida eu tenho certeza de que `ɑ` existe, porém caso não seja cumprida NÃO significa que não exista uma solução.

## Refinamento da solução

Existem formas diferentes de refinarmos um resultado dado em região aproximada para um valor realmente útil para nós como solução da função.

1. Métodos de quebra

Geramos sequências de intervalos, cada vez menores e sempre contendo a raiz. Esses métodos possuem convergência garantida (ou seja, vão chegar no resultado) mas costumam ser mais lentos.

2. Métodos de linearização

Geramos uma sequência de valores que convergem para a raiz, como estamos dessa vez gerando valores e não intervalos é possível esses métodos nem sempre cheguem a convergir na raíz, mas eles tem um ganho de performance considerável.

3. Métodos híbridos

Bom, são híbridos.

## Explicando o método da bisseção

O método da bisseção é um método de quebra, que usamos para obter raízes reais (nada de complexos aqui amiguinho). Aqui usamos o teorema de Bolzano para nos certificarmos de que existe uma raíz `ɑ` dentro de um intervalo `[a, b]`. Se `ɑ ≠ a` e `ɑ ≠ b`, então uma aproximação possível para essa raiz pode ser `x' = (a + b) / 2`.

Repetimos o processo novamente utilizando `[a, x']` ou `[x1, b]` como próximo intervalo

## Exercício

Encontre o zero da função `f(x) = cos(x) - x` com um erro menor do que `5.10^-2`

**Resolução em Python no arquivo em `/notas/scripts/bissec.py`**

**Resolução em Octave no arquivo em `/notas/scripts/bissec.m`**