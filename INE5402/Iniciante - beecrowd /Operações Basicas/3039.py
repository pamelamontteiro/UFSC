numero_criancas = int(input())
carrinhos = 0
bonecas = 0
for i in range(numero_criancas):
    nome, genero = input().split()
    if genero == "F":
        bonecas += 1
    else:
        carrinhos += 1
print(f"{carrinhos} carrinhos")
print(f"{bonecas} bonecas")
