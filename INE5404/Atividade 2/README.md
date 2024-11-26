
# PROBLEMA 02 | Associação, Agregação e Composição

<b> Exercício: reforçando abstração, associação, agregação, composição e manipulação de coleções. </b>


Seu primo possui muitos Livros, todos em papel, e vive emprestando aos amigos dele. Entretanto, muitas vezes ele esquece a quem emprestou e já perdeu diversos Livros por causa disso. No almoço da família, no último final de semana, ele pediu para você desenvolver um programa para resolver este problema. Esse sistema deve permitir o cadastro dos amigos, incluindo: nome, número do telefone e e-mail e também cadastrar os Livros, com: título, resumo, autor,personagem principal,gênero (comédia, romance ou aventura, etc) e faixa etária. Deve ser possível cadastrar os empréstimos e
obter a lista de Livros emprestados incluindo quais amigos estão com quais Livros.



<b> Com base na descrição:</b>

<br>


1. Identificação e Modelagem das Classes

- Baseado na descrição fornecida, podemos identificar as seguintes classes principais:

    - Amigo
    - Livros
    - Emprestimo
    - Autor

<br>

# 
2. Identificação e Modelagem dos Atributos das Classes

Amigo

- nome (String)
- telefone (String)
- email (String)

Livros

- titulo (String)
- resumo (String)
- autor (String)
- personagemPrincipal (String)
- genero (String) - Exemplo de valores: "comédia", "romance", "aventura", etc.
- faixaEtaria (String) - Exemplo de valores: "infantil", "juvenil", "adulto", etc.

Emprestimos
- status (String)
- dataEmprestimo (Date)
- dataDevolucao (Date)

#
3. Identificação e Modelagem das Associações Entre as Classes

    1- Associação entre <b>Amigo</b> e <b>Emprestimo</b>

    <b>Multiplicidade:</b>

    >           Amigo 1 | 0..* Emprestimos


    - Um Amigo pode ter zero ou mais empréstimos (0..*). Isso significa que um amigo pode não ter emprestado nenhum livro, ou pode ter emprestado vários livros ao longo do tempo.
    - Um Emprestimos deve estar associado a exatamente um amigo (1). Cada empréstimo é feito por um único amigo.

    2- Associação entre <b>Livro</b> e <b>Emprestimo</b>

    Multiplicidade:

    >           Livros 1..* | 0..* Emprestimos

    - Um Livro pode ser emprestado em vários Emprestimos (0..*) ao longo do tempo, mas em um momento específico, um livro pode estar associado a no máximo um Emprestimo.
    - Um Emprestimo deve estar associado a exatamente um Livro.

    3- Associação entre Autor e Livro

    <b> Multiplicidade:</b>  

    >               Autor 1 | 0..* Livros

    - Um Autor pode escrever zero ou mais livros (0..*). Isso significa que um autor pode não ter nenhum livro registrado, ou pode ter vários livros.

    - Um Livro deve ser escrito por exatamente um autor (1). Cada livro tem um único autor.

    #


<b> Diagrama UML (Unified Modeling Language) </b>>
<img src="Atividade 2.jpg">





<b> Implementação em Python </b>
 
 ```python

class Autor:
    def __init__(self, nome):
        self.nome = nome
        self.livros = []

    def adicionarLivro(self, livro):
        self.livros.append(livro)
```
<br> 

Atributos:

- nome: Nome do autor.
- livros: Lista que armazenará todos os livros escritos por este autor.

 Método adicionarlivro(self, livro):
- Este método adiciona um livro à lista livros do autor. Isso mantém um registro dos livros associados a um autor específico.
<br>

 
 ```python
class Amigo:
    def __init__(self, nome, telefone, email):
        self.nome = nome
        self.telefone = telefone
        self.email = email
        self.emprestimos = []

    def adicionar_emprestimo(self, emprestimo):
        self.emprestimos.append(emprestimo)
```
<br> 
<br>

 
 ```python
class Livros:
    def __init__(self, titulo, resumo, autor, personagemPrincipal, genero, faixaEtaria):
        self.titulo = titulo
        self.resumo = resumo
        self.autor = autor
        self.personagemPrincipal = personagemPrincipal
        self.genero = genero
        self.faixaEtaria = faixaEtaria
        self.emprestimos = []

        # Adiciona este livro à lista de livros do autor
        autor.adicionar_livro(self)

    def adicionar_emprestimo(self, emprestimo):
        self.emprestimos.append(emprestimo)
```

<b> Atributos da Classe Livros </b>: 

- titulo: Título do livro.
- resumo: Resumo do conteúdo do livro.
- autor: Referência à instância da classe Autor que escreveu o livro.
- personagemPrincipal: Nome do personagem principal do livro.
- genero: Gênero do livro (por exemplo, "aventura", "romance").
- faixaEtaria: Faixa etária recomendada para o livro (por exemplo, "infantil", "adulto").
- emprestimos: Lista que armazenará todos os empréstimos em que este livro está envolvido.

Método  adicionarEmprestimo(self, emprestimo):

- Este método adiciona um empréstimo à lista emprestimos do livro. Isso mantém um registro dos empréstimos relacionados a este livro específico.

<br> 
<br>

 ```python
class Emprestimo:
    def __init__(self, livro, amigo, dataEmprestimo, dataDevolucao=None):
        self.livro = livro
        self.amigo = amigo
        self.dataEmprestimo = dataEmprestimo
        self.dataDevolucao = dataDevolucao
        livro.adicionar_emprestimo(self)
        amigo.adicionar_emprestimo(self)
```



