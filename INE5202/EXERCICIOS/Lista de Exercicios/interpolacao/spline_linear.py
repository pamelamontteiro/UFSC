import numpy as np

def spline_linear(values_table):
    xs = values_table[0, :]
    ys = values_table[1, :]

    def s(x):
        for i in range(len(xs) - 1):
            if xs[i] <= x <= xs[i+1]:
                return ys[i] * (x - xs[i+1]) / (xs[i] - xs[i+1]) + ys[i+1] * (x - xs[i]) / (xs[i+1] - xs[i])
        return None

    return s


if __name__ == "__main__":
    values_table = np.array([[1.0, 2.0, 5.0, 7.0],
                             [1.0, 2.0, 3.0, 2.5]],
                            dtype=float)
    s = spline_linear(values_table)
    print(s(3))