from pessoa import Pessoa


class Cliente(Pessoa):
    def __init__(self, nome: str, codigo: int):
        super().__init__(
            nome, codigo
        )  # herança - puxar as coisa do pai, no caso é Pessoa
        pass
