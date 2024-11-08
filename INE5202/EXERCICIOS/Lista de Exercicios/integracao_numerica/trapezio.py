import numpy as np
import math


def trapezio(func, a, b):
    return (b - a) / 2.0 * (func(a) + func(b))

def trapezio_composta(func, a, b, n):
    h = (b - a) / n
    area = (h / 2.0 ) *(func(a) + 2.0 * sum(func(a + i * h) for i in range(1, n)) + func(b))
    return area, [(a + i * h, func(a + i * h)) for i in range(n + 1)]

def main():
    # func = lambda x: np.sin(x) + x
    primitiva = lambda x: 5.0/4.0*x**4 + math.log(x, 10)
    func = lambda x: 5*x**3 + 1.0/x
    a = 2.0
    b = 8.0
    n = 8

    # area = trapezio(func, a, b)
    # print("Area da curva é %s" % area)

    area, points = trapezio_composta(func, a, b, n)
    print("Area da curva é %s" % area)
    print("Pontos %s" % points)
    print("Quantidade de pontos %s" % len(points))
    exata = primitiva(8.0) - primitiva(2.0)
    print("Area exata %s" % exata)


if __name__ == "__main__":
    main()
