class AmigoRepetidoException(Exception):
    def __init__(self, cpf):
        self.mensagem = "O amigo com CPF {} já existe"
        super().__init__(self.mensagem.format(cpf))