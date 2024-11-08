from sympy import symbols, diff, exp, cos


# passar só a função?
def newton(func, x, x0, erro=0.01, max_interactions=10000):
    der = diff(func, x)
    xk = x0
    i = 0

    while True:
        i += 1
        xk1 = xk - func.subs(x, xk) / der.subs(x, xk)

        if func.subs(x, xk1) < erro or i > max_interactions:
            return xk1, i, func.subs(x, xk1)

        xk = xk1

def main():
    x = symbols('x')
    func = exp(x) - 2 * cos(x)

    result, interactions = newton(func, x, 1)
    print(f"Resultado: {result}")
    print(f"Interação: {interactions}")

    x = symbols('x')
    func = exp(x) + x

    result, interactions = newton(func, x, (-1,0))
    print(f"Resultado: {result}")
    print(f"Interação: {interactions}")



if __name__ == "__main__":
    main()