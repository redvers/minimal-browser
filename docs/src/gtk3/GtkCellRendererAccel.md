```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkCellRendererAccel val"]
*/
use "../gobject"
class val GtkCellRendererAccel is GtkWidget
"""
#GtkCellRendererAccel displays a keyboard accelerator (i.e. a key
combination like `Control + a`). If the cell renderer is editable,
the accelerator can be changed by simply typing the new combination.

The #GtkCellRendererAccel cell renderer was added in GTK+ 2.10.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_cell_renderer_accel_new[GObjectREF]() //




```````