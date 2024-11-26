from cliente import Cliente
from venda import Venda
from pacote_viagem import PacoteViagem


def main():
    cliente = Cliente("Pamela", "4899999111", "pamela.ufsc@gmail.com")
    pacote = PacoteViagem("Floripa", "SC", 2, 100)
    venda = Venda(123, cliente, "turismo", pacote, 2)
    print(venda.preco_total())
    print(venda.cliente.nome)


if __name__ == "__main__":
    main()
