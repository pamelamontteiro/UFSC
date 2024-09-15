from tkinter import *
from tkinter import ttk
from tkinter import messagebox
from model.client import Client
from constants import *


class AddClient:

    def __init__(self, root, clients):
        self.clients = clients
        self.new_window = Toplevel(root)

        self.new_window.title("Reference Smile - Adicionar Cliente")
        self.new_window.geometry(f"{WIDTH}x{HEIGHT}")
        self.new_window.resizable(False, False)

        self.frame = ttk.Frame(self.new_window, padding="3 3 12 12")
        self.frame.grid(row=0, column=0, sticky=(N, W, E, S))

        self.name = StringVar()
        self.cpf = StringVar()

        for child in self.new_window.winfo_children():
            child.grid_configure(padx=5, pady=5)

        self.create_screen()  # Método que cria o fundo da tela usando a classe Canvas
        self.create_inputs()  # Método que cria os campos para digitar o nome e CPF do cliente
        self.create_buttons()  # Método que cria o botão para adicionar o cliente

        # O trecho abaixo bloqueia as telas anteriores enquanto a tela de adicionar cliente estiver aberta
        self.new_window.transient(root)
        self.new_window.grab_set()
        root.wait_window(self.new_window)

    # Método que adiciona um cliente à lista de clientes e fecha a tela de adicionar cliente
    def add_client(self, name, cpf):
        if name == "" or cpf == "":
            messagebox.showerror("Erro", "Preencha todos os campos!")
            return
        new_client = Client(name, cpf)
        self.clients.append(new_client)
        self.new_window.destroy()

    def create_screen(self):
        self.canvas = Canvas(
            self.new_window,
            bg=COLORS["BLUE_BG"],
            height=HEIGHT,
            width=WIDTH,
            bd=0,
            highlightthickness=0,
            relief="ridge",
        )
        self.canvas.grid(column=0, row=0, sticky=(N, W, E, S))

        self.canvas.create_text(
            200.0,
            40.0,
            anchor="nw",
            text="ADICIONAR CLIENTE",
            fill="#FFFFFF",
            font=("Roboto Bold", 54 * -1),
        )

        background = PhotoImage(file="assets/bg_client.png")
        label = Label(image=background)
        label.image = background
        self.canvas.create_image(200.0, 470.0, image=background)

    def create_inputs(self):
        # Nome
        self.canvas.create_text(
            100.0,
            183.0,
            anchor="nw",
            text="NOME:",
            fill="#FFFFFF",
            font=("Roboto", 20 * -1),
        )

        input_name = PhotoImage(file="assets/input.png")
        label = Label(image=input_name)
        label.image = input_name
        self.canvas.create_image(700.0, 200.0, image=input_name)
        self.entry_name = Entry(
            self.canvas,
            textvariable=self.name,
            bd=0,
            bg=COLORS["BLUE_BG"],
            fg=COLORS["WHITE"],
            highlightthickness=0,
        )
        self.entry_name.place(x=576.0, y=183.0, width=246.0, height=34.0)

        # CPF
        self.canvas.create_text(
            100.0,
            233.0,
            anchor="nw",
            text="CPF:",
            fill="#FFFFFF",
            font=("Roboto", 20 * -1),
        )

        input_cpf = PhotoImage(file="assets/input.png")
        label = Label(image=input_cpf)
        label.image = input_cpf
        self.canvas.create_image(700.0, 250.0, image=input_cpf)
        self.entry_cpf = Entry(
            self.canvas,
            textvariable=self.cpf,
            bd=0,
            bg=COLORS["BLUE_BG"],
            fg=COLORS["WHITE"],
            highlightthickness=0,
        )
        self.entry_cpf.place(x=576.0, y=233.0, width=246.0, height=34.0)

    def create_buttons(self):
        image_btn = PhotoImage(file="assets/btn_add.png")
        label = Label(image=image_btn)
        label.image = image_btn
        add_btn = Button(
            self.new_window,
            bg=COLORS["BLUE_BG"],
            image=image_btn,
            borderwidth=0,
            highlightthickness=0,
            command=lambda: self.add_client(self.name.get(), self.cpf.get()),
            relief="flat",
        )
        add_btn.place(x=650.0, y=400.0, width=180.0, height=56.0)
