use "lib:webkit2gtk-4.0"
use "gtk3"
use "gobject"


class val WebKitWebView is GtkWidget
  var widget: GObjectREF val

  new val create() =>
    widget = @webkit_web_view_new[GObjectREF val]()

  fun gtkwidget(): GObjectREF val =>
    widget

  fun val load_uri(uri: String): None =>
    @webkit_web_view_load_uri[None](widget, uri.cstring())
