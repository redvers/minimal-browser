```````pony-full-source
/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkTreeModelFilter val"]
*/
use "../gobject"
class val GtkTreeModelFilter is GtkWidget
"""
A #GtkTreeModelFilter is a tree model which wraps another tree model,
and can do the following things:

- Filter specific rows, based on data from a “visible column”, a column
  storing booleans indicating whether the row should be filtered or not,
  or based on the return value of a “visible function”, which gets a
  model, iter and user_data and returns a boolean indicating whether the
  row should be filtered or not.

- Modify the “appearance” of the model, using a modify function.
  This is extremely powerful and allows for just changing some
  values and also for creating a completely different model based
  on the given child model.

- Set a different root node, also known as a “virtual root”. You can pass
  in a #GtkTreePath indicating the root node for the filter at construction
  time.

The basic API is similar to #GtkTreeModelSort. For an example on its usage,
see the section on #GtkTreeModelSort.

When using #GtkTreeModelFilter, it is important to realize that
#GtkTreeModelFilter maintains an internal cache of all nodes which are
visible in its clients. The cache is likely to be a subtree of the tree
exposed by the child model. #GtkTreeModelFilter will not cache the entire
child model when unnecessary to not compromise the caching mechanism
that is exposed by the reference counting scheme. If the child model
implements reference counting, unnecessary signals may not be emitted
because of reference counting rule 3, see the #GtkTreeModel
documentation. (Note that e.g. #GtkTreeStore does not implement
reference counting and will always emit all signals, even when
the receiving node is not visible).

Because of this, limitations for possible visible functions do apply.
In general, visible functions should only use data or properties from
the node for which the visibility state must be determined, its siblings
or its parents. Usually, having a dependency on the state of any child
node is not possible, unless references are taken on these explicitly.
When no such reference exists, no signals may be received for these child
nodes (see reference couting rule number 3 in the #GtkTreeModel section).

Determining the visibility state of a given node based on the state
of its child nodes is a frequently occurring use case. Therefore,
#GtkTreeModelFilter explicitly supports this. For example, when a node
does not have any children, you might not want the node to be visible.
As soon as the first row is added to the node’s child level (or the
last row removed), the node’s visibility should be updated.

This introduces a dependency from the node on its child nodes. In order
to accommodate this, #GtkTreeModelFilter must make sure the necessary
signals are received from the child model. This is achieved by building,
for all nodes which are exposed as visible nodes to #GtkTreeModelFilter's
clients, the child level (if any) and take a reference on the first node
in this level. Furthermore, for every row-inserted, row-changed or
row-deleted signal (also these which were not handled because the node
was not cached), #GtkTreeModelFilter will check if the visibility state
of any parent node has changed.

Beware, however, that this explicit support is limited to these two
cases. For example, if you want a node to be visible only if two nodes
in a child’s child level (2 levels deeper) are visible, you are on your
own. In this case, either rely on #GtkTreeStore to emit all signals
because it does not implement reference counting, or for models that
do implement reference counting, obtain references on these child levels
yourself.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




fun clear_cache(): None =>
"""
This function should almost never be called. It clears the @filter
of any cached iterators that haven’t been reffed with
gtk_tree_model_ref_node(). This might be useful if the child model
being filtered is static (and doesn’t change often) and there has been
a lot of unreffed access to nodes. As a side effect of this function,
all unreffed iters will be invalid.
"""
  @gtk_tree_model_filter_clear_cache[None](widget)

/* convert_child_iter_to_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "filter_iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "child_iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* convert_child_path_to_path unavailable due to return typing issues
{:argctype, "GtkTreePath*"}
{:argname, "rv"}
{:argtype, "TreePath"}
{:paramtype, :param}
{:txo, "full"} */

/* convert_iter_to_child_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "child_iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "filter_iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* convert_path_to_child_path unavailable due to return typing issues
{:argctype, "GtkTreePath*"}
{:argname, "rv"}
{:argtype, "TreePath"}
{:paramtype, :param}
{:txo, "full"} */

/* get_model unavailable due to return typing issues
{:argctype, "GtkTreeModel*"}
{:argname, "rv"}
{:argtype, "TreeModel"}
{:paramtype, :param}
{:txo, "none"} */

fun refilter(): None =>
"""
Emits ::row_changed for each row in the child model, which causes
the filter to re-evaluate whether a row is visible or not.
"""
  @gtk_tree_model_filter_refilter[None](widget)

/* set_modify_func unavailable due to typing issues
 {:doh, %{argctype: "", argname: "types", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeModelFilterModifyFunc", argname: "func", argtype: "TreeModelFilterModifyFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_visible_column(column_pony: I32): None =>
"""
Sets @column of the child_model to be the column where @filter should
look for visibility information. @columns should be a column of type
%G_TYPE_BOOLEAN, where %TRUE means that a row is visible, and %FALSE
if not.

Note that gtk_tree_model_filter_set_visible_func() or
gtk_tree_model_filter_set_visible_column() can only be called
once for a given filter model.
"""
  @gtk_tree_model_filter_set_visible_column[None](widget, column_pony)

/* set_visible_func unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModelFilterVisibleFunc", argname: "func", argtype: "TreeModelFilterVisibleFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```````