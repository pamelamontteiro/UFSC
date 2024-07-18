from tkinter import *
from tkinter import ttk
from client_area import ClientArea
from dentist_area import DentistArea
from constants import *

class InitialScreen:

    def __init__(self, root):
        self.root = root
        self.dentists = []
        self.clients = []

        self.root.title("Reference Smile - Sistema de Agendamento de consultas dentárias")
        self.root.geometry(f"{WIDTH}x{HEIGHT}")
        self.root.resizable(False, False)

    
        # Frame principal com conteúdo
        mainframe = ttk.Frame(self.root, padding="3 3 12 12")
        mainframe.grid(column=0, row=0, sticky=(N, W, E, S))
        self.root.columnconfigure(0, weight=1)
        self.root.rowconfigure(0, weight=1)

        self.create_screen()
        self.create_buttons()

        for child in mainframe.winfo_children():
            child.grid_configure(padx=5, pady=5)

        self.root.protocol("WM_DELETE_WINDOW", self.on_close)

    def dentist_area(self):
        dentists = DentistArea(self.root, self.dentists)
        self.dentists = dentists.dentists

    def client_area(self):
        clients = ClientArea(self.root, self.clients, self.dentists)
        self.clients = clients.clients

    def on_close(self):
        self.root.destroy()

    def create_screen(self):
        # O layout da tela é criado com a classe Canvas
        # Essa classe é utilizada pois permite que possamos adicionar imagens e textos do jeito que queremos e na posição que imaginamos
        self.canvas = Canvas(
            self.root,
            bg = COLORS["BLUE_BG"],
            height = HEIGHT,
            width = WIDTH,
            bd = 0,
            highlightthickness = 0,
            relief = "ridge"
        )
        self.canvas.grid(column=0, row=0, sticky=(N, W, E, S))

        # Função do Canvas que cria um texto na tela
        self.canvas.create_text(
            200.0,
            40.0,
            anchor = "nw",
            text = "REFERENCE SMILE",
            fill = "#FFFFFF",
            font = ("Roboto Bold", 54 * -1)
        )

        self.canvas.create_text(
            10.0,
            560.0,
            anchor = "nw",
            text = "A equipe da Reference Smile está pronta para atendê-lo e proporcionar um sorriso radiante.",
            fill = "#FFFFFF",
            font = ("Roboto", 14 * -1)
        )

        # Os trechos abaixos adicionam imagens de fundos na tela utilizando o Canvas
        bg_brush = PhotoImage(file = "assets/bg_brush.png")
        label = Label(image=bg_brush)
        label.image = bg_brush
        self.canvas.create_image(
            90.0,
            110.0,
            image = bg_brush
        )

        background = PhotoImage(file = "assets/bg_tooth.png")
        label = Label(image=background)
        label.image = background
        self.canvas.create_image(
            600.0,
            360.0,
            image = background
        )

    # Esta função adiciona botões na tela que vão ter imagens do Canvas por cima 
    # para deixar do jeito que está no protótipo
    def create_buttons(self):
        init_image_btn = PhotoImage(file = "assets/btn_dentist_area.png")
        label = Label(image = init_image_btn)
        label.image = init_image_btn
        init_btn = Button(
            self.root,
            bg=COLORS["BLUE_BG"],
            image = init_image_btn,
            borderwidth = 0,
            highlightthickness = 0,
            command = self.dentist_area,
            relief = "flat",
        )
        init_btn.place(
            x=80.0,
            y=250.0,
            width=211.0,
            height=52.0
        )

        init_image_btn = PhotoImage(file = "assets/btn_client_area.png")
        label = Label(image = init_image_btn)
        label.image = init_image_btn
        init_btn = Button(
            self.root,
            bg=COLORS["BLUE_BG"],
            image = init_image_btn,
            borderwidth = 0,
            highlightthickness = 0,
            command = self.client_area,
            relief = "flat",
        )
        init_btn.place( # Posiciona o botão na tela
            x=80.0,
            y=320.0,
            width=211.0,
            height=50.0
        )