# Função Exponencial Natural a partir da Série de Taylor

def exponential(x, precision=10**-5):
    fat = 1
    expo = 1
    result = 0
    last_result = result

    i = 1
    while True:
        result += expo / fat

        if abs(last_result - result) < precision:
            break

        last_result = result
        expo *= x
        fat *= i
        i += 1

    return result
