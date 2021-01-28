```````pony-full-source
/*
   needs: ["None", "Bool", "GtkWidget val", "I32", "GObjectREF"]
provides: ["GtkListBox val"]
*/
use "../gobject"
class val GtkListBox is GtkWidget
"""
A GtkListBox is a vertical container that contains GtkListBoxRow
children. These rows can by dynamically sorted and filtered, and
headers can be added dynamically depending on the row content.
It also allows keyboard and mouse navigation and selection like
a typical list.

Using GtkListBox is often an alternative to #GtkTreeView, especially
when the list contents has a more complicated layout than what is allowed
by a #GtkCellRenderer, or when the contents is interactive (i.e. has a
button in it).

Although a #GtkListBox must have only #GtkListBoxRow children you can
add any kind of widget to it via gtk_container_add(), and a #GtkListBoxRow
widget will automatically be inserted between the list and the widget.

#GtkListBoxRows can be marked as activatable or selectable. If a row
is activatable, #GtkListBox::row-activated will be emitted for it when
the user tries to activate it. If it is selectable, the row will be marked
as selected when the user tries to select it.

The GtkListBox widget was added in GTK+ 3.10.

# GtkListBox as GtkBuildable

The GtkListBox implementation of the #GtkBuildable interface supports
setting a child as the placeholder by specifying “placeholder” as the “type”
attribute of a <child> element. See gtk_list_box_set_placeholder() for info.

# CSS nodes

|[<!-- language="plain" -->
list
╰── row[.activatable]
]|

GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
a single CSS node named row. The row nodes get the .activatable
style class added when appropriate.
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
    widget = @gtk_list_box_new[GObjectREF]() //


/* bind_model unavailable due to typing issues
 {:doh, %{argctype: "GListModel*", argname: "model", argtype: "Gio.ListModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkListBoxCreateWidgetFunc", argname: "create_widget_func", argtype: "ListBoxCreateWidgetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "user_data_free_func", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* drag_highlight_row unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/

fun drag_unhighlight_row(): None =>
"""
If a row has previously been highlighted via gtk_list_box_drag_highlight_row()
it will have the highlight removed.
"""
  @gtk_list_box_drag_unhighlight_row[None](widget)

fun get_activate_on_single_click(): Bool =>
"""
Returns whether rows activate on single clicks.
"""
  @gtk_list_box_get_activate_on_single_click[Bool](widget)

/* get_adjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_row_at_index unavailable due to return typing issues
{:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"} */

/* get_row_at_y unavailable due to return typing issues
{:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"} */

/* get_selected_row unavailable due to return typing issues
{:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"} */

/* get_selected_rows unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* get_selection_mode unavailable due to return typing issues
{:argctype, "GtkSelectionMode"}
{:argname, "rv"}
{:argtype, "SelectionMode"}
{:paramtype, :param}
{:txo, "none"} */

fun insert(child_pony: GtkWidget val, position_pony: I32): None =>
"""
Insert the @child into the @box at @position. If a sort function is
set, the widget will actually be inserted at the calculated position and
this function has the same effect of gtk_container_add().

If @position is -1, or larger than the total number of items in the
@box, then the @child will be appended to the end.
"""
  @gtk_list_box_insert[None](widget, child_pony.gtkwidget(), position_pony)

fun invalidate_filter(): None =>
"""
Update the filtering for all rows. Call this when result
of the filter function on the @box is changed due
to an external factor. For instance, this would be used
if the filter function just looked for a specific search
string and the entry with the search string has changed.
"""
  @gtk_list_box_invalidate_filter[None](widget)

fun invalidate_headers(): None =>
"""
Update the separators for all rows. Call this when result
of the header function on the @box is changed due
to an external factor.
"""
  @gtk_list_box_invalidate_headers[None](widget)

fun invalidate_sort(): None =>
"""
Update the sorting for all rows. Call this when result
of the sort function on the @box is changed due
to an external factor.
"""
  @gtk_list_box_invalidate_sort[None](widget)

fun prepend(child_pony: GtkWidget val): None =>
"""
Prepend a widget to the list. If a sort function is set, the widget will
actually be inserted at the calculated position and this function has the
same effect of gtk_container_add().
"""
  @gtk_list_box_prepend[None](widget, child_pony.gtkwidget())

fun select_all(): None =>
"""
Select all children of @box, if the selection mode allows it.
"""
  @gtk_list_box_select_all[None](widget)

/* select_row unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/

/* selected_foreach unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxForeachFunc", argname: "func", argtype: "ListBoxForeachFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

fun set_activate_on_single_click(single_pony: Bool): None =>
"""
If @single is %TRUE, rows will be activated when you click on them,
otherwise you need to double-click.
"""
  @gtk_list_box_set_activate_on_single_click[None](widget, single_pony)

/* set_adjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

/* set_filter_func unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxFilterFunc", argname: "filter_func", argtype: "ListBoxFilterFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_header_func unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxUpdateHeaderFunc", argname: "update_header", argtype: "ListBoxUpdateHeaderFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_placeholder(placeholder_pony: GtkWidget val): None =>
"""
Sets the placeholder widget that is shown in the list when
it doesn't display any visible children.
"""
  @gtk_list_box_set_placeholder[None](widget, placeholder_pony.gtkwidget())

/* set_selection_mode unavailable due to typing issues
 {:doh, %{argctype: "GtkSelectionMode", argname: "mode", argtype: "SelectionMode", paramtype: :param, txo: "none"}}
*/

/* set_sort_func unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxSortFunc", argname: "sort_func", argtype: "ListBoxSortFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun unselect_all(): None =>
"""
Unselect all children of @box, if the selection mode allows it.
"""
  @gtk_list_box_unselect_all[None](widget)

/* unselect_row unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/


```````