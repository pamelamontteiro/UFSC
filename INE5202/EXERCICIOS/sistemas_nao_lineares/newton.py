
import sympy as sp
import numpy as np

from scipy.optimize import fsolve



def gauss(F, vars, X0, erro=0.01, max_interactions=10000):

    print("F:")
    print(F)
    print()

    J = F.jacobian(vars)
    print("J:")
    print(J)
    print()

    print("Xo:")
    print(X0)
    print()

    F_lamb = sp.lambdify(vars, F, 'numpy')
    J_lamb = sp.lambdify(vars, J, 'numpy')

    interactions = 0

    while True:
        interactions += 1
        
        F_val = F_lamb(*X0)
        J_val = J_lamb(*X0)

        d = np.linalg.solve(J_val, -F_val)
        X0 = X0 + d[:,0]

        print(f"Iteração {interactions}")
        print()

        print(f"F avaliada em {X0}:")
        print(F_val)
        print()

        print(f"J avaliada em {X0}:")
        print(J_val)
        print()

        print(f"Vetor d:")
        print(d)
        print()

        print("X:")
        print(X0)
        print()

        print(f"Precisão {np.max(np.abs(d))}")
        print()

        if np.max(np.abs(d)) < erro or interactions > max_interactions:
            return X0, interactions, np.max(np.abs(d))

def main():
    x1, x2 = sp.symbols('x1 x2')
    vars = sp.Matrix([x1, x2])
    
    f1 = (x1 - 1)**2 + x2**2 - 4.0
    f2 = x1**2 + (x2 - 1)**2 - 4.0
    F = sp.Matrix([f1, f2])
    X0 = np.array([1.0, 2.0])
    X, i, d = gauss(F, vars, X0, 1e-8)
    F_lamb = sp.lambdify(vars, F, 'numpy')
    
    print()
    print("Respostas:")
    print()

    print(f"Iteração: {i}")
    print()

    print("Solução (X):")
    print(X)
    print()

    print("Precisão:")
    print(d)
    print()

    def equations(vars):
        x1, x2 = vars
        f1 = (x1 - 1)**2 + x2**2 - 4.0
        f1 = x1**2 + (x2 - 1)**2 - 4.0
        return [f1, f1]

    initial_guess = [1.0, 2.0]

    # Resolver o sistema de equações
    solution = fsolve(equations, initial_guess)

    print("A solução é:")
    print(f"x = {solution[0]}, y = {solution[1]}")


if __name__ == "__main__":
    main()
