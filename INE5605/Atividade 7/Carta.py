from AbstractCarta import *
from Personagem import *


class Carta(AbstractCarta):

    def __init__(self, personagem: Personagem):
        self.__personagem = personagem

    def valor_total_carta(self) -> int:
        soma = (
            self.personagem.energia
            + self.personagem.habilidade
            + self.personagem.velocidade
            + self.personagem.resistencia
        )
        return soma

    @property
    def personagem(self) -> Personagem:
        return self.__personagem
