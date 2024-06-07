idade_em_dias = int(input())

# Calculando anos, meses e dias
ano = idade_em_dias // 365
mes = (idade_em_dias % 365) // 30
dia = (idade_em_dias % 365) % 30

print(f'{ano:.0f} ano(s)')
print(f'{mes:.0f} mes(es)')
print(f'{dia:.0f} dia(s)')