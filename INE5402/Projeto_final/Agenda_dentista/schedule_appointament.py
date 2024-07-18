from tkinter import *
from tkinter import ttk
from tkinter import messagebox
from datetime import datetime
from constants import *

HEIGHT = 700

class ScheduleAppointament:

    def __init__(self, root, dentists, clients):
        self.dentists = dentists
        self.clients = clients

        self.new_window = Toplevel(root)
        
        self.new_window.title("Reference Smile - Agendar consultas")
        self.new_window.geometry(f"{WIDTH}x{HEIGHT}")
        self.new_window.resizable(False, False)

        frame = ttk.Frame(self.new_window, padding="3 3 12 12")
        frame.grid(row=0, column=0, sticky=(N, W, E, S))

        self.client_dentist = StringVar()
        self.client_cpf = StringVar()
        self.client_name = StringVar()
        self.appointament_day = StringVar()
        self.start_hour = IntVar()
        self.end_hour = IntVar()

        self.dentist_names = [dentist.get_name_cro() for dentist in self.dentists]

        self.create_screen()
        self.create_inputs()
        self.create_buttons()

        # Método para atualizar o nome do cliente ao digitar o CPF
        def on_cpf_change(event):
            cpf = self.client_cpf.get()
            client = next((client for client in self.clients if client.get_cpf() == cpf), None)
            if client:
                self.client_name.set(client.get_name())
                self.entry_client_name.config(state=DISABLED)
            else:
                self.client_name.set('')
                self.entry_client_name.config(state=NORMAL)

        # Liga o método acima com a tecla Enter do teclado
        self.entry_cpf.bind('<Return>', on_cpf_change)

        # Atualiza a lista de horários disponíveis ao mudar o dia
        def on_day_change(event):
            self.dentist_schedule.delete(0, END)
            dentist_value = self.client_dentist.get()
            dentist_name, dentist_cro = dentist_value.split(' - ')
            dentist = next((dentist for dentist in self.dentists if dentist.get_name() == dentist_name and dentist.get_cro() == dentist_cro), None)
            day = datetime.strptime(self.appointament_day.get(), "%Y-%m-%d")
            if dentist:
                for idx, schedule in enumerate(dentist.get_schedule(day)):
                    self.dentist_schedule.insert(idx+1, f"{schedule[0]}:00 - {schedule[1]}:00" if len(schedule) == 3 else schedule)
            else:
                self.dentist_schedule.delete(0, END)
        
        # Liga o método acima com a tecla Enter do teclado
        self.entry_appointment_day.bind('<Return>', on_day_change)

        self.new_window.transient(root)
        self.new_window.grab_set()
        root.wait_window(self.new_window)

    def add_appointament(self, dentist_name, day, start_hour, end_hour, client_cpf):
        dentist_name, dentist_cro = dentist_name.split(' - ')
        dentist = [dentist for dentist in self.dentists if dentist.get_name() == dentist_name and dentist.get_cro() == dentist_cro]
        dentist_index = next((i for i, dentist in enumerate(self.dentists) if dentist.get_name() == dentist_name and dentist.get_cro() == dentist_cro), None)
        
        day = datetime.strptime(day, "%Y-%m-%d")
        client = [client for client in self.clients if client.get_cpf() == client_cpf]
        if dentist and client:
            dentist = dentist[0]
            client = client[0]
            if dentist.add_schedule(day, start_hour, end_hour, client):
                self.dentists[dentist_index] = dentist
                self.new_window.destroy()
                return
            else:
                # Mensagem de erro caso o horário seja inválido ou há sobreposição de horário
                messagebox.showerror("Erro", f"Horário indisponível! O horário do dentista vai das {dentist.get_working_hour()[0]}:00 às {dentist.get_working_hour()[1]}:00!")
        
    def create_screen(self):
        self.canvas = Canvas(
            self.new_window,
            bg = COLORS["BLUE_BG"],
            height = HEIGHT,
            width = WIDTH,
            bd = 0,
            highlightthickness = 0,
            relief = "ridge"
        )
        self.canvas.grid(column=0, row=0, sticky=(N, W, E, S))

        self.canvas.create_text(
            200.0,
            40.0,
            anchor = "nw",
            text = "AGENDAR CONSULTAS",
            fill = "#FFFFFF",
            font = ("Roboto Bold", 54 * -1)
        )

    def create_inputs(self):
        # Dentista
        self.canvas.create_text(
            100.0,
            183.0,
            anchor = "nw",
            text = "ESCOLHA SEU DENTISTA:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )
        input_dentist = PhotoImage(file = "assets/input.png")
        label = Label(image = input_dentist)
        label.image = input_dentist
        self.canvas.create_image(
            700.0,
            200.0,
            image = input_dentist
        )
        style = ttk.Style()
        style.configure("BW.TMenubutton", foreground=COLORS["WHITE"], background=COLORS["BLUE_BG"])
        self.entry_dentist = ttk.OptionMenu(
            self.canvas, 
            self.client_dentist, 
            *self.dentist_names,
            style="BW.TMenubutton"
        )
        self.entry_dentist.place(
            x = 576.0,
            y = 183.0,
            width = 246.0,
            height = 34.0
        )

        # CPF do usuário
        self.canvas.create_text(
            100.0,
            233.0,
            anchor = "nw",
            text = "CPF DO CLIENT:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )

        input_cpf = PhotoImage(file = "assets/input.png")
        label = Label(image = input_cpf)
        label.image = input_cpf
        self.canvas.create_image(
            700.0,
            250.0,
            image = input_cpf
        )
        self.entry_cpf = Entry(
            self.canvas,
            textvariable=self.client_cpf,
            bd = 0,
            bg = COLORS["BLUE_BG"],
            fg = COLORS["WHITE"],
            highlightthickness = 0
        )
        self.entry_cpf.place(
            x = 576.0,
            y = 233.0,
            width = 246.0,
            height = 34.0
        )

        # Nome do usuário
        self.canvas.create_text(
            100.0,
            283.0,
            anchor = "nw",
            text = "NOME DO CLIENTE:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )

        input_client_name = PhotoImage(file = "assets/input.png")
        label = Label(image = input_client_name)
        label.image = input_client_name
        self.canvas.create_image(
            700.0,
            300.0,
            image = input_client_name
        )
        self.entry_client_name = Entry(
            self.canvas,
            textvariable=self.client_name,
            bd = 0,
            bg = COLORS["BLUE_BG"],
            fg = COLORS["WHITE"],
            highlightthickness = 0
        )
        self.entry_client_name.place(
            x = 576.0,
            y = 283.0,
            width = 246.0,
            height = 34.0
        )

        # Dia da consulta
        self.canvas.create_text(
            100.0,
            333.0,
            anchor = "nw",
            text = "DIA DA CONSULTA:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )

        input_appointment_day = PhotoImage(file = "assets/input.png")
        label = Label(image = input_appointment_day)
        label.image = input_appointment_day
        self.canvas.create_image(
            700.0,
            350.0,
            image = input_appointment_day
        )
        self.entry_appointment_day = Entry(
            self.canvas,
            textvariable=self.appointament_day,
            bd = 0,
            bg = COLORS["BLUE_BG"],
            fg = COLORS["WHITE"],
            highlightthickness = 0
        )
        self.entry_appointment_day.place(
            x = 576.0,
            y = 333.0,
            width = 246.0,
            height = 34.0
        )

        # Consultas
        self.canvas.create_text(
            100.0,
            383.0,
            anchor = "nw",
            text = "CONSULTAS:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )
        
        
        self.canvas.create_rectangle(
            572.0,
            383.0,
            828.0,
            390.0 + 5 * 14.0,
            fill = COLORS["WHITE"]
        )
        self.dentist_schedule = Listbox(
            self.canvas, 
            borderwidth = 0, 
            height = 4, 
            width = 31,
            bg=COLORS["BLUE_BG"],  
            fg=COLORS["WHITE"],
        )
        self.dentist_schedule.place(x = 574.0, y = 385.0)

        # Horário de início
        self.canvas.create_text(
            100.0,
            483.0,
            anchor = "nw",
            text = "HORÁRIO DE INÍCIO:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )

        input_start_hour = PhotoImage(file = "assets/input.png")
        label = Label(image = input_start_hour)
        label.image = input_start_hour
        self.canvas.create_image(
            700.0,
            500.0,
            image = input_start_hour
        )
        self.entry_start_hour = Entry(
            self.canvas,
            textvariable=self.start_hour,
            bd = 0,
            bg = COLORS["BLUE_BG"],
            fg = COLORS["WHITE"],
            highlightthickness = 0
        )
        self.entry_start_hour.place(
            x = 576.0,
            y = 483.0,
            width = 246.0,
            height = 34.0
        )

        # Horário de fim
        self.canvas.create_text(
            100.0,
            533.0,
            anchor = "nw",
            text = "HORÁRIO DE FIM:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )

        input_end_hour = PhotoImage(file = "assets/input.png")
        label = Label(image = input_end_hour)
        label.image = input_end_hour
        self.canvas.create_image(
            700.0,
            550.0,
            image = input_end_hour
        )
        self.entry_end_hour = Entry(
            self.canvas,
            textvariable=self.end_hour,
            bd = 0,
            bg = COLORS["BLUE_BG"],
            fg = COLORS["WHITE"],
            highlightthickness = 0
        )
        self.entry_end_hour.place(
            x = 576.0,
            y = 533.0,
            width = 246.0,
            height = 34.0
        )

    def create_buttons(self):
        image_btn = PhotoImage(file = "assets/btn_add.png")
        label = Label(image = image_btn)
        label.image = image_btn
        add_btn = Button(
            self.new_window,
            bg=COLORS["BLUE_BG"],
            image = image_btn,
            borderwidth = 0,
            highlightthickness = 0,
            command = lambda: self.add_appointament(self.client_dentist.get(), self.appointament_day.get(), self.start_hour.get(), self.end_hour.get(), self.client_cpf.get()),
            relief = "flat",
        )
        add_btn.place(
            x=650.0,
            y=583.0,
            width=180.0,
            height=56.0
        )