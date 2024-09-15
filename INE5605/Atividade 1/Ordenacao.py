"""Universidade Federal de Santa Catarina.
   CTC - Centro Tecnologico - http://ctc.ufsc.br
   INE - Departamento de Informatica e Estatistica - http://inf.ufsc.br
"""

class Ordenacao():

    def __init__(self, array_para_ordenar:[]):
        """Recebe o array com o conteudo a ser ordenado"""
        self.array_final = array_para_ordenar

    def ordena(self):
        """Realiza a ordenacao do conteudo do array recebido no construtor"""
        d = 0
        for i in range(len(self.array_final)):
            for j in range(i+1, len(self.array_final)):
                if self.array_final[i]>self.array_final[j]:
                    d = self.array_final[i]
                    self.array_final[i] = self.array_final[j]
                    self.array_final[j] = d
        return self.array_final

    def toString(self):
        """Converte o conteudo do array em String formatado
           Exemplo:
           Para o conteudo do array: [1,2,3,4,5]
           Retorna: "1,2,3,4,5"
           @return String com o conteudo do array formatado
        """
        self.array_final = str(self.array_final)
        self.array_final = self.array_final.strip('[]')
        self.array_final = self.array_final.replace(' ', '')
        return self.array_final