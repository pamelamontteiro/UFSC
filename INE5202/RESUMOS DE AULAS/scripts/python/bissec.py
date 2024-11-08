import math
import numpy as np

f = lambda x : math.exp(-x / 1.5) * math.cos(x)

def bolzano(f, lower_limit, upper_limit):
    return f(lower_limit) * f(upper_limit) <= 0

intervalos = {}
intervalos['[A0, B0]'] = [0, 2.5]

def bissec(f, lower_limit, upper_limit, tol=0.0001, iteration=1):
    if np.sign(f(lower_limit)) == np.sign(f(upper_limit)):
        raise Exception("The scalars a and b do not bound a root")
        
    middle_point = (lower_limit + upper_limit) / 2
    
    if np.abs(f(middle_point)) < tol:
        return middle_point
    elif np.sign(f(lower_limit)) == np.sign(f(middle_point)):
        intervalos[f"[A{iteration}, B{iteration}]"] = [middle_point, upper_limit]
        return bissec(f, middle_point, upper_limit, tol, iteration=iteration+1)
    elif np.sign(f(upper_limit)) == np.sign(f(middle_point)):
        intervalos[f"[A{iteration}, B{iteration}]"] = [lower_limit, middle_point]
        return bissec(f, lower_limit, middle_point, tol, iteration=iteration+1)

print(bissec(f, 0, 2.5))
print(intervalos)