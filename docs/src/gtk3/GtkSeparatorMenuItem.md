```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkSeparatorMenuItem val"]
*/
use "../gobject"
class val GtkSeparatorMenuItem is GtkWidget
"""
The #GtkSeparatorMenuItem is a separator used to group
items within a menu. It displays a horizontal line with a shadow to
make it appear sunken into the interface.

# CSS nodes

GtkSeparatorMenuItem has a single CSS node with name separator.
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
    widget = @gtk_separator_menu_item_new[GObjectREF]() //




```````