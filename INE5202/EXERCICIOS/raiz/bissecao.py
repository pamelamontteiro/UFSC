import math


def bissecao(func, interval, erro=0.01, max_interactions=10000):
    i = 0

    # ao inves de usar interval, usar a e b, não?
    while True:
        i += 1
        fa = func(interval[0])
        fb = func(interval[1])
        xm = (interval[0] + interval[1]) / 2.0

        if func(xm)*fa < 0:
            interval = (interval[0], xm)
        elif func(xm)*fb < 0:
            interval = (xm, interval[1])

        if abs(func(xm)) < erro or i > max_interactions:
            return xm, i, func(xm)

def main():
    result, interactions = bissecao(lambda x: math.exp(x) + 4.0 * x**2.0, (0.5, 1.0), 0.00005)
    print(f"Resultado: {result}")
    print(f"Interação: {interactions}")

if __name__ == "__main__":
    main()