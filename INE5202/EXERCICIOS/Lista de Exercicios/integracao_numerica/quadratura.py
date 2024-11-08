import numpy as np
import sympy as sp

from math import sqrt, log


TABLE = [
    {},  # só para começar no 1
    {"t": [0],"A": [2]},
    {"t": [-1.0 / sqrt(3.0), 1.0 / sqrt(3.0)],"A": [1, 1]},
    {"t": [0.77459667, -0.77459667, 0.0],"A": [5.0 / 9.0, 5.0 / 9.0, 8.0 / 9.0]},
    {"t": [0.86113631, -0.86113631, 0.33998104, -0.33998104],"A": [0.34785484, 0.34785484, 0.65214516, 0.65214516]},
]

def x_to_t_sp(a, b, t):
    return (b - a) * t / 2 + (b + a) / 2

def quadratura_gaussiana_sp(func, a, b, n, t, x):
    x_func = x_to_t_sp(a, b, t)
    ts = TABLE[n]["t"]
    As = TABLE[n]["A"]
    area = sum(As[i] * func.subs(x, (x_func.subs(t, ts[i]))) * (b - a) / 2.0 for i in range(n))
    return area, x_func, func.subs(x, x_func)

def x_to_t(a, b):
    return lambda t: (b - a) * t / 2.0 + (b + a) / 2.0

def quadratura_gaussiana(func, a, b, n):
    x = x_to_t(a, b)
    ts = TABLE[n]["t"]
    As = TABLE[n]["A"]
    area = sum(As[i] * func(x(ts[i])) * (b - a) / 2.0 for i in range(n))
    return area

def main():
    # func = lambda x: log(2 * x) + x**2
    # a = 1
    # b = 3
    # n = 3

    # area = quadratura_gaussiana(func, a, b, n)
    # print("Area da curva é %s" % area)

    # func = lambda x: 1.0 / x
    # a = 3.0
    # b = 3.6
    # n = 2

    # area = quadratura_gaussiana(func, a, b, n)
    
    # print("Area da curva é %s" % area)

    # func = lambda x: x**3 / 3.0
    # a = 2.0
    # b = 6.0
    # n = 2

    # area = quadratura_gaussiana(func, a, b, n)
    # print("Area da curva é %s" % area)

    func = lambda x: np.sin(x) + x
    a = -3.0
    b = 8.0
    n = 4

    area = quadratura_gaussiana(func, a, b, n)
    print("Area da curva é %s" % area)

    t, x = sp.symbols('x t')
    func = 5*x**3 + 1.0/x  # Define a função simbolicamente
    a = 2.0
    b = 8.0
    n = 4

    area, x_func, F = quadratura_gaussiana_sp(func, a, b, n, t, x)
    print(f"A area da curva é {area}")
    print(f"Função x(t) {x_func}")
    print(f"Função F(t) {F}")


if __name__ == "__main__":
    main()
