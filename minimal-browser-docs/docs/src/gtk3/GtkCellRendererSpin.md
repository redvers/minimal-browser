```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkCellRendererSpin val"]
*/
use "../gobject"
class val GtkCellRendererSpin is GtkWidget
"""
#GtkCellRendererSpin renders text in a cell like #GtkCellRendererText from
which it is derived. But while #GtkCellRendererText offers a simple entry to
edit the text, #GtkCellRendererSpin offers a #GtkSpinButton widget. Of course,
that means that the text has to be parseable as a floating point number.

The range of the spinbutton is taken from the adjustment property of the
cell renderer, which can be set explicitly or mapped to a column in the
tree model, like all properties of cell renders. #GtkCellRendererSpin
also has properties for the #GtkCellRendererSpin:climb-rate and the number
of #GtkCellRendererSpin:digits to display. Other #GtkSpinButton properties
can be set in a handler for the #GtkCellRenderer::editing-started signal.

The #GtkCellRendererSpin cell renderer was added in GTK+ 2.10.
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
    widget = @gtk_cell_renderer_spin_new[GObjectREF]() //




```````