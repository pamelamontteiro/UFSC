"""
Não foi testado!
"""

import numpy as np

from polinomial import ajuste_polinomial


def ajuste_geometrico(values_table):
    """
    Livro: http://sergiopeters.prof.ufsc.br/files/2017/02/Ebook_Calculo_numerico_computacional_17mai2022.pdf
    """
    Z = np.array([np.log(i) for i in values_table[1, :]], dtype=float)
    X = np.array([np.log(x) for x in values_table[0, :]], dtype=float)
    C = ajuste_polinomial(np.array([X, Z], dtype=float), 1)
    a = np.exp(C[0][0])
    b = C[1][0]
    return a, b

def main():
    values_table = np.array([[0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8],
                             [3.16, 2.38, 1.75, 1.34, 1.00, 0.74, 0.56]],
                             dtype=float)
    a, b = ajuste_geometrico(values_table)
    print(a)
    print(b)


if __name__ == "__main__":
    main()