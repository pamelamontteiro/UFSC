import math

tempo=int(input())

horas=math.floor(tempo/3600)
resto=tempo%3600
minutos=math.floor(resto/60)
resto=resto%60

print(f'{horas:.0f}:{minutos:.0f}:{resto:.0f}')