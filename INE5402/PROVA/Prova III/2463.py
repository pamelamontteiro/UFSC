numero_salas = int(input())
vidas_por_sala = [int(x) for x in input().strip().split()]

maior_vida = 0
soma_vida = 0
for i in range(len(vidas_por_sala)):
    soma_vida += vidas_por_sala[i]
    maior_vida = max(maior_vida, soma_vida)
    if soma_vida < 0:
        soma_vida = 0
print(maior_vida)
