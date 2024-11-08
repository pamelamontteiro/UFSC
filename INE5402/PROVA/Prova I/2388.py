numero_linhas = int(input())
resultado = 0
for linha in range(numero_linhas):
    tempo, velocidade = input().split()
    tempo = int(tempo)
    velocidade = int(velocidade)

    distancia = tempo * velocidade
    resultado = resultado + distancia
print(resultado)
