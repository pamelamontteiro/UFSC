from usuario_bu import UsuarioBU
from abc import abstractmethod


class Funcionario(UsuarioBU):
    @abstractmethod
    def __init__(self, departamento: str, cpf: int, dias_de_emprestimo: int) -> None:
        if not isinstance(departamento, str):
            print("Funcionario.departamento deve ser uma string")
            return
        super().__init__(cpf, dias_de_emprestimo)
        self.__departamento = departamento

    @property
    def departamento(self):
        return self.__departamento

    @departamento.setter
    def departamento(self, departamento: str):
        if not isinstance(departamento, str):
            print("Funcionario.departamento deve ser uma string")
            return

    @abstractmethod
    def emprestar(self, titulo_livro: str):
        default = (
            'do departamento "{0}" pegou emprestado o livro: {1} com {2} dias de prazo'
        )
        return default.format(
            self.__departamento, titulo_livro, self.dias_de_emprestimo
        )

    @abstractmethod
    def devolver(self, titulo_livro: str):
        default = 'do departamento "{0}" devolveu o livro: {1}'
        return default.format(self.departamento, titulo_livro)
