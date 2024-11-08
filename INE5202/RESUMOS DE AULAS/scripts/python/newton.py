from math import cos, sin

f = lambda x : cos(x) - sin(x)
f_ = lambda x : - sin(x) - cos(x)

g = lambda x : x ** 2 - 5.6 * x + 7.2
g_ = lambda x : 2 * x - 5.6

h = lambda x : cos(x) * sin(x ** 2)
h_ = lambda x : (2 * x * cos(x) * cos(x ** 2)) - (sin(x) * sin(x ** 2))

def newton(f, f_, x, tolerance=0.000001, steps=-1):
    values = {}
    i = 0
    values[f"x{i}"] = x

    while True:
        print(values)
        xi = x - f(x) / f_(x)
        err = abs(xi - x)

        if steps != -1 and i > steps:
            return xi

        if steps != -1:
            i += 1
            values[f"x{i}"] = xi

        if err < tolerance:
            return xi
        else:
            x = xi
    
    return x

print(newton(f, f_, 1.6, steps=1))