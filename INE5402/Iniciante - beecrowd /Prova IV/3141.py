def verificar_aniversario(data_atual, data_nascimento):
    data_atual = data_atual.split("/")
    data_nascimento = data_nascimento.split("/")
    if data_atual[0] == data_nascimento[0] and data_atual[1] == data_nascimento[1]:
        return True
    return False


def calcular_idade(data_atual, data_nascimento):
    data_atual = data_atual.split("/")
    data_nascimento = data_nascimento.split("/")
    idade = int(data_atual[2]) - int(data_nascimento[2])
    if int(data_atual[1]) < int(data_nascimento[1]) or (
        int(data_atual[1]) == int(data_nascimento[1])
        and int(data_atual[0]) < int(data_nascimento[0])
    ):
        idade -= 1
    return idade


nome = input().strip()
data_atual = input().strip()
data_nascimento = input().strip()

if verificar_aniversario(data_atual, data_nascimento):
    print("Feliz aniversario!")
idade = calcular_idade(data_atual, data_nascimento)
print(f"Voce tem {idade} anos {nome}.")
