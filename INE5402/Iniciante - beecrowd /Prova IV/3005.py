

def verificar_pilha(paralelepido_um, paralelepipedo_dois):
    paralelepido_um.sort()
    paralelepipedo_dois.sort()
    
    if (paralelepipedo_dois[2] > paralelepido_um[1] and paralelepipedo_dois[1] > paralelepido_um[0]) and (paralelepido_um[2] > paralelepipedo_dois[1] and paralelepido_um[1] > paralelepipedo_dois[0]):
        return 3
        
    elif paralelepipedo_dois[2] > paralelepido_um[1] and paralelepipedo_dois[1] > paralelepido_um[0]:
        return 1
        
    elif paralelepido_um[2] > paralelepipedo_dois[1] and paralelepido_um[1] > paralelepipedo_dois[0]:
        return 2
    else:
        return 0

num_testes = int(input()) 
for i in range(num_testes):
    entrada = input().split()  
    medidasA = [int(entrada[0]), int(entrada[1]), int(entrada[2])]
    medidasB = [int(entrada[3]), int(entrada[4]), int(entrada[5])]
    print(verificar_pilha(medidasA, medidasB))