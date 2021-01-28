```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkVSeparator val"]
*/
use "../gobject"
class val GtkVSeparator is GtkWidget
"""
The #GtkVSeparator widget is a vertical separator, used to group the
widgets within a window. It displays a vertical line with a shadow to
make it appear sunken into the interface.

GtkVSeparator has been deprecated, use #GtkSeparator instead.
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
    widget = @gtk_vseparator_new[GObjectREF]() //




```````