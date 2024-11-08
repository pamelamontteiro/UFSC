# Aroximação por bisseção

def opposite_signs(a, b):
    # isso aqui vai falhar caso algum dos argumentos seja 0
    return (a > 0 and b < 0) or (a < 0 and b > 0)

def bisection(function, interval, precision=0):
    last_c = None
    a, b = interval
    while True:
        c = (a + b) / 2

        if last_c is None:
            last_c = c
        else:
            if abs(last_c - c) <= precision:
                return c
            last_c = c
        
        fc = function(c)
        
        fa = function(a)
        if opposite_signs(fa, fc):
            b = c
            continue
        
        fb = function(b)
        if opposite_signs(fb, fc):
            a = c


if __name__ == '__main__':
    from math import cos
    from exponential import exponential as e

    result = bisection(lambda x: e(x) - 2 * cos(x), [0, 2])

    print(result)
