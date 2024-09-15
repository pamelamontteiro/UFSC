# Classe pai de todos os usuários do sistema.
# Portanto, todos os usuários do sistema devem ter nome e tipo.
class User:
    def __init__(self, name):
        self.name = name
        self.type = ""

    def get_name(self):
        return self.name

    def get_type(self):
        return self.type
