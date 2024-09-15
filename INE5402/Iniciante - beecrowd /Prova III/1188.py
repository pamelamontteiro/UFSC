valores_a_serem_lidos = [10, 8, 6, 4, 2]
operacao = input()
matriz = []
for i in range(144):
    matriz.append(float(input().strip()))

matriz = matriz[::-1]
primeira_linha = matriz[0:12]
segunda_linha = matriz[12:24]
terceira_linha = matriz[24:36]
quarta_linha = matriz[36:48]
quinta_linha = matriz[48:60]

if operacao == "S":
    somas = []
    somas.append(sum(primeira_linha[1:11]))
    somas.append(sum(segunda_linha[2:10]))
    somas.append(sum(terceira_linha[3:9]))
    somas.append(sum(quarta_linha[4:8]))
    somas.append(sum(quinta_linha[5:7]))
    print(f"{sum(somas):.1f}")

elif operacao == "M":
    medias = (
        primeira_linha[1:11]
        + segunda_linha[2:10]
        + terceira_linha[3:9]
        + quarta_linha[4:8]
        + quinta_linha[5:7]
    )
    media = sum(medias) / 30
    print(f"{media:.1f}")
