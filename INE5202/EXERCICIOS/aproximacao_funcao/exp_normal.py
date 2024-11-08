
def exp(x, n):
    """
    Calcula e^x ≅ 1/0! + x¹/1! + x²/2! + x³/3! + x⁴/4!
    """
    acc_x = acc_fat = result = 1.0

    for i in range(1, n):
        acc_x *= x
        acc_fat *= i
        result += acc_x / acc_fat

    return result

def main():
    x = 2
    n = 5
    print(f"Resultado e^{x}:", exp(x, n))


if __name__ == "__main__":
    main()