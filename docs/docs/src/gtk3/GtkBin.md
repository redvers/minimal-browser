```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val"]
provides: ["GtkBin val"]
*/
use "../gobject"
class val GtkBin is GtkWidget
"""
The #GtkBin widget is a container with just one child.
It is not very useful itself, but it is useful for deriving subclasses,
since it provides common code needed for handling a single child widget.

Many GTK+ widgets are subclasses of #GtkBin, including #GtkWindow,
#GtkButton, #GtkFrame, #GtkHandleBox or #GtkScrolledWindow.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* Needs conversion code 
  fun get_child(): GtkWidget val =>
    @gtk_bin_get_child[GObjectREF](widget)
*/


```````