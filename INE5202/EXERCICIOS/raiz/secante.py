import math


def secante(func, interval, erro=0.01, max_interactions=10000):
    xk = interval[0]
    xk1 = interval[1]
    i = 0

    while True:
        i += 1
        xk2 = xk1 - ((xk1 - xk) * func(xk1)) / (func(xk1) - func(xk))

        if abs(func(xk2)) < erro or i > max_interactions:
            return xk2, i, func(xk2)
        
        xk = xk1
        xk1 = xk2

def main():
    result, interation = secante(lambda x: math.exp(x) - 2 * math.cos(x), (0, 2))
    print(f"Resultado: {result}")
    print(f"Interação: {interation}")


if __name__ == "__main__":
    main()