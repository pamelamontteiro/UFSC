# PROVA 2 (2023.2) - Cálculo Numérico em Computadores

<b> Aluna: Pamela Santos monteiro </b>

# QUESTÃO 1

Considere o sistema de equações não-lineares dado a seguir.

<b>f<sub>1</sub>(x<sub>1</sub>, x <sub>2</sub>) = 0.04x<sub>1</sub>³+ 0.01x<sub>2</sub> - 0.25 </b>

<b>  f<sub>2</sub>(x<sub>1</sub>, x <sub>2</sub>) = 0.01x<sub>1</sub> + 0.06x<sub>2</sub>³ - 0.25 </b>


Como aproximação inicial use x<sub>0</sub> = [2 0.5], analise a solução encontrada x<sub>1</sub> = x<sub>0</sub> + ∂, calculando os valores de x1 e x2 formado pelo sistema (j∂ = - F). Utilize o algoritmo com a matriz de derivadas parciais de forma analitica para uma precisão de 10-6, utilizando como critério de parada o valor máximo de | ∂ | (representação decimal com ponto e operações com dupla precisão).


<b> Resposta: 

k = 1 (iteração)

δ = [-0.163501621120889   , 0.348077813802686]

x<sub>1</sub> = [1.836498378879111   ,  0.848077813802686]


k = 2 

δ = [-0.0128588014514931  , -0.1036726976520010]

x<sub>2</sub> = [1.8336639577427618  , 0.744405116150685]


...

k = 5 

δ = [4.09974931884e-009   -1.65301816570743e-007]

x<sub>5</sub> = [1.823952584181906 0.728276070256352]

</b>

Escolha uma opção:

( X ) Verdadeiro

() Falso



Resposta em PYTHON 

```python

import numpy as np

# Funções f1 e f2
def f1(x1, x2):
    return 0.04*x1**3 + 0.01*x2 - 0.25

def f2(x1, x2):
    return 0.01*x1 + 0.06*x2**3 - 0.25

# Derivadas parciais de f1 e f2
def df1_dx1(x1, x2):
    return 0.12 * x1**2

def df1_dx2(x1, x2):
    return 0.01

def df2_dx1(x1, x2):
    return 0.01

def df2_dx2(x1, x2):
    return 0.18 * x2**2

# Matriz Jacobiana J(x)
def jacobian(x1, x2):
    return np.array([
        [df1_dx1(x1, x2), df1_dx2(x1, x2)],
        [df2_dx1(x1, x2), df2_dx2(x1, x2)]
    ])

# Vetor F(x)
def F(x1, x2):
    return np.array([f1(x1, x2), f2(x1, x2)])

# Método de Newton
def newton_method(x0, tol=1e-6, max_iter=100):
    x = np.array(x0)
    for k in range(max_iter):
        J = jacobian(x[0], x[1])
        F_val = F(x[0], x[1])
        
        # Resolvendo J * delta = -F
        delta = np.linalg.solve(J, -F_val)
        
        # Atualizando a solução
        x = x + delta
        
        # Critério de parada: se o máximo de |delta| for menor que a tolerância, paramos
        if np.max(np.abs(delta)) < tol:
            print(f"Convergência atingida na iteração {k+1}")
            return x, k+1
        
    print("Máximo de iterações atingido")
    return x, max_iter

# Aproximação inicial
x0 = [2, 0.5]

# Chamando o método de Newton
solution, iterations = newton_method(x0)

# Exibindo o resultado
print(f"Solução encontrada: x1 = {solution[0]}, x2 = {solution[1]}")
```
<b>
Exemplo de Saída </b>

Se você rodar o código com a aproximação inicial 
x<sub>0</sub> =[2,0.5], a saída pode ser semelhante a:

```
Convergência atingida na iteração 5
Solução encontrada: x1 = 1.823952584181906, x2 = 0.728276070256352

```
Isso indica que a solução convergiu após 5 iterações, e os valores aproximados para 
x 1  e  x 2 são 1.824 e  0.728, respectivamente.



# QUESTÃO 2


Dado o seguinte sistema de equações lineares com determinante = 2.6458:

<b> x<sub>1</sub> + x<sub>2</sub> + 2x<sub>3</sub> = 27 </b>

<b> 3x<sub>1</sub> - 5x<sub>2</sub> + x<sub>3</sub> = -9 </b>

<b> 2x<sub>1</sub> - x<sub>2</sub> + x<sub>3</sub> = -1 </b>

Utilizando o método da Decomposição LU de Crout ou Doolittle, mostre como fica a Matriz L (triangular inferior) a Matriz U (triangular superior), a solução y (Ly = b) e a solução (Ux = y). Considere os resultados na caixa de texto.

l =

1 .00000  ,  0.00000   ,   0.00000

3 .00000  ,  -8.00000   ,   0.00000

2 .00000  ,  -1.00000   ,   -4.37500


u = 

