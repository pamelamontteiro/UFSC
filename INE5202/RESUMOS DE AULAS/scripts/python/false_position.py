import math
import numpy as np

f = lambda x : math.cos(x) - x

g = lambda x : math.log(x + 0.5) * math.exp(-x)

intervalos = {}
intervalos['[A0, B0]'] = [0, 1]

def false_position(x0, x1, f, tol=0.000001, iteration=0):
    while True:
        iteration += 1
        x2 = x0 - (x1-x0) * f(x0) / (f(x1) - f(x0))

        if f(x0) * f(x2) < tol:
            x1 = x2
        else:
            x0 = x2

        intervalos[f"[A{iteration}, B{iteration}]"] = [x0, x1]

        if abs(f(x2)) < tol:
            return x2

print(false_position(0, 1, g))
print(intervalos)