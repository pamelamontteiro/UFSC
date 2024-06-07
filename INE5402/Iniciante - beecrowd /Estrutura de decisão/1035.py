a,b,c,d=input().split()
a=int(a)
b=int(b)
c=int(c)
d=int(d)

if b>c and d>a and (c+d)>(a +b) and c>0 and d>0 and (a%2==0):
    print(f'Valores aceitos')
else:
    print(f'Valores nao aceitos')
    