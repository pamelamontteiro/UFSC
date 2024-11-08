from math import cos, sin

f = lambda x : cos(x) - sin(x)

g = lambda x : x ** 2 - 5.6 * x + 7.2
g_ = lambda x : 2 * x - 5.6

h = lambda x : cos(x) * sin(x ** 2)
h_ = lambda x : (2 * x * cos(x) * cos(x ** 2)) - (sin(x) * sin(x ** 2))

def secant(f, x0, x1, tolerance=0.000001, steps=-1):
    values = {}
    i = 1
    values["x0"] = x0
    values["x1"] = x1

    while True:
        print(values)
        if f(x0) == f(x1):
            return x1

        x2 = x0 - (x1 - x0) * f(x0) / (f(x1) - f(x0))

        if steps != -1 and i > steps:
            return x2

        if steps != -1:
            i += 1
            values[f"x{i}"] = x2

        err = abs(x1 - x0)
        if err < tolerance:
            return x2

        x0 = x1
        x1 = x2

    return x1

print(secant(f, 1.6, 0.5398180085786815, steps=5))