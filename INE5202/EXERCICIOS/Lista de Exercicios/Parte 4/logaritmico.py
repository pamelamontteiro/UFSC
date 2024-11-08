import numpy as np

from polinomial import ajuste_polinomial
from utils import plot_graph


def ajuste_logaritmico(values_table):
    X = np.array([np.log(x) for x in values_table[0, :]], dtype=float)
    C = ajuste_polinomial(np.array([X, values_table[1, :]], dtype=float), 1)
    a = C[0][0]
    b = C[1][0]
    return a, b

def main():
    values_table = np.array([[1.0, 2.0, 3.0, 4.0],
                             [3.0, 5.0, 6.0, 8.0]],
                             dtype=float)
    a, b = ajuste_logaritmico(values_table)
    print(a)
    print(b)

    plot_graph(lambda x: b * np.log(x) + a, values_table[0, :], values_table[1, :])


if __name__ == "__main__":
    main()