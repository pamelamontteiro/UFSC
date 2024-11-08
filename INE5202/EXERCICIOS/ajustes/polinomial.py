import numpy as np

from utils import plot_graph


def ajuste_polinomial(values_table, M=2):
    A = np.zeros((M + 1, M + 1), dtype=float)
    B = np.zeros((M + 1, 1), dtype=float)

    for column in range(M + 1):
        B[column, 0] = np.sum([y * x**column for x, y in zip(values_table[0, :], values_table[1, :])])
        for line in range(M + 1):
            A[line, column] = np.sum([x**(column + line) for x in values_table[0, :]])
    print(A)
    print(B)
    # A.X = B

    # B primeira linha; A segunda linha B + A.x = g(x)   
    return np.linalg.solve(A, B)

def main():
    # Exemplo do texto
    values_table = np.array([[1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8, 3.0, 3.2, 3.4, 3.6, 3.8, 4.0, 4.2, 4.4, 4.6, 4.8, 5.0],
                             [-1.945, -1.253, -1.14, -1.087, -0.760, -0.682, -0.424, -0.012, -0.190, 0.452, 0.337, 0.764, 0.532, 1.073, 1.286, 1.502, 1.582, 1.993, 2.473, 2.503, 2.322]],
                             dtype=float)
    M = 1
    C = ajuste_polinomial(values_table, M)

    print(C)

    print()

    # Exemplo da aula no drive
    values_table = np.array([[1.3, 3.4, 5.1, 6.8, 8.0],
                             [2.0, 5.2, 3.8, 6.1, 5.8]],
                             dtype=float)
    M = 1
    C = ajuste_polinomial(values_table, M)

    print(C)

    plot_graph(lambda x: x * C[1, :] + C[0, :], values_table[0, :], values_table[1, :])

    # Exemplo da aula no drive
    values_table = np.array([[1.3, 3.4, 5.1, 6.8, 8.0],
                             [2.0, 5.2, 3.8, 6.1, 5.8]],
                             dtype=float)
    M = 2
    C = ajuste_polinomial(values_table, M)

    print(C)

    plot_graph(lambda x: x**2 * C[2, :] + x * C[1, :] + C[0, :], values_table[0, :], values_table[1, :])



if __name__ == "__main__":
    main()