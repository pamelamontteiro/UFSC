import numpy as np
# https://computeel.org/LOM3260/assets/aulas/pdf/Aula-integracao.pdf

def simpson(func, a, b):
    return (b - a) / 6.0 * (func(a) + 4 * func(a + (b - a) / 2.0) + func(b))

def simpson_composta(func, a, b, n):
    h = (b - a) / n
    print(h)
    odd = 4.0 * sum(func(a + i * h) for i in range(1, n, 2))
    even =  2.0 * sum(func(a + i * h) for i in range(2, n, 2))
    area = ((h / 3.0) * (func(a) + even + odd + func(b)))
    return area, [(a + i * h, func(a + i * h)) for i in range(0, n + 1)]

def main():
    func = lambda x: 5*x**3 + 1.0/x
    a = 2.0
    b = 8.0
    n = 8

    # area = simpson(func, a, b)
    # print("Area da curva é %s" % area)

    area, points = simpson_composta(func, a, b, n)
    print("Area da curva é %s" % area)
    print("Pontos %s" % points)


if __name__ == "__main__":
    main()

