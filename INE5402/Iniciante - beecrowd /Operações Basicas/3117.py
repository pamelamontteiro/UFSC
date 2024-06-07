numero_alunos, numero_minimo = input().split()
numero_alunos = int(numero_alunos)
numero_minimo = int(numero_minimo)

alunos = input().split()
alunos_a_tempo = 0
for aluno in alunos:
    if int(aluno) <= 0:
        alunos_a_tempo += 1

if alunos_a_tempo >= numero_minimo:
    print("YES")
else:
    print("NO")