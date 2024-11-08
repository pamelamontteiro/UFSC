from typing import List
from utils import system_print, check_solution
from partial_pivoting import partial_pivot
from pprint import pprint

def gaussian_elimination(matrix: List[List[float]], n = None, pivoting = False):

    if not n:
        n = len(matrix)

    solutions = [0] * n

    for i in range(n - 1):
        assert matrix[i][i] != 0, "Singular matrix"

        if pivoting:
            matrix = partial_pivot(matrix, i, i)

        for j in range(i + 1, n):

            multiply_ratio = matrix[j][i] / matrix[i][i]

            for k in range(n + 1):
                matrix[j][k] = matrix[j][k] - multiply_ratio * matrix[i][k]
    
    solutions[n - 1] = matrix[n - 1][n] / matrix[n - 1][n - 1]

    for i in range(n - 2, -1, -1):
        solutions[i] = matrix[i][n]

        for j in range(i + 1, n):
            solutions[i] -= matrix[i][j] * solutions[j]
        
        solutions[i] = solutions[i] / matrix[i][i]
    
    return (matrix, solutions)

A = [
    [0.448, 0.832, 0.193, 1.0],
    [0.421, 0.784, -0.207, 0.0],
    [-0.319, 0.884, 0.279, 0.0]
] 

B = [
    [1.0, 2.0, 1.0, 8.0],
    [-2.0, 1.0, 3.0, 9.0],
    [4.0, -1.0, -1.0, -1.0]
] 

original = A.copy()
A, Xa = gaussian_elimination(A, pivoting=True)
system_print(A, solutions=Xa)
print(check_solution(original[0][:-1], Xa, original[0][-1]))

# print("Sistema a ser resolvido: ")
# B, Xb = gaussian_elimination(B, pivoting=True)
# system_print(B, solutions=Xb)