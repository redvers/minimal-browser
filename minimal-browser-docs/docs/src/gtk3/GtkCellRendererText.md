```````pony-full-source
/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkCellRendererText val"]
*/
use "../gobject"
class val GtkCellRendererText is GtkWidget
"""
A #GtkCellRendererText renders a given text in its cell, using the font, color and
style information provided by its properties. The text will be ellipsized if it is
too long and the #GtkCellRendererText:ellipsize property allows it.

If the #GtkCellRenderer:mode is %GTK_CELL_RENDERER_MODE_EDITABLE,
the #GtkCellRendererText allows to edit its text using an entry.
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
    widget = @gtk_cell_renderer_text_new[GObjectREF]() //


fun set_fixed_height_from_font(number_of_rows_pony: I32): None =>
"""
Sets the height of a renderer to explicitly be determined by the “font” and
“y_pad” property set on it.  Further changes in these properties do not
affect the height, so they must be accompanied by a subsequent call to this
function.  Using this function is unflexible, and should really only be used
if calculating the size of a cell is too slow (ie, a massive number of cells
displayed).  If @number_of_rows is -1, then the fixed height is unset, and
the height is determined by the properties again.
"""
  @gtk_cell_renderer_text_set_fixed_height_from_font[None](widget, number_of_rows_pony)


```````