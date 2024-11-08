# Método da falsa posição

O método da Bisseção é criticado por ser muito lento, já que ele reduz apenas 50% do intervalo a cada iteração, o método da falsa posição é uma alternativa para otimizar isso.

1. Tomamos um intervalo inicial `[a, b]` com `ɑ` pertencente ao intervalo (checado pelo teorema de Bolzano)

2. Definir uma reta `r(x)` que passe pelos pontos extremos do intervalo

```
r(x) = f(a) + { [f(b) - f(a)] / [b - a] } * (x - a)
```

3. Agora para particionar o intervalo, vamos calcular um valor `x'` de modo que `r(x') = 0`

```
x' = a - { [f(a) * (b - a)] / [f(b) - f(a)] }
```

4. Com `x'` calculado verificamos se `f(x') = 0`, caso seja verdadeiro então `ɑ = x'`

Caso não seja verdadeiro, vamos novamente utilizar o teorema de bolzano nos dois subintervalos criados para saber se `ɑ` está em `[a , x']` ou em `[x' b]`

5. Reiniciamos o processo com o novo intervalo até chegarmos a `ɑ` ou batermos o índice de tolerância.