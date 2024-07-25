entrada = input().split()
colunas = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
pos_inicial, pos_final = entrada[0], entrada[1]

coluna_inicial = colunas.index(pos_inicial[0]) - colunas.index('a') + 1
linha_inicial = int(pos_inicial[1])

coluna_final = colunas.index(pos_final[0]) - colunas.index('a') + 1
linha_final = int(pos_final[1])

dif_coluna = abs(coluna_final - coluna_inicial)
dif_linha = abs(linha_final - linha_inicial)

if (dif_coluna == 2 and dif_linha == 1) or (dif_coluna == 1 and dif_linha == 2):
    print("VALIDO")
else:
    print("INVALIDO")