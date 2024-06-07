criptografia = ['@','&','!','*','#']
traducao = ['a','e','i','o','u']
while True:
    try:
        texto_criptografado = input()
        for idx, i in enumerate(criptografia):
            texto_criptografado = texto_criptografado.replace(i, traducao[idx])
        print(texto_criptografado)
    except EOFError:
        break