def verificar_fileiro_do_lado(provas):
    tudo_ok = True
    for i in range(len(provas)):
        fileira_da_esquerda = i - 1
        fileira_da_direita = i + 1
        if 1 in provas[i] or 2 in provas[i]:
            if fileira_da_esquerda >= 0:
                if 1 in provas[fileira_da_esquerda] or 2 in provas[fileira_da_esquerda]:
                    tudo_ok = False
                    break

            if fileira_da_direita < len(provas):
                if 1 in provas[fileira_da_direita] or 2 in provas[fileira_da_direita]:
                    tudo_ok = False
                    break
    return tudo_ok


def verificar_provas_iguais(provas, c):
    tudo_ok = True
    if c == 0:
        return True
    for fileira in provas:
        for i in range(len(fileira)):
            if fileira[i] == 1 or fileira[i] == 2:
                if i + c < len(fileira):
                    if fileira[i] == fileira[i + c]:
                        tudo_ok = False
                        break
    return tudo_ok


entrada = input().strip().split()
n, m, c = int(entrada[0]), int(entrada[1]), int(entrada[2])
provas = []

for i in range(n):
    cadeiras = [int(x) for x in input().strip().split()]
    provas.append(cadeiras)

provas = list(map(list, zip(*provas)))

if verificar_fileiro_do_lado(provas) and verificar_provas_iguais(provas, c):
    print("S")
else:
    print("N")
