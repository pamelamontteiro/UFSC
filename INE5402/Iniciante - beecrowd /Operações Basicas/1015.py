
import math
x1,y1=input().split()
x1=float(x1)
y1=float(y1)
x2,y2=input().split()
x2=float(x2)
y2=float(y2)

potencia1= x2 -x1
potencia2= y2 - y1
distancia=math.sqrt((potencia1)**2 + (potencia2)**2)

print(f'{distancia:.4f}')