```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkCellRendererProgress val"]
*/
use "../gobject"
class val GtkCellRendererProgress is GtkWidget
"""
#GtkCellRendererProgress renders a numeric value as a progress par in a cell.
Additionally, it can display a text on top of the progress bar.

The #GtkCellRendererProgress cell renderer was added in GTK+ 2.6.
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
    widget = @gtk_cell_renderer_progress_new[GObjectREF]() //




```````