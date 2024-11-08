import numpy as np


def gauss_seidel(A, B, X0, error=0.001, max_interactions=10000):
    n = len(B)
    X = np.copy(X0)

    interaction = 0
    while True:
        interaction += 1

        X1 = np.copy(X)

        for i in range(n):
            aux_A = np.delete(A[i, :], i)
            aux_X = np.delete(X1, i)
            X0 = X[i, 0]
            X1[i, 0] = (B[i, 0] - np.dot(aux_X, aux_A)) / A[i,i]
            
        if np.linalg.norm(X1 - X) < error or interaction > max_interactions:
            return X1, interaction, np.linalg.norm(X1 - X)

        X = np.copy(X1)

def main():
    A = np.array([
        [3.0, -1.0, -2.0],
        [1.0, -4.0, 1.0],
        [-2.0, 1.0, -3.0]
    ])
    B = np.array([
        [2.0],
        [4.0],
        [-7.0]
    ])
    Xo = np.array([
        [0.0],
        [0.0],
        [0.0]
    ])
    X, interactions, precision = gauss_seidel(A, B, Xo, 10**-6)
    print(interactions)
    print(X)
    print(precision)

if __name__ == "__main__":
    main()
