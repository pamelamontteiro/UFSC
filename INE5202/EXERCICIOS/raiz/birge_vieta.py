import sympy as sp


def birge_vieta(poly, x0, interation=3):

    def get_Rs(poly, a):
        coeffs = poly.all_coeffs()
        bs = [coeffs[0]]
        
        for i, coeff in enumerate(coeffs[1:]):
            bs.append(coeff + bs[i] * a)

        cs = [bs[0]]

        for i, b in enumerate(bs[1:]):
            cs.append(b + cs[i] * a)

        return bs[-1], cs[-2]

    xk = x0

    for i in range(interation):
        R, Rd = get_Rs(poly, xk)
        xk1 = xk - R / Rd
        xk = xk1

    return xk

def main():
    x = sp.symbols('x')
    p = sp.Poly(x**3 + 2*x - 1, x)
    result = birge_vieta(p, 1)
    print(f"Resultado {float(result)}")


if __name__ == "__main__":
    main()