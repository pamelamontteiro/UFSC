from abc import ABC, abstractmethod


class UsuarioBU(ABC):
    @abstractmethod
    def __init__(self, cpf: int, dias_de_emprestimo: int) -> None:
        if not isinstance(cpf, int):
            print('UsuarioBU.cpf deve ser um inteiro')
            return
        if not isinstance(dias_de_emprestimo, int):
            print('UsuarioBU.dias_de_emprestimo deve ser um inteiro')
            return
        self.__cpf = cpf
        self.__dias_de_emprestimo = dias_de_emprestimo

    @property
    def cpf(self):
        return self.__cpf

    @cpf.setter
    def cpf(self, cpf: int):
        if not isinstance(cpf, int):
            print('UsuarioBU.cpf deve ser um inteiro')
            return
        self.__cpf = cpf

    @property
    def dias_de_emprestimo(self):
        return self.__dias_de_emprestimo

    @dias_de_emprestimo.setter
    def dias_de_emprestimo(self, dias_de_emprestimo: int):
        if not isinstance(dias_de_emprestimo, int):
            print('UsuarioBU.dias_de_emprestimo deve ser um inteiro')
            return
        self.__dias_de_emprestimo = dias_de_emprestimo

    @abstractmethod
    def emprestar(self, titulo_livro: str):
        pass

    @abstractmethod
    def devolver(self, titulo_livro: str):
        pass
	
	
