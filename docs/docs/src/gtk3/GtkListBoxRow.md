```````pony-full-source
/*
   needs: ["None", "Bool", "GObjectREF", "GtkWidget val", "I32"]
provides: ["GtkListBoxRow val"]
*/
use "../gobject"
class val GtkListBoxRow is GtkWidget
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
    widget = @gtk_list_box_row_new[GObjectREF]() //


fun changed(): None =>
"""
Marks @row as changed, causing any state that depends on this
to be updated. This affects sorting, filtering and headers.

Note that calls to this method must be in sync with the data
used for the row functions. For instance, if the list is
mirroring some external data set, and *two* rows changed in the
external data set then when you call gtk_list_box_row_changed()
on the first row the sort function must only read the new data
for the first of the two changed rows, otherwise the resorting
of the rows will be wrong.

This generally means that if you don’t fully control the data
model you have to duplicate the data that affects the listbox
row functions into the row widgets themselves. Another alternative
is to call gtk_list_box_invalidate_sort() on any model change,
but that is more expensive.
"""
  @gtk_list_box_row_changed[None](widget)

fun get_activatable(): Bool =>
"""
Gets the value of the #GtkListBoxRow:activatable property
for this row.
"""
  @gtk_list_box_row_get_activatable[Bool](widget)

/* Needs conversion code 
  fun get_header(): GtkWidget val =>
    @gtk_list_box_row_get_header[GObjectREF](widget)
*/

fun get_index(): I32 =>
"""
Gets the current index of the @row in its #GtkListBox container.
"""
  @gtk_list_box_row_get_index[I32](widget)

fun get_selectable(): Bool =>
"""
Gets the value of the #GtkListBoxRow:selectable property
for this row.
"""
  @gtk_list_box_row_get_selectable[Bool](widget)

fun is_selected(): Bool =>
"""
Returns whether the child is currently selected in its
#GtkListBox container.
"""
  @gtk_list_box_row_is_selected[Bool](widget)

fun set_activatable(activatable_pony: Bool): None =>
"""
Set the #GtkListBoxRow:activatable property for this row.
"""
  @gtk_list_box_row_set_activatable[None](widget, activatable_pony)

fun set_header(header_pony: GtkWidget val): None =>
"""
Sets the current header of the @row. This is only allowed to be called
from a #GtkListBoxUpdateHeaderFunc. It will replace any existing
header in the row, and be shown in front of the row in the listbox.
"""
  @gtk_list_box_row_set_header[None](widget, header_pony.gtkwidget())

fun set_selectable(selectable_pony: Bool): None =>
"""
Set the #GtkListBoxRow:selectable property for this row.
"""
  @gtk_list_box_row_set_selectable[None](widget, selectable_pony)


```````