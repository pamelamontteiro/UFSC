from DAOs.dao import DAO
from entidade.amigo import Amigo

#cada entidade terá uma classe dessa, implementação bem simples.
class AmigoDAO(DAO):
    def __init__(self):
        super().__init__('amigos.pkl')

    def add(self, amigo: Amigo):
        if((amigo is not None) and isinstance(amigo, Amigo) and isinstance(amigo.cpf, int)):
            super().add(amigo.cpf, amigo)

    def update(self, amigo: Amigo):
        if((amigo is not None) and isinstance(amigo, Amigo) and isinstance(amigo.cpf, int)):
            super().update(amigo.cpf, amigo)

    def get(self, key:int):
        if isinstance(key, int):
            return super().get(key)

    def remove(selfself, key:int):
        if(isinstance(key, int)):
            return super().remove(key)