# Aroximação por posição falsa

def same_sign(a, b):
    # isso aqui vai falhar caso algum dos argumentos seja 0
    return (a > 0 and b > 0) or (a < 0 and b < 0)

def c_(a, b, fa, fb):
    return (a * fb - b * fa) / (fb - fa)

def regula_falsi(function, interval, precision=0):
    last_c = None
    a, b = interval
    while True:
        fa = function(a)
        fb = function(b)
        c = c_(a, b, fa, fb)

        if last_c is None:
            last_c = c
        else:
            if abs(last_c - c) <= precision:
                return c
            last_c = c
        
        fc = function(c)

        if same_sign(fa, fc):
            a = c
        else:
            b = c


if __name__ == '__main__':
    from math import cos
    from exponential import exponential as e

    result = regula_falsi(lambda x: e(x) - 2 * cos(x), [0, 2])

    print(result)
