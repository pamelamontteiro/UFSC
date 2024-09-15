"""A Greve para ou Continua?"""

numero_linhas = int(input())
gasto = 0
verba = 0
for linha in range(numero_linhas):
    orgao, valor = input().split()
    valor = int(valor)
    if orgao == "G":
        gasto = gasto + valor
    else:
        verba = verba + valor
if verba >= gasto:
    print("A greve vai parar.")
else:
    print("NAO VAI TER CORTE, VAI TER LUTA!")
