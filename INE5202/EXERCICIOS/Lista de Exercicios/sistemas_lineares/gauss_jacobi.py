import numpy as np


def gauss_jacobi(A, B, Xo, error=0.001, max_interations=10000):
    n = len(B)
    X = np.copy(Xo)
    X1 = np.copy(Xo)

    interaction = 0

    while True:
        interaction += 1

        for i in range(n):
            aux_A = np.delete(A[i, :], i)
            aux_X = np.delete(X, i)
            X1[i, 0] = (B[i, 0] - np.dot(aux_X, aux_A)) / A[i,i]

        X = np.copy(X1)
        R = np.max(np.array([B[i, 0] - np.dot(X[:, 0], A[i, :]) for i in range(n)]))

        if R < error or interaction > max_interations:
            return X, interaction

def main():
    A = np.array([
        [3.0, -1.0, -1.0],
        [1.0, 3.0, 1.0],
        [2.0, -2.0, 4.0]
    ])
    B = np.array([
        [1.0],
        [5.0],
        [4.0]
    ])
    Xo = np.array([
        [0.0],
        [0.0],
        [0.0]
    ])

    print(gauss_jacobi(A, B, Xo))

if __name__ == "__main__":
    main()
