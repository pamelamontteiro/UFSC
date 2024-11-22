import numpy as np

from utils import successive_replacement, set_zeros


def gauss(A, B):

    for column in range(A.shape[1] - 1):
        for line in range(column + 1, A.shape[1]):
            factor = - A[line, column] / A[column, column]
            A[line, :] = A[line, :] + factor * A[column, :]
            B[line, :] = B[line, :] + factor * B[column, :]

    set_zeros(A)
    set_zeros(B)

    X = successive_replacement(A, B)

    return A, B, X

def main():
    A = np.array([
        [-0.421, 0.784, 0.279],
        [0.448, 0.832, 0.193],
        [0.421, 0.784, -0.207]
    ])
    B = np.array([[0.0],
                  [1.0],
                  [0.0]])
    A, B, X = gauss(A, B)
    print(A)
    print(B)
    print(X)

if __name__ == "__main__":
    main()