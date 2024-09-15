from tkinter import *
from tkinter import ttk
from add_dentist import AddDentist
from schedule_view import ScheduleView
from constants import *


class DentistArea:

    def __init__(self, root, dentists):
        self.dentists = dentists
        self.root = root
        self.new_window = Toplevel(root)

        self.new_window.title("Reference Smile - Área do Dentista")
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

    def add_dentist(self):
        dentists = AddDentist(self.root, self.dentists)
        self.dentists = dentists.dentists

    def check_appointments(self):
        ScheduleView(self.root, self.dentists)

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

        self.create_buttons()

        self.canvas.create_text(
            200.0,
            40.0,
            anchor="nw",
            text="ÁREA DO DENTISTA",
            fill="#FFFFFF",
            font=("Roboto Bold", 54 * -1),
        )

        background = PhotoImage(file="assets/bg_dentist.png")
        label = Label(image=background)
        label.image = background
        self.canvas.create_image(600.0, 360.0, image=background)

    def create_buttons(self):
        init_image_btn = PhotoImage(file="assets/btn_add_dentist.png")
        label = Label(image=init_image_btn)
        label.image = init_image_btn
        init_btn = Button(
            self.new_window,
            bg=COLORS["BLUE_BG"],
            image=init_image_btn,
            borderwidth=0,
            highlightthickness=0,
            command=self.add_dentist,
            relief="flat",
        )
        init_btn.place(x=80.0, y=250.0, width=211.0, height=52.0)

        init_image_btn = PhotoImage(file="assets/btn_check_appointments.png")
        label = Label(image=init_image_btn)
        label.image = init_image_btn
        init_btn = Button(
            self.new_window,
            bg=COLORS["BLUE_BG"],
            image=init_image_btn,
            borderwidth=0,
            highlightthickness=0,
            command=self.check_appointments,
            relief="flat",
        )
        init_btn.place(x=80.0, y=320.0, width=211.0, height=50.0)

        destroy_image_btn = PhotoImage(file="assets/btn_back.png")
        label = Label(image=destroy_image_btn)
        label.image = destroy_image_btn
        destroy_btn = Button(
            self.new_window,
            bg=COLORS["BLUE_BG"],
            image=destroy_image_btn,
            borderwidth=0,
            highlightthickness=0,
            command=self.new_window.destroy,
            relief="flat",
        )
        destroy_btn.place(x=80.0, y=490.0, width=50.0, height=51.0)
