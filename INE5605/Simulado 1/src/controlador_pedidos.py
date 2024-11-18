from pedido_duplicado_exception import PedidoDuplicadoException
from pedido import Pedido


class ControladorPedidos():
    def __init__(self):
        self.__pedidos = []

    @property
    def pedidos(self):
        return self.__pedidos

    @pedidos.setter
    def pedidos(self, pedidos):
        self.__pedidos = pedidos

    '''
    Busca pedido pelo numero.
    Se o pedido nao existir, deve retornar None
    Caso contrario, retorna o pedido.
    '''
    def busca_pedido_por_numero(self, numero):
        for pedido in self.__pedidos:
            if pedido.numero == numero:
                return pedido
        return None

    '''
    Incluir pedido na lista.
    Tratar os casos de instancias incorretas e pedido duplicado.
    Caso o pedido já exista na lista, gerar a excecao:
    PedidoDuplicadoException    pedido_na_lista
    '''
    def incluir_pedido(self, pedido):
        if isinstance(pedido, Pedido):
            for pedido_na_lista in self.__pedidos:
                if pedido_na_lista.numero == pedido.numero:
                    raise PedidoDuplicadoException
            self.__pedidos.append(pedido)

    '''
    Exclui pedido pelo numero.
    Se o pedido nao existir, deve retornar None
    Caso contrario, retorna o pedido excluido
    '''
    def excluir_pedido(self, numero):
        for pedidoNum in self.__pedidos:
            if pedidoNum.numero == numero:
                self.__pedidos.remove(pedidoNum)
                return pedidoNum
        return None

    '''
    Deve calcular o total do faturamento para todos os
    itens pedidos por um CPF.
    Recebe como parametro:
    distancia: um float que corresponde a distancia percorrida
    cpf: uma string representando o CPF do Cliente a ser faturado
    '''
    def calcular_faturamento_pedidos(self, distancia, cpf):
        valor = 0
        for pedido in self.__pedidos:
            if cpf == pedido.cliente.cpf:
                valor += pedido.calcula_valor_pedido(distancia=distancia)
        return valor
