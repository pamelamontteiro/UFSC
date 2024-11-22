import numpy as np
from scipy import linalg

from utils import successive_replacement


def lu(A, B):
    n = len(B)
    L = np.zeros((n, n), dtype=float)
    U = np.zeros((n, n), dtype=float)
    Y = np.zeros((n, 1), dtype=float)
    X = np.zeros((n, 1), dtype=float)
    
    L[:, 0] = np.copy(A[:, 0])
    U[0, 1:] = np.copy(A[0, 1:]) / L[0,0]

    for i in range(n):
        U[i,i] = 1

    for i in range(1, n):
        for line in range(i, n):
            L[line, i] = A[line, i] - np.dot(L[line, :i], U[:i, i])

        for column in range(i + 1, n):
            U[i, column] = (A[i, column] - np.dot(L[i, :], U[:, column])) / L[i, i]

    Y = successive_replacement(np.flip(L), np.flip(B))
    X = successive_replacement(U, np.flip(Y))

    return L, U, np.flip(Y), X, n

def main():
    A = np.array([[2.0, 3.0, 4.0],
                  [1.0, 1.0, 1.0],
                  [4.0, -1.0, 2.0]])
    B = np.array([[20.0],
                  [6.0],
                  [-4.0]])
    L, U, Y, X, n = lu(A, B)
    
    print("A:")
    print(A)
    print()

    print("B:")
    print(B)
    print()

    print("L:")
    print(L)
    print()

    print("U:")
    print(U)
    print()

    print("Y:")
    print(Y)
    print()

    print("X:")
    print(X)
    print()

    print()
    print(np.dot(L, U))
    print(np.dot(A, X))

if __name__ == "__main__":
    main()