```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkColorChooserWidget val"]
*/
use "../gobject"
class val GtkColorChooserWidget is GtkWidget
"""
The #GtkColorChooserWidget widget lets the user select a
color. By default, the chooser presents a predefined palette
of colors, plus a small number of settable custom colors.
It is also possible to select a different color with the
single-color editor. To enter the single-color editing mode,
use the context menu of any color of the palette, or use the
'+' button to add a new custom color.

The chooser automatically remembers the last selection, as well
as custom colors.

To change the initially selected color, use gtk_color_chooser_set_rgba().
To get the selected color use gtk_color_chooser_get_rgba().

The #GtkColorChooserWidget is used in the #GtkColorChooserDialog
to provide a dialog for selecting colors.

# CSS names

GtkColorChooserWidget has a single CSS node with name colorchooser.
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
    widget = @gtk_color_chooser_widget_new[GObjectREF]() //




```````