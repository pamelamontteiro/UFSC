from limite.tela_amigo import TelaAmigo
from entidade.amigo import Amigo
from DAOs.amigo_dao import AmigoDAO

class ControladorAmigos():

  def __init__(self, controlador_sistema):
    #self.__amigos = []
    self.__amigo_DAO = AmigoDAO()

    self.__tela_amigo = TelaAmigo()
    self.__controlador_sistema = controlador_sistema

  def pega_amigo_por_cpf(self, cpf: int):
    #for amigo in self.__amigos:
    for amigo in self.__amigo_DAO.get_all():
      print(amigo.cpf)
      if(amigo.cpf == cpf):
        return amigo
    return None

  def incluir_amigo(self):
    dados_amigo = self.__tela_amigo.pega_dados_amigo()
    amigo = Amigo(dados_amigo["nome"], dados_amigo["telefone"], dados_amigo["cpf"])
    #self.__amigos.append(amigo)
    self.__amigo_DAO.add(amigo)

  def alterar_amigo(self):
    self.lista_amigos()
    cpf_amigo = self.__tela_amigo.seleciona_amigo()
    amigo = self.pega_amigo_por_cpf(cpf_amigo)

    if(amigo is not None):
      novos_dados_amigo = self.__tela_amigo.pega_dados_amigo()
      amigo.nome = novos_dados_amigo["nome"]
      amigo.telefone = novos_dados_amigo["telefone"]
      amigo.cpf = novos_dados_amigo["cpf"] #nao deve ser alterado!
      #Atualiza o amigo com aquele cpf, ou seja, busca amigo no arquivo pelo cpf.
      #Se o cpf foi alterado, vai dar erro.
      self.__amigo_DAO.update(amigo)
      self.lista_amigos()
    else:
      self.__tela_amigo.mostra_mensagem("ATENCAO: Amigo não existente")

  # Sugestão: se a lista estiver vazia, mostrar a mensagem de lista vazia
  def lista_amigos(self):
    dados_amigos = []
    #for amigo in self.__amigos:
    for amigo in self.__amigo_DAO.get_all():
      dados_amigos.append({"nome": amigo.nome, "telefone": amigo.telefone, "cpf": amigo.cpf})
    self.__tela_amigo.mostra_amigo(dados_amigos)

  def excluir_amigo(self):
    self.lista_amigos()
    cpf_amigo = self.__tela_amigo.seleciona_amigo()
    amigo = self.pega_amigo_por_cpf(cpf_amigo)

    if(amigo is not None):
      #self.__amigos.remove(amigo)
      self.__amigo_DAO.remove(amigo.cpf)
      self.lista_amigos()
    else:
      self.__tela_amigo.mostra_mensagem("ATENCAO: Amigo não existente")

  def retornar(self):
    self.__controlador_sistema.abre_tela()

  def abre_tela(self):
    lista_opcoes = {1: self.incluir_amigo, 2: self.alterar_amigo, 3: self.lista_amigos, 4: self.excluir_amigo, 0: self.retornar}

    continua = True
    while continua:
      lista_opcoes[self.__tela_amigo.tela_opcoes()]()