# Introdução a Programação Orientada a Objetos com Python [INE5402]

Repository of codes created in the discipline of Introduction to Object Oriented Programming in the semester of 2024.1 at UFSC

# Agenda - REFERENCE SMILE!
Esta Aplicação foi realizado como Projeto Final da disciplina Programação Orientada a Objetos I - Universidade Federal de Santa Catarina. O projeto foi feito com linguagem Python e Tinker.


<div align="center">
    <div style="display: flex; align-items: center;">
        <img src="Projeto Final/agenda.gif">
    </div>
</div>


 

## Reference Smile - Sistema de agendamentamento para consultas dentárias

Reference Smile é um sistema para gerenciamento de consultas dentárias, onde dentistas podem informar seus horários e visualizar suas agendas e clientes podem agendar suas consultas.

### Tela 1 - Tela de Início


<div align="center">
    <div style="display: flex; align-items: center;">
        <img src="./Projeto_final/Screenshots/tela_inicial.png">
    </div>


<br> 
A tela de inicial é o primeiro contato do usuário com a aplicação. O usuário vai identificar como cliente ou como dentista. Caso ele se identifica como dentista ele vai se encaminhado para pagina do dentista. Caso contrario ele vai se encaminhado para pagina do cliente para agendar as consultas.

## Tela 2 - Tela de direncionamento (Cliente ou Dentista)

<br> 
<div align="center">
    <div style="display: flex; align-items: center;">
        <img src="./Projeto_final/Screenshots/Tela2.png" width="51%" style="margin-right:10px">
         <img src="./Projeto_final/Screenshots/Tela3.png" width="59%">
    </div>
<br>
A segunda tela depende se ele e cliente ou dentista. Caso seja cliente, o usuário terá dois botões com as suas possíveis ações: <br>

<b> - Adicionar Cliente</b>- Fazer o Cadastro do cliente. <br>

<b> - Agendar consulta</b> - Só depois de realizar o cadastro.<br><br>

Caso seja <b>Dentista</b>, o usuário terá dois botões com as suas possíveis ações:<br> 
<b> - Adicionar Dentista</b> - Fazer o Cadastro do Dentista e seu Horário de atendimento. <br>
<b> - Verificar consulta</b> - Visualizar os horários de atendimentos dos pacientes (Clientes).


## Tecnologias Utilizadas:
- Lógica de Programação: Python e Programação Orientada de Objetos.
- Interface Gráfica: Tkinter para criação das telas de interação com o usuário.

## Como rodar
O sistema foi desenvolvido com a linguagem Python utilizando a biblioteca Tkinter. Para rodar, pode se executar o comando
```bash
make run
```
ou

```
python3 main.py
```

Observação: Todas as datas do sistema estão no formato ANO-MES-DIA. Exemplo: 2024-01-01



