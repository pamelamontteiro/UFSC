from model.user import User

# Classe filha de User, que representa um cliente do sistema.
# Como diferencial, o cliente tem o CPF
class Client(User):
    def __init__(self, name, cpf):
        super().__init__(name)
        self.cpf = cpf
        self.type = "Client"

    def get_cpf(self):
        return self.cpf
    
    def set_cpf(self, cpf):
        self.cpf = cpf