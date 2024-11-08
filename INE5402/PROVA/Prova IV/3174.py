quantidade_de_elfos = int(input())
brinquedos = 0

atividade = {"bonecos": 0, "arquitetos": 0, "musicos": 0, "desenhistas": 0}

for i in range(quantidade_de_elfos):
    nome, grupo_de_atividade, horas_de_trabalho = input().split()
    horas_de_trabalho = int(horas_de_trabalho)
    if grupo_de_atividade in atividade:
        atividade[grupo_de_atividade] += horas_de_trabalho
    else:
        atividade[grupo_de_atividade] = horas_de_trabalho

brinquedos += atividade["bonecos"] // 8
brinquedos += atividade["arquitetos"] // 4
brinquedos += atividade["musicos"] // 6
brinquedos += atividade["desenhistas"] // 12

print(brinquedos)
