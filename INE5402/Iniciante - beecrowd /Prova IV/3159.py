

def sequencia_teclado(mensagem):
    teclado = {
        'a': ('2', 1), 'b': ('2', 2), 'c': ('2', 3),
        'd': ('3', 1), 'e': ('3', 2), 'f': ('3', 3),
        'g': ('4', 1), 'h': ('4', 2), 'i': ('4', 3),
        'j': ('5', 1), 'k': ('5', 2), 'l': ('5', 3),
        'm': ('6', 1), 'n': ('6', 2), 'o': ('6', 3),
        'p': ('7', 1), 'q': ('7', 2), 'r': ('7', 3), 's': ('7', 4),
        't': ('8', 1), 'u': ('8', 2), 'v': ('8', 3),
        'w': ('9', 1), 'x': ('9', 2), 'y': ('9', 3), 'z': ('9', 4),
        ' ': ('0', 1)
    }
    
    resultado = []
    for i in range(len(mensagem)):
        char = mensagem[i]
        if char.isupper():
            resultado.append('#')
            char = char.lower()
        if i > 0 and resultado[-1] != "#" and teclado[char][0] == teclado[mensagem[i - 1].lower()][0]:
            resultado.append('*')
        
        chave, qtd = teclado[char]
        resultado.append(chave * qtd)
    
    return resultado

num_testes = int(input().strip())
for _ in range(num_testes):
    mensagem = input()
    mensagem_teclado = sequencia_teclado(mensagem)
    print(''.join(mensagem_teclado))