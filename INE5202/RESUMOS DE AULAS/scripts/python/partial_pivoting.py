from typing import List

def partial_pivot(matrix: List[List[float]], i, j):
    line = i

    for k in range(i, len(matrix) - 1):
        if abs(matrix[k + 1][j]) > abs(matrix[k][j]):
            line = k + 1

    if line != i:
        matrix[line], matrix[i] = matrix[i], matrix[line]

    return matrix