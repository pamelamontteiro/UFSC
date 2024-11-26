from usuario_bu import UsuarioBU
from abc import abstractmethod


class Aluno(UsuarioBU):
    @abstractmethod
    def __init__(self, cpf: int, dias_de_emprestimo: int, matricula: int) -> None:
        if not isinstance(matricula, int):
            print("Aluno.matricula deve ser um inteiro")
            return
        super().__init__(cpf, dias_de_emprestimo)
        self.__matricula = matricula

    @property
    def matricula(self):
        return self.__matricula

    @matricula.setter
    def matricula(self, matricula: int):
        if not isinstance(matricula, int):
            print("Aluno.matricula deve ser um inteiro")
            return
        self.__matricula = matricula

    def emprestar(self, titulo_livro: str):
        default = 'Aluno de matricula "{0}" pegou emprestado o livro: {1} com {2} dias de prazo'
        return default.format(self.matricula, titulo_livro, self.dias_de_emprestimo)

    def devolver(self, titulo_livro: str):
        default = 'Aluno de matricula "{0}" devolveu o livro: {1}'
        return default.format(self.matricula, titulo_livro)
