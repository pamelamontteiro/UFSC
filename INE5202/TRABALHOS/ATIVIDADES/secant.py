def secant(function, error=0):
    k = 0
    xkm1 = 0
    xk = 1
    fxkm1 = function(xkm1)
    fxk = function(xk)
    while abs(fxk) > error:
        xkp1 = xk - ((xk - xkm1) * fxk) / (fxk - fxkm1)
        xkm1 = xk
        xk = xkp1
        fxkm1 = fxk
        fxk = function(xk)
        k += 1

    print(k)
    print(xkp1)
    print(fxk)

if __name__ == '__main__':
    from math import cos, sin
    from exponential import exponential as e

    function = lambda x: e(x) - 2 * cos(x)
    secant(function, 10**-7)