import numpy as np


def successive_replacement(A, B):
    n = len(B)
    X = np.zeros((n, B.shape[1]), dtype=float)

    for line in range(n - 1, -1, -1):
        X[line] = (B[line, :] - np.dot(A[line, :], X)) / (A[line, line])

    return X

def set_zeros(M):
    limit = np.finfo(M.dtype).eps
    M[np.abs(M) < limit] = 0.0