1 .00000  ,  1.00000   ,   2.00000

0 .00000  ,  1.00000   ,   0.62500

0 .00000  ,  0.00000   ,   1.00000


y = 

27.000  11.250  10.000


x = 2 .000  ,  5.000   ,   10.000


Resposta em Python 

```python

import numpy as np

# Matriz A (coeficientes do sistema)
A = np.array([[1, 1, 2],
              [3, -5, 1],
              [2, -1, 1]], dtype=float)

# Vetor b (lado direito)
b = np.array([27, -9, -1], dtype=float)

# Decomposição LU (Método de Crout)
n = len(A)
L = np.zeros((n, n), dtype=float)
U = np.zeros((n, n), dtype=float)

# Preenchendo as matrizes L e U
for i in range(n):
    # Calculando os elementos de L
    L[i, i] = 1  # Os elementos da diagonal de L são 1
    for j in range(i, n):
        U[i, j] = A[i, j] - np.dot(L[i, :i], U[:i, j])
    for j in range(i+1, n):
        L[j, i] = (A[j, i] - np.dot(L[j, :i], U[:i, i])) / U[i, i]

# Resolvendo Ly = b
y = np.zeros(n)
for i in range(n):
    y[i] = b[i] - np.dot(L[i, :i], y[:i])

# Resolvendo Ux = y
x = np.zeros(n)
for i in range(n-1, -1, -1):
    x[i] = (y[i] - np.dot(U[i, i+1:], x[i+1:])) / U[i, i]

# Exibindo os resultados
print("Matriz L:")
print(L)
print("\nMatriz U:")
print(U)
print("\nSolução y (Ly = b):")
print(y)
print("\nSolução x (Ux = y):")
print(x)



```

# QUESTÃO 3

Dado o seguinte sistema linear com determinante = - 35 e Número de Condição = 4 ,32022783242597;

<b> x<sub>1</sub> + x<sub>2</sub> + x<sub>4</sub> = 2 </b>

<b> 2x<sub>1</sub> + x<sub>2</sub> - x<sub>3</sub> - x<sub>4</sub> = 1</b>

<b> -x<sub>1</sub> - 2x<sub>2</sub> + 3x<sub>3</sub> - x<sub>4</sub> = 4 </b>

<b> 3x<sub>1</sub> - x<sub>2</sub> - x<sub>3</sub> + 2x<sub>4</sub> = -3</b>


Utilizando o algoritmo do método da Eliminação Gaussiana com pivotamento parcial sem a troca fisica das linhas e dupla precisão, temos como resultados finais (representação decimal com ponto):



# Matriz escalonada A
<br>
0.000000000000000  , 1.333333333333333   ,  0.333333333333333  , 1.333333333333333

0.000000000000000  , 0.000000000000000   ,  0.000000000000000  , -2.592307692307692

0.000000000000000  ,  0.000000000000000   ,   3.250000000000000   ,  0.250000000000000

3.000000000000000  , -1.000000000000000   , -1.000000000000000  , 2.000000000000000


vetor b

b= 3.000000000000000  , 1.15384615384615   ,  8.250000000000000  , -3.000000000000000


Solução do sistema 

x = 0.71428571285714  , 1.714285714285714   ,   2.571428571428572   ,  -0.428571428571429

o = 4 1  3 2 

Escolha uma opção:
( x ) Verdadeiro
() Falso


Codigo em python

``` python

import numpy as np

def gauss_elimination_with_pivoting(A, b):
    # Número de equações
    n = len(b)
    
    # Formando a matriz aumentada [A | b]
    Augmented = np.hstack((A, b.reshape(-1, 1)))
    
    # Eliminação Gaussiana com pivotamento parcial
    for i in range(n):
        # Passo 1: Encontre o maior valor na coluna atual (pivotamento parcial)
        max_row = np.argmax(np.abs(Augmented[i:n, i])) + i  # Índice da linha com o maior valor absoluto
        
        # Troca de linhas
        Augmented[[i, max_row]] = Augmented[[max_row, i]]
        
        # Passo 2: Elimina as variáveis abaixo do pivô
        for j in range(i+1, n):
            # Fator de eliminação
            factor = Augmented[j, i] / Augmented[i, i]
            # Subtrai a linha i multiplicada pelo fator da linha j
            Augmented[j, i:] -= factor * Augmented[i, i:]
    
    # Substituição retroativa para encontrar a solução
    x = np.zeros(n)
    
    for i in range(n-1, -1, -1):
        # Inicializa o valor da variável
        x[i] = Augmented[i, -1] / Augmented[i, i]
        
        # Subtrai as variáveis já resolvidas
        for j in range(i-1, -1, -1):
            Augmented[j, -1] -= Augmented[j, i] * x[i]
    
    return x

# Matriz de coeficientes A
A = np.array([
    [1, 1, 0, 1],
    [2, 1, -1, -1],
    [-1, -2, 3, -1],
    [3, -1, -1, 2]
], dtype=float)

# Vetor b
b = np.array([2, 1, 4, -3], dtype=float)

# Chama a função de eliminação gaussiana
x = gauss_elimination_with_pivoting(A, b)

# Exibe o resultado
print("Solução do sistema:", x)


```


