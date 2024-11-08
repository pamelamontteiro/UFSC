# Aproximação de raiz por Birge-Vieta

def birge_vieta(polinomial, x, precision=0):
    last_x = None
    while True:
        # calculates Horner's for f and f'
        b = polinomial[0]
        c = polinomial[0]
        for i in range(1, len(polinomial) - 1):
            b = (b * x) + polinomial[i]
            c = (c * x) + b

        b = (b * x) + polinomial[-1]

        # sets up a new estimative
        x -= b / c
        if last_x is None:
            last_x = x
        else:
            if abs(last_x - x) < precision:
                return x
            last_x = x


if __name__ == '__main__':
    x = 1
    a = [1, 0, 2, -1]
    print(birge_vieta(a, x))