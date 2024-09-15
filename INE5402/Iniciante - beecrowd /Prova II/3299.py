numero = input()
tem_um = False
posicao_tem_um = 0
tem_tres = False
for i in range(len(numero)):
    if numero[i] == "1":
        tem_um = True
        posicao_tem_um = i
    elif numero[i] == "3" and tem_um and (i == posicao_tem_um + 1):
        tem_tres = True

if tem_tres:
    print(f"{numero} es de Mala Suerte")
else:
    print(f"{numero} NO es de Mala Suerte")
