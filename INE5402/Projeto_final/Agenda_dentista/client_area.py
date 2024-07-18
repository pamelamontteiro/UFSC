from tkinter import *
from tkinter import ttk
from add_client import AddClient
from schedule_appointament import ScheduleAppointament
from constants import *

class ClientArea:

    def __init__(self, root, clients, dentists):
        self.clients = clients
        self.dentists = dentists
        self.root = root
        self.new_window = Toplevel(root)
        
        self.new_window.title("Reference Smile - Área do Cliente")
        self.new_window.geometry(f"{WIDTH}x{HEIGHT}")
        self.new_window.resizable(False, False)

        mainframe = ttk.Frame(self.new_window, padding="3 3 12 12")
        mainframe.grid(column=0, row=0, sticky=(N, W, E, S))
        self.new_window.columnconfigure(0, weight=1)
        self.new_window.rowconfigure(0, weight=1)

        self.create_screen()

        for child in mainframe.winfo_children():
            child.grid_configure(padx=5, pady=5)

        self.new_window.transient(root)
        self.new_window.grab_set()
        root.wait_window(self.new_window)
    
    def add_client(self):
        clients = AddClient(self.root, self.clients)
        self.clients = clients.clients

    def schedule_appointment(self):
        schedule_appointment = ScheduleAppointament(self.root, self.dentists, self.clients)
        self.dentists = schedule_appointment.dentists

    def create_screen(self):
        self.canvas = Canvas(
            self.new_window,
            bg = COLORS["BLUE_BG"],
            height=HEIGHT,
            width=WIDTH,
            bd=0,
            highlightthickness=0,
            relief="ridge"
        )
        self.canvas.grid(column=0, row=0, sticky=(N, W, E, S))

        self.create_buttons()

        self.canvas.create_text(
            200.0,
            40.0,
            anchor = "nw",
            text = "ÁREA DO CLIENTE",
            fill = "#FFFFFF",
            font = ("Roboto Bold", 54 * -1)
        )

        background = PhotoImage(file = "assets/bg_client_tooth.png")
        label = Label(image=background)
        label.image = background
        self.canvas.create_image(
            600.0,
            360.0,
            image = background
        )

    def create_buttons(self):
        init_image_btn = PhotoImage(file = "assets/btn_add_client.png")
        label = Label(image = init_image_btn)
        label.image = init_image_btn
        init_btn = Button(
            self.new_window,
            bg=COLORS["BLUE_BG"],
            image = init_image_btn,
            borderwidth = 0,
            highlightthickness = 0,
            command = self.add_client,
            relief = "flat",
        )
        init_btn.place(
            x=80.0,
            y=250.0,
            width=211.0,
            height=50.0
        )

        init_image_btn = PhotoImage(file = "assets/btn_schedule_appointment.png")
        label = Label(image = init_image_btn)
        label.image = init_image_btn
        init_btn = Button(
            self.new_window,
            bg=COLORS["BLUE_BG"],
            image = init_image_btn,
            borderwidth = 0,
            highlightthickness = 0,
            command = self.schedule_appointment,
            relief = "flat",
        )
        init_btn.place(
            x=80.0,
            y=320.0,
            width=211.0,
            height=50.0
        )

        destroy_image_btn = PhotoImage(file = "assets/btn_back.png")
        label = Label(image = destroy_image_btn)
        label.image = destroy_image_btn
        destroy_btn = Button(
            self.new_window,
            bg=COLORS["BLUE_BG"],
            image = destroy_image_btn,
            borderwidth = 0,
            highlightthickness = 0,
            command = self.new_window.destroy,
            relief = "flat",
        )
        destroy_btn.place(
            x=80.0,
            y=490.0,
            width=50.0,
            height=51.0
        )