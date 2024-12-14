import PySimpleGUI as sg

class TelaAmigo():
  def __init__(self):
    self.__window = None
    self.init_opcoes()

  # fazer aqui tratamento dos dados, caso a entrada seja diferente do esperado
  def tela_opcoes(self):
    self.init_opcoes()
    button, values = self.open()
    if values['1']:
      opcao = 1
    if values['2']:
      opcao = 2
    if values['3']:
      opcao = 3
    if values['4']:
      opcao = 4
    # cobre os casos de Retornar, fechar janela, ou clicar cancelar
    #Isso faz com que retornemos a tela do sistema caso qualquer uma dessas coisas aconteca
    if values['0'] or button in (None, 'Cancelar'):
      opcao = 0
    self.close()
    return opcao

  def init_opcoes(self):
    # sg.theme_previewer()
    sg.ChangeLookAndFeel('DarkTeal4')
    layout = [
      [sg.Text('-------- AMIGOS ----------', font=("Helvica", 25))],
      [sg.Text('Escolha sua opção', font=("Helvica", 15))],
      [sg.Radio('Incluir Amigo', "RD1", key='1')],
      [sg.Radio('Alterar Amigo', "RD1", key='2')],
      [sg.Radio('Listar Amigos', "RD1", key='3')],
      [sg.Radio('Excluir Amigo', "RD1", key='4')],
      [sg.Radio('Retornar', "RD1", key='0')],
      [sg.Button('Confirmar'), sg.Cancel('Cancelar')]
    ]
    self.__window = sg.Window('Sistema de livros').Layout(layout)

  # fazer aqui tratamento dos dados, caso a entrada seja diferente do esperado
  # opção de tratamento: adicionar um if e só coletar nome e telefone se o button é 'Confirmar'
  def pega_dados_amigo(self):
    sg.ChangeLookAndFeel('DarkTeal4')
    layout = [
      [sg.Text('-------- DADOS AMIGO ----------', font=("Helvica", 25))],
      [sg.Text('Nome:', size=(15, 1)), sg.InputText('', key='nome')],
      [sg.Text('Telefone:', size=(15, 1)), sg.InputText('', key='telefone')],
      [sg.Text('CPF:', size=(15, 1)), sg.InputText('', key='cpf')],
      [sg.Button('Confirmar'), sg.Cancel('Cancelar')]
    ]
    self.__window = sg.Window('Sistema de livros').Layout(layout)

    button, values = self.open()
    nome = values['nome']
    telefone = values['telefone']
    cpf = int(values['cpf'])

    self.close()
    return {"nome": nome, "telefone": telefone, "cpf": cpf}

  # fazer aqui tratamento dos dados, caso a entrada seja diferente do esperado
  def mostra_amigo(self, dados_amigo):
    string_todos_amigos = ""
    for dado in dados_amigo:
      string_todos_amigos = string_todos_amigos + "NOME DO AMIGO: " + dado["nome"] + '\n'
      string_todos_amigos = string_todos_amigos + "FONE DO AMIGO: " + str(dado["telefone"]) + '\n'
      string_todos_amigos = string_todos_amigos + "CPF DO AMIGO: " + str(dado["cpf"]) + '\n\n'

    sg.Popup('-------- LISTA DE AMIGOS ----------', string_todos_amigos)

  # fazer aqui tratamento dos dados, caso a entrada seja diferente do esperado
  def seleciona_amigo(self):
    sg.ChangeLookAndFeel('DarkTeal4')
    layout = [
      [sg.Text('-------- SELECIONAR AMIGO ----------', font=("Helvica", 25))],
      [sg.Text('Digite o CPF do amigo que deseja selecionar:', font=("Helvica", 15))],
      [sg.Text('CPF:', size=(15, 1)), sg.InputText('', key='cpf')],
      [sg.Button('Confirmar'), sg.Cancel('Cancelar')]
    ]
    self.__window = sg.Window('Seleciona amigo').Layout(layout)

    button, values = self.open()
    cpf = int(values['cpf'])
    self.close()
    return cpf

  def mostra_mensagem(self, msg):
    sg.popup("", msg)

  def close(self):
    self.__window.Close()

  def open(self):
    button, values = self.__window.Read()
    return button, values