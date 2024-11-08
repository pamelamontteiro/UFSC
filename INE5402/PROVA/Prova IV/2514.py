def mdc(a, b):  # calculando o mdc
    if b == 0:
        return a
    y = mdc(b, a % b)
    return y


def mmc(a, b):  # calculando o mmc
    z = a * b // mdc(a, b)
    return z


while True:
    try:

        m = int(input())

        l1, l2, l3 = input().split()  # valores de cada lua
        l1 = int(l1)
        l2 = int(l2)
        l3 = int(l3)
        anos = (
            mmc(l1, mmc(l2, l3)) - m
        )  # mmc entre as luas menos os anos que já passaram

        print(anos)

    except EOFError:
        break
