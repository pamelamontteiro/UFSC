"""Receita de Bolo"""

a, b, c = input().split()
a = int(a)
b = int(b)
c = int(c)

farinha = a // 2
ovo = b // 3
leite = c // 5

print(min(farinha, ovo, leite))
