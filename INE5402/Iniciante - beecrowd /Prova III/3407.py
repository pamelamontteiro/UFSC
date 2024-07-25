entrada = input().strip().split()
num_itens, num_bolinhos = int(entrada[0]), int(entrada[1])
prato_natan = [int(x) for x in input().strip().split()]
prato_samuel = [int(x) for x in input().strip().split()]

num_bolinhos_natan = prato_natan.count(1)
num_bolinhos_samuel = prato_samuel.count(1)

if num_bolinhos == num_bolinhos_natan:
    print("Tudo certo.")
elif num_bolinhos == num_bolinhos_samuel:
    print("Pegou de Samuel.")
else:
    print("Pegou de um estranho.")