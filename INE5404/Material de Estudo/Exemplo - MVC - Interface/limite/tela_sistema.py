from limite.abstract_tela import AbstractTela

class TelaSistema(AbstractTela):
    def __init__(self) -> None:
        pass

    def tela_opcoes(self):
        print("-------- SisLivros ---------")
        print("Escolha sua opcao")
        print("1 - Livros")
        print("2 - Amigos")
        print("3 - Emprestimos")
        print("0 - Finalizar sistema")
        opcao = self.le_num_inteiro("Escolha a opcao: ", [0,1,2,3])
        return opcao

