''' todo input ´é string'''
nome=input()
salario=float(input())
vendas=float(input())

total=vendas*0.15
salariofinal = salario + total

print(f'TOTAL = R$ {salariofinal:.2f}')