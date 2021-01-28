use "gtk3"
use "gobject"
use "webkit2gtk"
use "lib:glib-2.0"
use "lib:webkit2gtk-4.0"

class val AppModel
  var builder: GtkBuilder
  var mainwin: GtkWindow
  var urientry: GtkEntry
  var webkit: WebKitWebView
  var gmain:   GMainContext

  new val create() =>
    // Start by building our XML definition into a Gtk Datastructure!
    builder = GtkBuilder.new_from_file("minimal-browser.glade")

    // Extract the Main Window, Address Bar, and Box (for inserting our browser widget)
    mainwin = GtkWindow.create_from_GtkBuilder(builder, "GtkWindow")
    urientry = GtkEntry.create_from_GtkBuilder(builder, "uri_entrybox")
    var hbox:     GtkBox    = GtkBox.create_from_GtkBuilder(builder, "hbox")

    // Create and pack the browser widget at the end
    webkit = WebKitWebView
    hbox.pack_end(webkit, true, true, U32(0))

    // Set default Main Window Size
    @gtk_window_set_default_size[None](mainwin.gtkwidget(), U32(800), U32(600))

    gmain = @g_main_context_default[GMainContext]()
