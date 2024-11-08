import numpy as np

def diferencas_divididas(ys, xs):
    if len(ys) == 1:
        return ys[0]
    return (diferencas_divididas(ys[1:], xs[1:]) - diferencas_divididas(ys[:-1], xs[:-1])) / (xs[-1] - xs[0])

def calcular_diferencas_divididas(xs, ys):
    n = len(xs)
    dd_table = [ys.copy()]  # Primeira linha: valores de y
    
    for i in range(1, n):
        linha = []
        for j in range(n - i):
            # Calcula a diferença dividida e adiciona na nova linha
            valor = (dd_table[i-1][j+1] - dd_table[i-1][j]) / (xs[j+i] - xs[j])
            linha.append(valor)
        dd_table.append(linha)
    
    return dd_table

def printar_triangulo_diferencas(xs, ys, dd_table):
    n = len(xs)
    print(f"{'X':>6} {'Y':>6} " + "".join([f"  Ordem {i}" for i in range(n)]))
    for i in range(n):
        # Printa x seguido dos valores das diferenças divididas de ordem 0 até i
        print(f"{xs[i]:>6} {ys[i]:>6} ", end="")
        for j in range(i + 1):
            print(f" {dd_table[j][i-j]:>8.5f}", end="")
        print()  # Nova linha após cada linha do triângulo

def interpolacao_diferencas_divididas(values_table):
    xs = values_table[0, :]
    ys = values_table[1, :]
    a = [diferencas_divididas(ys[:i], xs[:i]) for i in range(1, len(xs) + 1)]

    def P(x):
        result = a[0]
        dx = 1
        for i in range(1, len(a)):
            dx *= (x - xs[i - 1])
            result += a[i]*dx
        return result

    return P

def interpolacao_diferencas_divididas_poly(values_table):
    xs = values_table[0, :]
    ys = values_table[1, :]
    a = [diferencas_divididas(ys[:i+1], xs[:i+1]) for i in range(len(xs))]

    # Inicializa o polinômio com o termo constante
    P = np.poly1d([a[0]])
    for i in range(1, len(a)):
        # Cria um polinômio (x - xs[0]) * (x - xs[1]) * ... * (x - xs[i-1])
        term = np.poly1d([1])
        for j in range(i):
            term *= np.poly1d([1, -xs[j]])
        # Adiciona o termo ao polinômio acumulado, multiplicado pelo coeficiente apropriado
        P += a[i] * term

    return P

def interpolacao_diferencas_divididas_poly_e_str(values_table):
    xs = values_table[0, :]
    ys = values_table[1, :]
    a = [diferencas_divididas(ys[:i+1], xs[:i+1]) for i in range(len(xs))]

    # Inicializa o polinômio com o termo constante
    P = np.poly1d([a[0]])
    polynomial_string = f"{a[0]:.5f}"  # Termo constante formatado com 5 dígitos

    # Constrói o polinômio e a string passo a passo
    for i in range(1, len(a)):
        # Cria um polinômio para o termo atual (x - xs[0]) * (x - xs[1]) * ... * (x - xs[i-1])
        term_poly = np.poly1d([1])
        term_str = f" + {a[i]:.5f}"

        for j in range(i):
            term_poly *= np.poly1d([1, -xs[j]])
            term_str += f"*(x-{xs[j]:.5f})"

        P += a[i] * term_poly
        polynomial_string += term_str

    return P, polynomial_string

if __name__ == "__main__":
    # values_table = np.array([[0.1, 0.3, 2.0],
    #                          [4.0, 1.0, -1.0]],
    #                         dtype=float)
    # p = interpolacao_diferencas_divididas(values_table)
    # print(p(-1))
    # print(p(0))
    # print(p(2))

    # values_table = np.array([[0.1, 0.3, 0.5, 0.7],
    #                          [0.101, 0.327, 0.625, 1.043]], dtype=float)
    # p = interpolacao_diferencas_divididas(values_table)
    # print(p(0.4))

    # values_table = np.array([[0.1, 0.3, 0.5, 0.7],
    #                          [0.101, 0.327, 0.625, 1.043]], dtype=float)
    # p = interpolacao_diferencas_divididas_poly(values_table)
    # print(p)
    # print(p(0.4))

    # values_table = np.array([[-1, 0, 2],
    #                          [4, 1, -1]], dtype=float)
    # values_table = np.array([[0.1, 0.3, 0.5, 0.7],
    #                          [0.101, 0.327, 0.625, 1.043]], dtype=float)

    values_table = np.array([[0.1, 0.3, 0.5, 0.7],
                             [0.101, 0.327, 0.625, 1.043]], dtype=float)
    p, str_p = interpolacao_diferencas_divididas_poly_e_str(values_table)
    print(f"Pn(x) = {str_p}")
    print(p)
    print(f"P(0.4) = {p(0.4)}")
    
    # Calcula as diferenças divididas
    dd_table = calcular_diferencas_divididas(values_table[0, :], values_table[1, :])

    # Printa o triângulo de diferenças divididas
    printar_triangulo_diferencas(values_table[0, :], values_table[1, :], dd_table)
