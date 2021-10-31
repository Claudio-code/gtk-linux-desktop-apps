public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.yourusername.yourrepositoryname",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }

    protected override void activate () {
        var main_window = this.create_application_window();
        var button_hello = this.button_hello ();

        main_window.add (button_hello);
        main_window.show_all ();
    }

    private Gtk.ApplicationWindow create_application_window () {
        return new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello word"
        };
    }

    private Gtk.Button button_hello () {
        var button_hello = new Gtk.Button.with_label ("click me!!") {
            margin = 12
        };
        button_hello.clicked.connect (() => {
            button_hello.label = "Hello World!!";
            button_hello.sensitive = false;
        });

        return button_hello;
    }
}
