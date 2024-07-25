qtd_alunos = int(input())
for i in range(qtd_alunos):
    aluno = input()
    notas = [float(x) for x in input().strip().split()]
    if len(notas) == 1:
        notas.append(0.0)
    if len(notas) == 4:
        menor_nota = min(notas[:3])
        nota_substitutiva = notas[3]
        if nota_substitutiva > menor_nota:
            notas[notas.index(menor_nota)] = nota_substitutiva
        notas = notas[:3]
    media = sum(notas) / len(notas)
    print(f"{aluno}: {media:.1f}")