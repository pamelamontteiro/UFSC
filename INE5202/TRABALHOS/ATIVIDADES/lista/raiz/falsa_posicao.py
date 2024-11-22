import math


def falsa_posicao(func, interval, erro=0.01, max_interactions=10000):
    i = 0
    while True:
        i += 1
        fa = func(interval[0])
        fb = func(interval[1])

        xk = interval[0] - (fa * (interval[1] - interval[0])) / (fb - fa)
        
        if func(xk) * fa < 0:
            interval = (interval[0], xk)
        elif func(xk) * fb < 0:
            interval = (xk, interval[1])

        if abs(func(xk)) < erro or i > max_interactions:
            return xk, i, func(xk)

def main():
    result, interactions = falsa_posicao(lambda x: math.exp(x) + x, (-1, 0))
    print(f"Resultado: {result}")
    print(f"Interação: {interactions}")


if __name__ == "__main__":
    main()