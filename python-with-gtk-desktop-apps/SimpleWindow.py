import gi
gi.require_version("Gtk", "3.0")

from gi.repository import Gtk

window = Gtk.Window(
    title="Hello World",
    default_height=500,
    default_width = 900
)
window.show()
window.connect("destroy", Gtk.main_quit)
Gtk.main()
