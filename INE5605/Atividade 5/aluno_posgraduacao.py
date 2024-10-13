from aluno import Aluno


class AlunoPosGraduacao(Aluno):
    def __init__(self, cpf: int, dias_de_emprestimo: int, matricula: int) -> None:
        super().__init__(cpf, dias_de_emprestimo, matricula)
        self.__elaborando_tese = False

    @property
    def elaborando_tese(self) -> bool:
        return self.__elaborando_tese

    @elaborando_tese.setter
    def elaborando_tese(self, elaborando_tese: bool):
        if not isinstance(elaborando_tese, bool):
            print("AlunoPosGraduacao.elaborando_tese deve ser um boolean")
            return
        if elaborando_tese:
            self.dias_de_emprestimo *= 2
        self.__elaborando_tese = elaborando_tese
