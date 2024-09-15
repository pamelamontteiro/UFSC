A, B, C = map(int, input().split())
X, Y, Z = map(int, input().split())


width = X // A
length = Y // B
height = Z // C

maximo = width * length * height

print(f"{maximo}")
