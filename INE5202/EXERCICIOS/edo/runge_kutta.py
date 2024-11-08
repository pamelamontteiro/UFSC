import numpy as np


def RK_segunda_ordem(func, y0, a, b, h):    
    x0 = a
    while x0 < b:
        k1 = h * func(x0, y0)
        k2 = h * func(x0 + h, y0 + k1)
        y0 = y0 + 1.0 / 2.0 * (k1 + k2)
        x0 = x0 + h

    return x0, y0

def RK_quarta_ordem(func, y0, a, b, h):
    xs = []
    ys = []
    x0 = a
    while x0 <= b:
        xs.append(x0)
        ys.append(y0)
        k1 = h * func(x0, y0)
        k2 = h * func(x0 + h / 2.0, y0 + k1 / 2.0)
        k3 = h * func(x0 + h / 2.0, y0 + k2 / 2.0)
        k4 = h * func(x0 + h, y0 + k3)
        y0 = y0 + (k1 + 2.0 * k2 + 2.0 * k3 + k4) / 6.0
        x0 = x0 + h

    return xs, ys

def main():
    # Função
    func = lambda x, y: y**2 - y
    
    # y(0)
    y0 = 0.5

    # (0.0, 0.5)
    a = 0.0
    b = 0.5

    # passo
    h = 0.1

    x, y = RK_quarta_ordem(func, y0, a, b, h)
    func_exata = lambda x: 1.0 / (1.0 + np.exp(x))
    print("A)")
    print(f"A solução é y={y}")
    
    print("\nB)")
    erro = [abs(func_exata(xi) - y[i]) for i, xi in enumerate(x)]
    print(f"O vetor erro é {erro}")


if __name__ == "__main__":
    main()