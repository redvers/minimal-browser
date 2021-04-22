use "gtk3"
use "gobject"
use "webkit2gtk"
use "lib:glib-2.0"
use "lib:webkit2gtk-4.0"

class val AppModel
  """
  # AppModel

  The purpose of this class is to be a single structure to contain all of
  the data that the application needs to run.

  The Class is a val because it contains ONLY references to Gtk objects
  which "should never change"™

  Classes in Pony are **Pointers** so can be passed cleanly in and out of
  C functions.  This is how we pass multiple arguments around in callbacks.

  One structure to rule them all.
  """

  var builder: GtkBuilder
  var mainwin: GtkWindow
  var urientry: GtkEntry
  var webkit: WebKitWebView
  var gmain:   GMainContext

  new val create() =>
    """
    The Model creates the Application's (Read Only) global state
    which includes all of the Gtk widget data.

    This is how we build our UI:

    1, Read our Glade XML file which contains our UI definition
    and generate all the widgets in memory.

    ```
    builder = GtkBuilder.new_from_file("minimal-browser.glade")
    ```
    (The other way to do this is by creating and arranging widgets
    by hand - we chose the easier way for this example).

    2, Create our GtkWindow instance from the GtkBuilder data.
    ```
    mainwin = GtkWindow.create_from_GtkBuilder(builder, "GtkWindow")
    ```

    3, Create our GtkEntry instance from the GtkBuilder data.
    ```
    urientry = GtkEntry.create_from_GtkBuilder(builder, "uri_entrybox")
    ```

    4, Create our GtkBox instance from the GtkBuilder data.
    ```
    var hbox:     GtkBox    = GtkBox.create_from_GtkBuilder(builder, "hbox")
    ```
    (We left an intentional gap in this GtkBox so we can place
    the webkit2 widget in place)

    5, Create the WebKit2 Widget and pack it into the GtkBox
    ```
    webkit = WebKitWebView
    hbox.pack_end(webkit, true, true, U32(0))
    ```

    6, Lastly, we capture the default GMainContext.  This is a tag which
    represents the main Gtk thread so we can use it for future function
    dispatch.
    """
    // Start by building our XML definition into a Gtk Datastructure!
    builder = GtkBuilder.new_from_file("minimal-browser.glade")

    // Extract the Main Window, Address Bar, and Box (for inserting our browser widget)
             mainwin = GtkWindow.create_from_GtkBuilder(builder, "GtkWindow")
            urientry = GtkEntry.create_from_GtkBuilder(builder, "uri_entrybox")
    var hbox: GtkBox = GtkBox.create_from_GtkBuilder(builder, "hbox")

    // Create and pack the browser widget at the end
    webkit = WebKitWebView
    hbox.pack_end(webkit, true, true, U32(0))

    // Set default Main Window Size
    @gtk_window_set_default_size[None](mainwin.gtkwidget(), U32(800), U32(600))

    gmain = @g_main_context_default[GMainContext]()
