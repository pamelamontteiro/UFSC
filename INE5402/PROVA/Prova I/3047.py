"""A idade de Dona Mônica"""

m = int(input())
a = int(input())
b = int(input())

c = m - a - b

if a > b and a > c:
    print(a)
elif b > a and b > c:
    print(b)
else:
    print(c)
