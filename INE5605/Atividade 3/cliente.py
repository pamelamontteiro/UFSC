class Cliente:
    def __init__(self, nome, fone, email):
        self.__nome = nome
        self.__fone = fone
        self.__email = email

    @property
    def nome(self):
        return self.__nome

    @nome.setter  # nesse caso vai haver uma mudança da variavel, então tem que passa esse valor como parametro (self, nome)
    def nome(self, nome):
        self.__nome = nome

    @property
    def fone(self):
        return self.__fone

    @fone.setter
    def fone(self, fone):
        self.__fone = fone

    @property
    def email(self):
        return self.__email

    @email.setter
    def email(self, email):
        self.__email = email
