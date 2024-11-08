numero_pecas = int(input())
pecas_string = input().strip().split()
pecas = []
for peca in pecas_string:
    pecas.append(int(peca))

peca_faltando = 0
for i in range(1, numero_pecas + 1):
    if i not in pecas:
        peca_faltando = i

print(peca_faltando)
