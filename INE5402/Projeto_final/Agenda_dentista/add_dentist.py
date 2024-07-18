from tkinter import *
from tkinter import ttk
from tkinter import messagebox
from model.dentist import Dentist
from constants import *

class AddDentist:

    def __init__(self, root, dentists):
        self.dentists = dentists
        self.new_window = Toplevel(root)

        self.new_window.title("Reference Smile - Adicionar Dentista")
        self.new_window.geometry(f"{WIDTH}x{HEIGHT}")
        self.new_window.resizable(False, False)

        self.frame = ttk.Frame(self.new_window, padding="3 3 12 12")
        self.frame.grid(row=0, column=0, sticky=(N, W, E, S))
       
        self.name = StringVar()
        self.cro = StringVar()
        self.start_hour = StringVar()
        self.end_hour = StringVar()

        for child in self.new_window.winfo_children():
            child.grid_configure(padx=5, pady=5)

        self.create_screen()
        self.create_inputs()
        self.create_buttons()

        self.new_window.transient(root)
        self.new_window.grab_set()
        root.wait_window(self.new_window)
    
    def add_dentist(self, name, cro, start_hour, end_hour):
        if name == "" or cro == "" or start_hour == "" or end_hour == "":
            messagebox.showerror("Erro", "Preencha todos os campos!")
            return
        new_dentist = Dentist(name, cro, int(start_hour), int(end_hour))
        self.dentists.append(new_dentist)
        self.new_window.destroy()

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
            text = "ADICIONAR DENTISTA",
            fill = "#FFFFFF",
            font = ("Roboto Bold", 54 * -1)
        )

        background = PhotoImage(file = "assets/bg_add_dentist.png")
        label = Label(image=background)
        label.image = background
        self.canvas.create_image(
            200.0,
            470.0,
            image = background
        )

    
    def create_inputs(self):
        # Nome
        self.canvas.create_text(
            100.0,
            183.0,
            anchor = "nw",
            text = "NOME:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )

        input_name = PhotoImage(file = "assets/input.png")
        label = Label(image = input_name)
        label.image = input_name
        self.canvas.create_image(
            700.0,
            200.0,
            image = input_name
        )
        self.entry_name = Entry(
            self.canvas,
            textvariable=self.name,
            bd = 0,
            bg = COLORS["BLUE_BG"],
            fg = COLORS["WHITE"],
            highlightthickness = 0
        )
        self.entry_name.place(
            x = 576.0,
            y = 183.0,
            width = 246.0,
            height = 34.0
        )

        # CRO
        self.canvas.create_text(
            100.0,
            233.0,
            anchor = "nw",
            text = "CRO:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )

        input_cro = PhotoImage(file = "assets/input.png")
        label = Label(image = input_cro)
        label.image = input_cro
        self.canvas.create_image(
            700.0,
            250.0,
            image = input_cro
        )
        self.entry_cro = Entry(
            self.canvas,
            textvariable=self.cro,
            bd = 0,
            bg = COLORS["BLUE_BG"],
            fg = COLORS["WHITE"],
            highlightthickness = 0
        )
        self.entry_cro.place(
            x = 576.0,
            y = 233.0,
            width = 246.0,
            height = 34.0
        )

        # Início do Expediente (Hora)
        self.canvas.create_text(
            100.0,
            283.0,
            anchor = "nw",
            text = "Início do Expediente (Hora):",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )

        input_starting_hour = PhotoImage(file = "assets/input.png")
        label = Label(image = input_starting_hour)
        label.image = input_starting_hour
        self.canvas.create_image(
            700.0,
            300.0,
            image = input_starting_hour
        )
        self.entry_starting_hour = Entry(
            self.canvas,
            textvariable=self.start_hour,
            bd = 0,
            bg = COLORS["BLUE_BG"],
            fg = COLORS["WHITE"],
            highlightthickness = 0
        )
        self.entry_starting_hour.place(
            x = 576.0,
            y = 283.0,
            width = 246.0,
            height = 34.0
        )

        # Fim do Expediente (Hora)
        self.canvas.create_text(
            100.0,
            333.0,
            anchor = "nw",
            text = "Fim do Expediente (Hora):",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )

        input_ending_hour = PhotoImage(file = "assets/input.png")
        label = Label(image = input_ending_hour)
        label.image = input_ending_hour
        self.canvas.create_image(
            700.0,
            350.0,
            image = input_ending_hour
        )
        self.entry_ending_hour = Entry(
            self.canvas,
            textvariable=self.end_hour,
            bd = 0,
            bg = COLORS["BLUE_BG"],
            fg = COLORS["WHITE"],
            highlightthickness = 0
        )
        self.entry_ending_hour.place(
            x = 576.0,
            y = 333.0,
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
            command = lambda: self.add_dentist(self.name.get(), self.cro.get(), self.start_hour.get(), self.end_hour.get()),
            relief = "flat",
        )
        add_btn.place(
            x=650.0,
            y=400.0,
            width=180.0,
            height=56.0
        )