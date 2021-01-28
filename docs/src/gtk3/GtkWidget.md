```````pony-full-source
use "../gobject"
trait GtkWidget
  fun gtkwidget(): GObjectREF
  fun show_all(): None =>
    @gtk_widget_show_all[None](gtkwidget())

  fun destroy(): None =>
    @gtk_widget_destroy[None](gtkwidget())

  fun signal_connect[V: Any #share](detailed_signal: String, c_handler: @{(GObjectREF, V)}, data: V): U64 =>
    GObject.signal_connect[V](gtkwidget(), detailed_signal, c_handler, data)



```````