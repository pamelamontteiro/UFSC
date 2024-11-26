from funcionario import Funcionario


class Administrativo(Funcionario):
    def __init__(self, departamento: str, cpf: int) -> None:
        super().__init__(departamento, cpf, dias_de_emprestimo=10)

    def emprestar(self, titulo_livro: str):
        default = 'Funcionario administrativo do departamento "{0}" pegou emprestado o livro: {1} com {2} dias de prazo'
        return default.format(self.departamento, titulo_livro, self.dias_de_emprestimo)

    def devolver(self, titulo_livro: str):
        default = (
            'Funcionario administrativo do departamento "{0}" devolveu o livro: {1}'
        )
        return default.format(self.departamento, titulo_livro)
