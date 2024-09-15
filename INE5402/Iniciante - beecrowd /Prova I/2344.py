"""notas de provas"""

nota = int(input())

if nota >= 86 and nota <= 100:
    conceito = "A"
elif nota >= 61 and nota <= 85:
    conceito = "B"
elif nota >= 36 and nota <= 60:
    conceito = "C"
elif nota >= 1 and nota <= 35:
    conceito = "D"
else:
    conceito = "E"

print(conceito)
