from tkinter import *
from tkinter import ttk
from datetime import datetime
from constants import *

class ScheduleView:

    def __init__(self, root, dentists):
        self.dentists = dentists
        self.new_window = Toplevel(root)
        
        self.new_window.title("Reference Smile - Verificar consultas")
        self.new_window.geometry(f"{WIDTH}x{HEIGHT}")
        self.new_window.resizable(False, False)

        self.frame = ttk.Frame(self.new_window, padding="3 3 12 12")
        self.frame.grid(row=0, column=0, sticky=(N, W, E, S))

        self.dentist_var = StringVar()
        self.appointament_day = StringVar()
        self.dentist_names = [dentist.get_name_cro() for dentist in self.dentists]

        self.create_screen()
        self.create_inputs()

        self.new_window.transient(root)
        self.new_window.grab_set()
        root.wait_window(self.new_window)

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
            text = "VERIFICAR CONSULTAS",
            fill = "#FFFFFF",
            font = ("Roboto Bold", 54 * -1)
        )

        background = PhotoImage(file = "assets/bg_add_dentist.png")
        label = Label(image=background)
        label.image = background
        self.canvas.create_image(
            320.0,
            470.0,
            image = background
        )

    def create_inputs(self):
        self.canvas.create_text(
            100.0,
            183.0,
            anchor = "nw",
            text = "DENTISTA:",
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
            self.dentist_var, 
            *self.dentist_names,
            style="BW.TMenubutton"
        )
        self.entry_dentist.place(
            x = 576.0,
            y = 183.0,
            width = 246.0,
            height = 34.0
        )

        # Dia da consulta
        self.canvas.create_text(
            100.0,
            233.0,
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
            250.0,
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
            y = 233.0,
            width = 246.0,
            height = 34.0
        )

        self.canvas.create_text(
            100.0,
            283.0,
            anchor = "nw",
            text = "CONSULTAS:",
            fill = "#FFFFFF",
            font = ("Roboto", 20 * -1)
        )
        
        self.canvas.create_rectangle(
            572.0,
            283.0,
            828.0,
            390.0 + 5 * 27,
            fill = COLORS["WHITE"]
        )
        self.dentist_schedule = Listbox(
            self.canvas, 
            borderwidth = 0, 
            height = 13, 
            width = 31,
            bg=COLORS["BLUE_BG"],  
            fg=COLORS["WHITE"],
        )
        self.dentist_schedule.place(x = 574.0, y = 285.0)
    
        def on_day_change(event):
            self.dentist_schedule.delete(0, END)
            dentist_value = self.dentist_var.get()
            dentist_name, dentist_cro = dentist_value.split(' - ')
            dentist = next((dentist for dentist in self.dentists if dentist.get_name() == dentist_name and dentist.get_cro() == dentist_cro), None)
            day = datetime.strptime(self.appointament_day.get(), "%Y-%m-%d")
            if dentist:
                for idx, schedule in enumerate(dentist.get_schedule(day)):
                    self.dentist_schedule.insert(idx+1, f"{schedule[0]}:00 - {schedule[1]}:00 - {schedule[2].get_name()}" if len(schedule) == 3 else schedule)
            else:
                self.dentist_schedule.delete(0, END)
        
        self.entry_appointment_day.bind('<Return>', on_day_change)

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