'''Parcelamento Sem Juros'''

valor = int(input())
parcelas = int(input())

parcelas_a_mais = valor % parcelas
for i in range(parcelas):
    if parcelas_a_mais > 0:
        print(valor // parcelas + 1)
        parcelas_a_mais -= 1
    else:
        print(valor // parcelas)