Resposta 

```
Solução do sistema: [ 0.71428571  1.71428571  2.57142857 -0.42857143]

```

# QUESTÃO 4

Na representação F (10,5, -6, 6) se a = 42745,46 e b = 12233,5 o resultado de a + b truncando é 0.54978 x 10⁵

Escolha uma opção:

Verdadeiro ( x )

Falso ( )

<b> Resposta da questão 4 </b>

A representação F (10,5, -6, 6) descreve um número com a seguinte estrutura:

*   F indica que estamos utilizando notação de ponto fixo (com base decimal). 

*   (10, 5): A parte 10 indica que o número total de dígitos é 10, e a parte 5 indica que há 5 dígitos após a vírgula (ponto decimal).

*   (-6, 6): Este par descreve a faixa do número e o arredondamento/truncamento.

Portanto, F (10,5, -6, 6) descreve um número com até 10 dígitos no total, sendo que 5 desses dígitos vêm após a vírgula.

<b> Operação de Truncamento</b>

O truncamento é uma operação que corta o número na posição desejada, sem arredondamento. Ou seja, se você tem um número com mais casas decimais do que o permitido, ele será truncado para ter apenas 5 casas após a vírgula, sem arredondamento.

A operação:
Temos os valores fornecidos:
-   a=42745,46
-   b=12233,5

Vamos somar:

-   <b>a+b=42745,46 + 12233,5 = 54978,96 </b>

Agora, devemos truncar o número para 5 casas decimais (de acordo com o sistema F(10,5)), ou seja, cortar tudo depois da quinta casa decimal. Como temos a soma 54978,96, truncando para 5 casas decimais, obtemos:

-   54978,96000 (após truncamento)

Agora, representamos isso em notação científica:

-   54978,96=0.54978×10^5

Resposta:
A afirmação está <b> Verdadeira </b>, pois a soma truncada resulta em 0.54978×10^5, conforme esperado.




# QUESTÃO 5

Dado o seguinte sistema linear com determinante = 253 e Número de Condição = 2, 4834:

<b> 5x<sub>1</sub> + 2x<sub>2</sub> + x<sub>7</sub> = 7 </b>

<b> -x<sub>1</sub> + 4x<sub>2</sub> + 2x<sub>3</sub> = 3 </b>

<b> 2x<sub>1</sub> + 3x<sub>2</sub> + 10x<sub>3</sub>  = -1 </b>



Utilizando o método Gaus - Seidel, com estimativa inicial  [0 0 0] e precisão de 10^-6, temos como resultado final para um determinado w  (fator de relação), k para o número de iteração e x para solução do sistema,
respectivamente (representação decimal com ponto e dupla precisão).


Escolha uma opção:

A) w = 0.85; k = 8; x = [9.9999983507281e-001 , 9.9999928893933e-001 ,  3.11700142487472e-008]

B) O sistema de equação não satisfaz a condição de ser diagonal dominante e não converge.

<b>
C) w=1; k = 10; x = [1.000000018988505e+000   1.000000019148e+000  -9.41956610489569e-009] </b>
<br>


D) w = 1; k = 8; x = [9.9999983507281e+001   9.99999928893933e-001  3.11700142487472e-008]

E) w=0; k = 10; x = [1 1 -1]

<b> Resposta: </b>

Algoritmo de Gauss - Seidel 

```python

import numpy as np

# Função para o método de Gauss-Seidel
def gauss_seidel(A, b, x0, w, tol=1e-6, max_iter=100):
    x = x0.copy()
    n = len(b)
    for k in range(max_iter):
        x_old = x.copy()
        
        # Atualização das variáveis
        for i in range(n):
            # Calculando a nova estimativa para x_i
            sum_ = b[i] - np.dot(A[i, :i], x[:i]) - np.dot(A[i, i+1:], x_old[i+1:])
            x[i] = (1 - w) * x_old[i] + w * sum_ / A[i, i]
        
        # Verificar critério de parada
        if np.linalg.norm(x - x_old, ord=np.inf) < tol:
            return x, k+1
    return x, max_iter

# Definindo a matriz A, o vetor b e a estimativa inicial
A = np.array([[5, 2, 1],
              [-1, 4, 2],
              [2, 3, 10]], dtype=float)

b = np.array([7, 3, -1], dtype=float)

x0 = np.array([0, 0, 0], dtype=float)  # Estimativa inicial
w = 1  # Fator de relaxação

# Aplicando o método de Gauss-Seidel
x, k = gauss_seidel(A, b, x0, w)

# Exibindo a solução
print("Solução final x:", x)
print("Número de iterações k:", k)

```

​




