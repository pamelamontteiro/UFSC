import numpy as np

from polinomial import ajuste_polinomial
from utils import plot_graph


def ajuste_exponencial_professora(values_table):
    Z = np.array([np.log(z) for z in values_table[1, :]], dtype=float)
    C = ajuste_polinomial(np.array([values_table[0, :], Z], dtype=float), 1)
    a = np.exp(C[0][0])
    b = C[1][0]
    return a, b

def ajuste_exponencial_livro(values_table):
    """
    Esse método é muito parecido com o da professora só que ele considere b^t e não e^(x.t)
    Ou seja, b = e^(x)
    Livro: http://sergiopeters.prof.ufsc.br/files/2017/02/Ebook_Calculo_numerico_computacional_17mai2022.pdf
    """
    a, b = ajuste_exponencial_professora(values_table)
    b = np.exp(b)
    return a, b

def main():
    # values_table = np.array([[0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8],
    #                          [3.16, 2.38, 1.75, 1.34, 1.00, 0.74, 0.56]],
    #                          dtype=float)
    # a, b = ajuste_exponencial_professora(values_table)

    # print(a)
    # print(b)
    # plot_graph(lambda x: a * np.exp(x * b), values_table[0, :], values_table[1, :])

    # values_table = np.array([[0.1, 1.5, 3.3, 4.5, 5.0],
    #                          [1.77, 2.17, 2.48, 2.99, 3.15]],
    #                          dtype=float)
    # i, x = ajuste_exponencial_professora(values_table)
    # print(i)
    # print(x)

    # values_table = np.array([[-1.0, -0.7, -0.4, -0.1, 0.2, 0.5, 0.8, 1.0],
    #                          [36.547, 17.264, 8.155, 3.852, 1.82, 0.860, 0.406, 0.246]],
    #                          dtype=float)
    # i, x = ajuste_exponencial_professora(values_table)
    # print(i)
    # print(x)

    values_table = np.array([[-4, -2, 1, 2, 5],
                             [3, 8, 20, 40, 90]],
                             dtype=float)
    a, b = ajuste_exponencial_professora(values_table)
    print(a)
    print(b)
    print(f"{a:.5f}.e^({b:.5f}.x)")
    plot_graph(lambda x: a * np.exp(x * b), values_table[0, :], values_table[1, :])



if __name__ == "__main__":
    main()