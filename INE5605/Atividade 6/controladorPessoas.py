from abstractControladorPessoas import AbstractControladorPessoas
from cliente import Cliente
from tecnico import Tecnico


class ControladorPessoas(AbstractControladorPessoas):

    def __init__(self):
        self.__clientes = []
        self.__tecnicos = []

    @property
    def clientes(self) -> list:
        return self.__clientes

    @property
    def tecnicos(self) -> list:
        return self.__tecnicos

    def inclui_cliente(self, codigo: int, nome: str) -> Cliente:
        # Verifica se já existe um cliente com o mesmo código
        for cliente in self.__clientes:
            if cliente.codigo == codigo:
                return None  # Retorna None se o cliente já existir
        # Adiciona o cliente caso não tenha encontrado duplicidade
        novo_cliente = Cliente(nome, codigo)
        self.__clientes.append(novo_cliente)
        return novo_cliente

    def inclui_tecnico(self, codigo: int, nome: str) -> Tecnico:
        # Verifica se já existe um técnico com o mesmo código
        for tecnico in self.__tecnicos:
            if tecnico.codigo == codigo:
                return None  # Retorna None se o técnico já existir
        # Adiciona o técnico caso não tenha encontrado duplicidade
        novo_tecnico = Tecnico(nome, codigo)
        self.__tecnicos.append(novo_tecnico)
        return novo_tecnico
