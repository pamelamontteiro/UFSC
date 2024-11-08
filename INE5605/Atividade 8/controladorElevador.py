from abstractControladorElevador import AbstractControladorElevador
from comandoInvalidoException import ComandoInvalidoException
from elevador import Elevador


class ControladorElevador(AbstractControladorElevador):
    def __init__(self):
        self.__elevador = None

    def subir(self):
        self.__elevador.subir()

    def descer(self):
        self.__elevador.descer()

    def sai_pessoa(self):
        self.__elevador.sai_pessoa()

    def entra_pessoa(self):
        self.__elevador.entra_pessoa()

    @property
    def elevador(self):
        return self.__elevador

    def inicializar_elevador(
        self, andar_atual, total_andares_predio, capacidade, total_pessoas
    ):
        if (
            not isinstance(andar_atual, int)
            or not isinstance(total_andares_predio, int)
            or not isinstance(capacidade, int)
            or not isinstance(total_pessoas, int)
        ):
            raise ComandoInvalidoException()
        if andar_atual > total_andares_predio or andar_atual < 0:
            raise ComandoInvalidoException()
        if total_pessoas > capacidade or total_pessoas < 0:
            raise ComandoInvalidoException()
        if total_andares_predio < 0:
            raise ComandoInvalidoException()
        if capacidade < 0:
            raise ComandoInvalidoException()
        elevador = Elevador(
            capacidade, total_pessoas, total_andares_predio, andar_atual
        )
        self.__elevador = elevador
