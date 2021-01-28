```````pony-full-source
use "../gobject"
trait GtkContainer is GtkWidget
  fun gtkwidget(): GObjectREF
  fun add(childwidget: GtkWidget val): None =>
    @gtk_container_add[None](gtkwidget(), childwidget.gtkwidget())

```````