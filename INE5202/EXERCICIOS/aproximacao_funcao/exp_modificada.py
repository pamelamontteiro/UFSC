

def exp(x, precison):
    """
    Calcula e^x ≅ 1/0! + x¹/1! + x²/2! + x³/3! + x⁴/4! + ...
    até que a precisão seja batida
    """
    acc_x = acc_fat = current_result = 1.0
    previous_result = 0.0
    counter = 1

    while abs(current_result - previous_result) >= precison:
        acc_x *= x
        acc_fat *= counter
        counter += 1
        previous_result = current_result
        current_result += acc_x / acc_fat

    return current_result

def main():
    x = 2
    precision = 10**-5
    print(f"Resultado e^{x} com precisão de {precision}:", exp(x, precision))


if __name__ == "__main__":
    main()
