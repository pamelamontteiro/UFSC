import numpy as np
import sympy as sp


def interpolacao_lagrange(values_table):
    xs = values_table[0, :]
    y = values_table[1, :]
    
    def P(x):
        def L(x, j):
            result = 1
            for i in range(len(xs)):
                if i != j:
                    result *= (x - xs[i]) / (xs[j] - xs[i])
            return result

        for term in range(len(xs)):
            print(f"L{len(xs)},{term}({x:.5f}) = {L(x, term):.5f}")

        return sum(y[term] * L(x, term) for term in range(len(xs)))
    
    return P

def interpolacao_lagrange_poly(values_table):
    x = sp.symbols('x')  # Definindo o símbolo 'x' para operações simbólicas
    xs = values_table[0, :]
    ys = values_table[1, :]
    
    def L(k):
        term = 1
        for i in range(len(xs)):
            if i != k:
                term *= (x - xs[i]) / (xs[k] - xs[i])
        return term

    P = sum(ys[k] * L(k) for k in range(len(xs)))
    return sp.simplify(P)

def interpolacao_lagrange_poly_2(values_table):
    xs = values_table[0, :]
    ys = values_table[1, :]
    
    # Inicializar o polinômio resultante como 0
    P = np.poly1d(0)
    
    for k in range(len(xs)):
        # Inicializar o termo do polinômio para Lk(x)
        term = np.poly1d(1)
        for i in range(len(xs)):
            if i != k:
                # (x - xs[i]) / (xs[k] - xs[i])
                term *= np.poly1d([1, -xs[i]]) / (xs[k] - xs[i])
        # Adicionar o termo multiplicado pelo valor de y correspondente ao polinômio geral
        P += term * ys[k]
    
    return P


if __name__ == "__main__":
    # values_table = np.array([[1.0, 1.3, 1.6],
    #                          [0.7652, 0.6200, 0.4540]],
    #                         dtype=float)
    # p = interpolacao_lagrange(values_table)

    # print(p(1.2))
    
    # values_table = np.array([[2.0, 2.05, 2.1, 2.15],
    #                          [0.693, 0.718, 0.742, 0.765]], dtype=float)
    # p = interpolacao_lagrange_poly(values_table)
    # print(p)
    # x = sp.symbols('x')
    # valor_em_ponto = p.subs(x, 1.2).evalf()
    # print(f"O valor do polinômio em x = 1.2 é {valor_em_ponto}")

    # p = interpolacao_lagrange_poly_2(values_table)
    # print(p)
    # print(p(0.4))

    values_table = np.array([[0.1, 0.3, 0.5, 0.7],
                             [0.101, 0.327, 0.625, 1.043]], dtype=float)
    p = interpolacao_lagrange(values_table)
    print("A)")
    result = p(0.4)

    print(f"\nB)\nResultado {result}")

    # values_table = np.array([[0.1, 0.3, 0.5, 0.7],
    #                         [0.101, 0.327, 0.625, 1.043]], dtype=float)
    # p = interpolacao_lagrange(values_table)
    # print("A)")
    # result = p(0.4)

    # print(f"\nB)\nResultado {result}")
