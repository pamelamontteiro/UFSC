import numpy as np


def interpolacao_sistema_linear(values_table):
    x = values_table[0, :]
    y = values_table[1, :]

    A = np.zeros((len(x), len(x)), dtype=float)

    for line in range(len(x)):
        A[line, :] = np.array([x[line]**i for i in range(len(x))])

    print("A)")
    print("Matriz A")
    print(A)
    print("\nMatriz B")
    print(y)

    return np.linalg.solve(A, y)

if __name__ == "__main__":
    values_table = np.array([[0, 0.2, 0.4, 0.6],
                             [0, 0.408, 0.864, 1.416]], dtype=float)
    
    a = interpolacao_sistema_linear(values_table)
    
    p = np.poly1d(np.flip(a))
    print(f"\nB)\nPolinómio\n {p}")
    print(f"\nC)\nResultado {p(0.5):.2f}")