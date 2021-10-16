import gi
gi.require_version("Gtk", "3.0")

from gi.repository import Gtk

class MainWindow(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="desktop apps")
        self.button = Gtk.Button(label="click here!")
        self.button.connect("clicked", self.button_clicked)
        self.add(self.button)

    # user clicks button
    def button_clicked(self, widget):
        print("lovely")


    def main(self):
        self.connect("delete-event", Gtk.main_quit)
        self.show_all()
        Gtk.main()

window = MainWindow()
window.main()
