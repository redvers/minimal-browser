```````pony-full-source
/*
   needs: ["I32", "None", "GObjectREF"]
provides: ["GtkTreeSelection val"]
*/
use "../gobject"
class val GtkTreeSelection is GtkWidget
"""
The #GtkTreeSelection object is a helper object to manage the selection
for a #GtkTreeView widget.  The #GtkTreeSelection object is
automatically created when a new #GtkTreeView widget is created, and
cannot exist independently of this widget.  The primary reason the
#GtkTreeSelection objects exists is for cleanliness of code and API.
That is, there is no conceptual reason all these functions could not be
methods on the #GtkTreeView widget instead of a separate function.

The #GtkTreeSelection object is gotten from a #GtkTreeView by calling
gtk_tree_view_get_selection().  It can be manipulated to check the
selection status of the tree, as well as select and deselect individual
rows.  Selection is done completely view side.  As a result, multiple
views of the same model can have completely different selections.
Additionally, you cannot change the selection of a row on the model that
is not currently displayed by the view without expanding its parents
first.

One of the important things to remember when monitoring the selection of
a view is that the #GtkTreeSelection::changed signal is mostly a hint.
That is, it may only emit one signal when a range of rows is selected.
Additionally, it may on occasion emit a #GtkTreeSelection::changed signal
when nothing has happened (mostly as a result of programmers calling
select_row on an already selected row).
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




fun count_selected_rows(): I32 =>
"""
Returns the number of rows that have been selected in @tree.
"""
  @gtk_tree_selection_count_selected_rows[I32](widget)

/* get_mode unavailable due to return typing issues
{:argctype, "GtkSelectionMode"}
{:argname, "rv"}
{:argtype, "SelectionMode"}
{:paramtype, :param}
{:txo, "none"} */

/* get_select_function unavailable due to return typing issues
{:argctype, "GtkTreeSelectionFunc"}
{:argname, "rv"}
{:argtype, "TreeSelectionFunc"}
{:paramtype, :param}
{:txo, "notpresent"} */

/* get_selected unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModel**", argname: "model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* get_selected_rows unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"} */

/* get_tree_view unavailable due to return typing issues
{:argctype, "GtkTreeView*"}
{:argname, "rv"}
{:argtype, "TreeView"}
{:paramtype, :param}
{:txo, "none"} */

/* get_user_data unavailable due to return typing issues
{:argctype, "gpointer"}
{:argname, "rv"}
{:argtype, "gpointer"}
{:paramtype, :param}
{:txo, "none"} */

/* iter_is_selected unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* path_is_selected unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

fun select_all(): None =>
"""
Selects all the nodes. @selection must be set to #GTK_SELECTION_MULTIPLE
mode.
"""
  @gtk_tree_selection_select_all[None](widget)

/* select_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* select_path unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

/* select_range unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "start_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "end_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

/* selected_foreach unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeSelectionForeachFunc", argname: "func", argtype: "TreeSelectionForeachFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* set_mode unavailable due to typing issues
 {:doh, %{argctype: "GtkSelectionMode", argname: "gtype", argtype: "SelectionMode", paramtype: :param, txo: "none"}}
*/

/* set_select_function unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeSelectionFunc", argname: "func", argtype: "TreeSelectionFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun unselect_all(): None =>
"""
Unselects all the nodes.
"""
  @gtk_tree_selection_unselect_all[None](widget)

/* unselect_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* unselect_path unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

/* unselect_range unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "start_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "end_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/


```````