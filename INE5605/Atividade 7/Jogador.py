from abc import ABC, abstractmethod

from Carta import *
from AbstractJogador import *
import random


class Jogador(AbstractJogador):

    def __init__(self, nome: str):
        self.__nome = nome
        self.__mao = []  # Inicializamos a mão do jogador como uma lista vazia

    """
    @return Retorna o nome do jogador
    """

    @property
    def nome(self) -> str:
        return self.__nome  # Usamos self.__nome para acessar o atributo privado

    """
    Retira uma das cartas do Jogador. Esta operação é utilizada para realizar uma jogada (baixar uma carta na mesa)
    A carta sai da mão (ou seja, a carta sai da lista das cartas que o jogador possui)
    @return Retorna a Carta que foi retirada da mão do jogador (lista das cartas que ele possui)
    """

    def baixa_carta_da_mao(self) -> Carta:
        if not self.__mao:
            return None
        carta_baixada = self.__mao.pop()
        return carta_baixada

    """
    @return Retorna a mão atual do jogador (lista das cartas que ele possui)
    """

    @property
    def mao(self) -> list:
        return self.__mao  # Retorna a lista de cartas que o jogador possui

    """
    Inclui na mão do jogador a carta passada como parâmetro
    @param carta Carta que será incluída na mão do jogador
    """

    def inclui_carta_na_mao(self, carta: Carta):
        self.__mao.append(carta)  # Adiciona a carta na lista de cartas do jogador
