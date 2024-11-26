from livro import Livro


class Biblioteca:
    def __init__(self):
        self.__livros = []

    def incluir_livro(self, livro: Livro):
        if isinstance(livro, Livro):
            tem_livro = False
            for livro_for in self.__livros:
                if livro_for.codigo == livro.codigo:
                    tem_livro = True
            if not tem_livro:
                self.__livros.append(livro)  # append para incluir

    def excluir_livro(self, livro: Livro):
        self.__livros.remove(livro)  # tera que testar

    @property
    def livros(self):
        return self.__livros
