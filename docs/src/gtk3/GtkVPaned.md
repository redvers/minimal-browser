```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkVPaned val"]
*/
use "../gobject"
class val GtkVPaned is GtkWidget
"""
The VPaned widget is a container widget with two
children arranged vertically. The division between
the two panes is adjustable by the user by dragging
a handle. See #GtkPaned for details.

GtkVPaned has been deprecated, use #GtkPaned instead.
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
    widget = @gtk_vpaned_new[GObjectREF]() //




```````