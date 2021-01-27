use "gtk3"
use "gobject"
use "webkit2gtk"
use "debug"

use "lib:webkit2gtk-4.0"

actor Main
  new create(env: Env) =>
    Gtk.init()

    // Start by building our XML definition into a Gtk Datastructure!
    var builder:  GtkBuilder = GtkBuilder.new_from_file("minimal-browser.glade")

    // Extract the Main Window, Address Bar, and Box (for inserting our browser widget)
    var mainwin:  GtkWindow = GtkWindow.create_from_GtkBuilder(builder, "GtkWindow")
    var urientry: GtkEntry  = GtkEntry.create_from_GtkBuilder(builder, "uri_entrybox")
    var hbox:     GtkBox    = GtkBox.create_from_GtkBuilder(builder, "hbox")

    // Create and pack the browser widget at the end
    var webkit: WebKitWebView = WebKitWebView
    hbox.pack_end(webkit, true, true, U32(0))

    // Set default Main Window Size
    @gtk_window_set_default_size[None](mainwin.gtkwidget(), U32(800), U32(600))





    var browserwiring: BrowserWiring = BrowserWiring(builder, mainwin, urientry, webkit)
    urientry.signal_connect[BrowserWiring]("activate", BrowserWiring~uri_activate(), browserwiring)
    browserwiring.load_uri("https://redvers.github.io/pony-gtk3")
    browserwiring.activate_uri()

    webkit.load_uri("https://www.google.com")

    mainwin.show_all()
    Gtk.main()



  fun @runtime_override_defaults(rto: RuntimeOptions) =>
    rto.ponyminthreads = U32(4)



actor BrowserWiring
  var builder: GtkBuilder
  var mainwin: GtkWindow
  var urientry: GtkEntry
  var webkit: WebKitWebView

  new create(builder': GtkBuilder, mainwin': GtkWindow, urientry': GtkEntry, webkit': WebKitWebView) =>
    builder  = builder'
    mainwin  = mainwin'
    urientry = urientry'
    webkit   = webkit'

  be load_uri(uri: String) =>
    @gtk_entry_set_text[None](urientry.gtkwidget(), uri.cstring())

  be activate_uri() =>
    var uri: String = urientry.get_text()
    Debug.out(uri)
    webkit.load_uri("https://ponylang.io")

  fun @uri_activate(urientryref: GObjectREF, wiringtag: BrowserWiring) =>
    wiringtag.activate_uri()




/*
 *
 *void  webkit_window_properties_get_geometry ()
 gboolean   webkit_window_properties_get_toolbar_visible ()
 gboolean   webkit_window_properties_get_statusbar_visible ()
 gboolean   webkit_window_properties_get_scrollbars_visible ()
 gboolean   webkit_window_properties_get_menubar_visible ()
 gboolean   webkit_window_properties_get_locationbar_visible ()
 gboolean   webkit_window_properties_get_resizable ()
 gboolean   webkit_window_properties_get_fullscreen ()
 *
 *
 *
 *
 *
    webkit_web_view_can_go_back ()

    webkit_web_view_go_back ()webkit_web_view_can_go_forward ()webkit_web_view_go_forward ()

    webkit_web_view_get_title ()

    webkit_web_view_reload ()

    webkit_web_view_reload_bypass_cache ()webkit_web_view_stop_loading ()

    webkit_web_view_is_loading ()webkit_web_view_get_estimated_load_progress ()webkit_web_view_get_uri ()webkit_web_view_can_execute_editing_command ()

*/


