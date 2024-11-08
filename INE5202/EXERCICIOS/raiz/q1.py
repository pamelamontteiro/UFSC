import math

from sympy import symbols, exp

from falsa_posicao import falsa_posicao
from bissecao import bissecao
from secante import secante
from newton import newton


def main():
    result, interactions, precision = bissecao(lambda x: math.exp(-0.1 * x) + x**2.0 - 10, (2.5, 3.5), 1e-5)
    print("Bisseção")
    print(f"Resultado: {result:.16}")
    print(f"Iteração: {interactions}")
    print(f"Precisão: {precision:.16}")
    print()

    result, interactions, precision = falsa_posicao(lambda x: math.exp(-0.1 * x) + x**2.0 - 10, (2.5, 3.5), 1e-5)
    print("Falsa posição")
    print(f"Resultado: {result:.16}")
    print(f"Iteração: {interactions}")
    print(f"Precisão: {precision:.16}")
    print()
    
    x = symbols('x')
    func = exp(-0.1 * x) + x**2.0 - 10.0

    result, interactions, precision = newton(func, x, 2.5, 1e-5)
    print("Newton")
    print(f"Resultado: {result:.16}")
    print(f"Iteração: {interactions}")
    print(f"Precisão: {precision:.16}")
    print()

    result, interation, precision = secante(lambda x: math.exp(-0.1 * x) + x**2.0 - 10, (1.5, 2.5), 1e-5)
    print("Secante")
    print(f"Resultado: {result:.16}")
    print(f"Iteração: {interation}")
    print(f"Precisão: {precision:.16}")
    print()

if __name__ == "__main__":
    main()
