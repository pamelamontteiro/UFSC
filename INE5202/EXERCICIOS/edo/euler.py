

def euler_primeira_ordem(func, a, b, y_0, h):
    
    def calculate_next_values(func, x_0, y_0, h):
        y_1 = y_0 + h * func(x_0, y_0)
        return x_0 + h, y_1

    x_0 = a
    while x_0 < b:
        print(x_0)
        print(y_0)
        print()
        x_0, y_0 = calculate_next_values(func, x_0, y_0, h)

    print(x_0)
    print(y_0)
    print()

    return y_0

def main():
    func = lambda x, y: -2.0 * x - y
    a = 0.0
    b = 0.5
    y0 = -1
    h = 0.1

    solution = euler_primeira_ordem(func, a, b, y0, h)
    print("A solução é %s" % solution)

    func = lambda x, y: 2.0 * x + 3.0
    a = 1.0
    b = 1.5
    y0 = 1
    h = 0.1

    solution = euler_primeira_ordem(func, a, b, y0, h)
    print("A solução é %s" % solution)


if __name__ == "__main__":
    main()
