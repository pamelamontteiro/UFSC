aposta_string = input().strip().split()
aposta = []
for i in aposta_string:
    aposta.append(int(i))

sorteado_string = input().strip().split()
sorteado = []
for i in sorteado_string:
    sorteado.append(int(i))

acertos = 0
for i in range(len(aposta)):
    if aposta[i] in sorteado:
        acertos += 1

if acertos == 3:
    print("terno")
elif acertos == 4:
    print("quadra")
elif acertos == 5:
    print("quina")
elif acertos == 6:
    print("sena")
else:
    print("azar")
