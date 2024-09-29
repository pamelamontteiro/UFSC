from abstractControladorChamados import AbstractControladorChamados
from tipoChamado import TipoChamado
from chamado import Chamado
from datetime import date as Date
from cliente import Cliente
from tecnico import Tecnico
from collections import defaultdict


class ControladorChamados(AbstractControladorChamados):
    def __init__(self):
        super().__init__()
        self.__chamados = []
        self.__tipos_chamados = {}

    # Retorna o total de chamados registrados para o TipoChamado recebido como parametro
    # @param tipo TipoChamado
    # @return int com a quantidade total dos chamados daquele tipo
    def total_chamados_por_tipo(self, tipo: TipoChamado) -> int:
        chave = tipo.nome
        if chave not in self.__tipos_chamados.items():  # corrigir aqui
            total = 0
        else:
            total = len(self.__tipos_chamados.get(chave))
        return total

        """
    total_chamados = 0
    return total_chamados """

    # Permite incluir um novo chamado na lista de Chamados. O chamado incluido eh retornado como um Chamado
    # @param data data do chamado em formato Date
    # @param cliente referencia para o Cliente do chamado
    # @param tecnico referencia para o Tecnico do chamado
    # @param titulo titulo do chamado
    # @param descricao descricao do chamado
    # @param prioridade prioridade do chamado
    # @param tipo tipo do chamado (TipoChamado)
    # @return retorna o chamato cadastrado
    def inclui_chamado(
        self,
        data: Date,
        cliente: Cliente,
        tecnico: Tecnico,
        titulo: str,
        descricao: str,
        prioridade: int,
        tipo: TipoChamado,
    ) -> Chamado:
        chamado = Chamado(data, cliente, tecnico, titulo, descricao, prioridade, tipo)
        contador = 0
        for i in range(len(self.__chamados)):
            if self.__chamados[i].tipo == tipo:
                contador = contador + 1
        if contador == 0:
            self.__chamados.append(chamado)
        return chamado

    # Permite incluir um novo TipoChamado na lista de Tipos de Chamado. O
    # TipoChamado incluido eh retornado como um TipoChamado
    # @param codigo codigo do Tipo Chamado
    # @param nome nome do Tipo Chamado
    # @param descricao descricao do Tipo Chamado
    # @return retorna o Tipo Chamado cadastrado

    def inclui_tipochamado(self, codigo: int, nome: str, descricao: str) -> TipoChamado:
        tipo = TipoChamado(codigo, descricao, nome)
        if nome in self.__tipos_chamados.keys():
            self.__tipos_chamados.get(nome).append(tipo)
        else:
            self.__tipos_chamados[nome] = []
            self.__tipos_chamados.get(nome).append(tipo)
        return tipo

        # for i in range(len(self.__tipos_chamados.get(nome))):
        #    if self.__tipos_chamados.get(nome)[i].codigo != codigo:

    @property
    def tipos_chamados(self):
        return self.__tipos_chamados
