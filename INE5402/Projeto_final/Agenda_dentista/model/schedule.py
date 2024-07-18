from collections import defaultdict

# A classe Schedule é responsável por gerenciar a agenda de um dentista
# Ela permite adicionar compromissos, verificar se um horário é válido e se há sobreposição de horários
class Schedule:
    def __init__(self):
        # A agemda em si é um dicionário, onde:
        # A chave é o dia da semana
        # O valor é uma lista de tuplas, onde cada tupla representa um compromisso
        # Cada tupla tem 3 elementos: o horário de início, o horário de fim e o cliente
        self.schedule = defaultdict(list)

    # Adiciona um compromisso na agenda do dentista.
    # Primeiro se verifica se o horário é válido com o horário de trabalho do dentista
    # Depois se verifica se há sobreposição de horários
    def set_schedule(self, day, start_time, end_time, dentist_start_time, dentist_end_time, client):
        is_schedule_valid = self.validate_schedule_time(start_time, end_time, dentist_start_time, dentist_end_time)
        is_overlapping = self.is_overlap(day, start_time, end_time)
        if is_schedule_valid and not is_overlapping:
            self.schedule[day].append( (start_time, end_time, client) )
            return True
        else:
            return False
        
    def get_all_schedule(self):
        return self.schedule

    def get_schedule(self, day):
        return self.schedule.get(day, ["Não há compromissos nesse dia."])
    
    # Valida se o horário de início e fim do compromisso é válido
    # Ou seja, se o horário de início é menor que o horário de fim e se está dentro do horário de trabalho
    def validate_schedule_time(self, start_time, end_time, dentist_start_time, dentist_end_time):
        if start_time < end_time and start_time >= dentist_start_time and end_time <= dentist_end_time:
            return True
        return False
    
    # Verifica se há sobreposição de horários
    def is_overlap(self, day, start_time, end_time):
        for schedule in self.schedule[day]:
            if start_time < schedule[1] and end_time > schedule[0]:
                return True
        return False