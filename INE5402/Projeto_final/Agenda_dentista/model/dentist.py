from model.user import User
from model.schedule import Schedule

# Classe filha de User, que representa um dentista do sistema.
# Como diferencial, o dentista tem o CRO, horário de trabalho (horário que começa e horário que termina) e uma agenda
class Dentist(User):
    schedule = Schedule()

    def __init__(self, name, cro, start_time, end_time):
        super().__init__(name, )
        self.cro = cro
        self.type = "Dentist"
        self.start_time, self.end_time = self.validate_working_hours(start_time, end_time)

    def get_name_cro(self):
        return f"{self.name} - {self.cro}"
    
    def get_cro(self):
        return self.cro
    
    def set_cro(self, cro) -> None:
        self.cro = cro
            
    # No nosso sistema a hora de início e hora de fim do expediente sempre são trabalhadas de forma conjunta
    # Portanto, o método de get e set recebe e retorna ambas as informações
    def set_working_hour(self, start_time, end_time):
        self.start_time, self.end_time = self.validate_working_hours(start_time, end_time)

    def get_working_hour(self):
        return (self.start_time, self.end_time)
    
    def get_working_hour_as_text(self):
        return f"{self.start_time}:00 - {self.end_time}:00"
    
    # Valida se o expediente faz sentido, ou seja, se a hora de início é menor que a hora de fim
    def validate_working_hours(self, start_time, end_time):
        if start_time < end_time:
            return (start_time, end_time)
        return None, None
    
    def add_schedule(self, day, start_time, end_time, client):
        if self.schedule.set_schedule(day, start_time, end_time, self.start_time, self.end_time, client):
            return True
        return False
    
    def get_schedule(self, day):
        return self.schedule.get_schedule(day)