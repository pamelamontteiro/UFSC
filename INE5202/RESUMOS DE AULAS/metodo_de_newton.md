# Método de Newton

Ambos os métodos que vimos até agora foram métodos de quebra, onde a cada iteração damos um novo intervalo (menor do que o da última iteração) onde `ɑ` está contido. No começo dizemos também que haviam os chamados métodos de linearização, onde encontramos apenas valores a cada iteração.

O método de Newton é um método de linearização, criado obviamente por Newton e que utiliza os seguintes passos.

1. Tomamos uma aproximação inicial usando algum outro método

2. Calculamos o ponto (x0, f(x0)) e o coeficiente angular f'(x0) da reta r(x) que é tangente a f(x) em x0. Portanto, essa reta é definida por:

```
r(x) = f(x0) + f'(x0) * (x - x0)
```

3. Calcumos a interseção de r(x) com o eixo x, fazendo r(x) = 0, obtendo a função de iteração x = g(x)