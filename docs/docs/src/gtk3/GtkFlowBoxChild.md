```````pony-full-source
/*
   needs: ["None", "I32", "Bool", "GObjectREF"]
provides: ["GtkFlowBoxChild val"]
*/
use "../gobject"
class val GtkFlowBoxChild is GtkWidget
"""
No documentation provided
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
    widget = @gtk_flow_box_child_new[GObjectREF]() //


fun changed(): None =>
"""
Marks @child as changed, causing any state that depends on this
to be updated. This affects sorting and filtering.

Note that calls to this method must be in sync with the data
used for the sorting and filtering functions. For instance, if
the list is mirroring some external data set, and *two* children
changed in the external data set when you call
gtk_flow_box_child_changed() on the first child, the sort function
must only read the new data for the first of the two changed
children, otherwise the resorting of the children will be wrong.

This generally means that if you don’t fully control the data
model, you have to duplicate the data that affects the sorting
and filtering functions into the widgets themselves. Another
alternative is to call gtk_flow_box_invalidate_sort() on any
model change, but that is more expensive.
"""
  @gtk_flow_box_child_changed[None](widget)

fun get_index(): I32 =>
"""
Gets the current index of the @child in its #GtkFlowBox container.
"""
  @gtk_flow_box_child_get_index[I32](widget)

fun is_selected(): Bool =>
"""
Returns whether the @child is currently selected in its
#GtkFlowBox container.
"""
  @gtk_flow_box_child_is_selected[Bool](widget)


```````