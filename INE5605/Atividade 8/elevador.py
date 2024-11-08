from abstractElevador import AbstractElevador
from elevadorCheioException import ElevadorCheioException
from elevadorJahNoTerreoException import ElevadorJahNoTerreoException
from elevadorJahNoUltimoAndarException import ElevadorJahNoUltimoAndarException
from elevadorJahVazioException import ElevadorJahVazioException


class Elevador(AbstractElevador):
    def __init__(
        self,
        capacidade: int,
        total_pessoas: int,
        total_andares_predio: int,
        andar_atual: int,
    ):
        self.__capacidade = None
        self.__total_pessoas = None
        self.__total_andares_predio = None
        self.__andar_atual = None

        if isinstance(capacidade, int):
            self.__capacidade = capacidade
        if isinstance(total_pessoas, int):
            self.__total_pessoas = total_pessoas
        if isinstance(total_andares_predio, int):
            self.__total_andares_predio = total_andares_predio
        if isinstance(andar_atual, int):
            self.__andar_atual = andar_atual

    def descer(self) -> str:
        if self.__andar_atual - 1 < 0:
            raise ElevadorJahNoTerreoException()
        else:
            self.__andar_atual -= 1
            return str(self.__andar_atual)

    def entra_pessoa(self) -> str:
        if self.__total_pessoas + 1 > self.__capacidade:
            raise ElevadorCheioException()
        else:
            self.__total_pessoas += 1
            return str(self.__total_pessoas)

    def sai_pessoa(self) -> str:
        if self.__total_pessoas - 1 < 0:
            raise ElevadorJahVazioException()
        else:
            self.__total_pessoas -= 1
            return str(self.__total_pessoas)

    def subir(self) -> str:
        if self.__andar_atual + 1 > self.__total_andares_predio:
            raise ElevadorJahNoUltimoAndarException()
        else:
            self.__andar_atual += 1
            return str(self.__andar_atual)

    @property
    def capacidade(self):
        return self.__capacidade

    @property
    def total_pessoas(self):
        return self.__total_pessoas

    @property
    def total_andares_predio(self):
        return self.__total_andares_predio

    @property
    def andar_atual(self):
        return self.__andar_atual

    @total_andares_predio.setter
    def total_andares_predio(self, total_andares_predio: int):
        if isinstance(total_andares_predio, int):
            self.__total_andares_predio = total_andares_predio
