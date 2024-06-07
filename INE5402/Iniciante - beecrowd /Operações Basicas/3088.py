import sys
for texto_errado in sys.stdin:
    texto_correto = texto_errado.replace(" ,", ",").replace(" .", ".")
    print(texto_correto, end="")