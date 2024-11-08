num_testes = int(input().strip())
for _ in range(num_testes):
    entrada = input().strip().split(" ")
    num_filtros = int(entrada[0])
    filtros = [int(x) for x in entrada[1:]]
    tomadas = sum(filtros) - (num_filtros - 1)
    print(tomadas)
