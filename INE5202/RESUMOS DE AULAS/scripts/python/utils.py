from typing import List

def system_print(matrix: List[List[float]], solutions=None):

    alphabet = ["X₁", "X₂", "X₃", "X₄", "X₅"]

    print("\n⎡")
    for equation in matrix:
        output = ""
        for index, item in enumerate(equation[:-1]):
            if item >= 0:
                display = f"+ {item} "
            else:
                display = f"- {abs(item)} "

            output += f"{display}{alphabet[index]} "
        
        output += f" = {equation[-1]}"
        print(f"| {output}") 
    print("⎣\n")

    if solutions:
        output = ""
        for index, n in enumerate(solutions):
            output += f" {alphabet[index]} = {n} "
        print(f"{output}\n")

def check_solution(coeficients: List[float], variables: List[float], value: float, tol=0.00001):
    acc = 0

    for c, v in zip(coeficients, variables):
        acc += c * v

    return abs(acc - value) <= tol

def identity(n: int):
    """
    Returns an identity matrix with NxN size 
    """
    return [[float(i == j) for i in range(n)] for j in range(n)]