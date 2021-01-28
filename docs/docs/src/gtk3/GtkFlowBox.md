```````pony-full-source
/*
   needs: ["Bool", "U32", "None", "GtkWidget val", "I32", "GObjectREF"]
provides: ["GtkFlowBox val"]
*/
use "../gobject"
class val GtkFlowBox is GtkWidget
"""
A GtkFlowBox positions child widgets in sequence according to its
orientation.

For instance, with the horizontal orientation, the widgets will be
arranged from left to right, starting a new row under the previous
row when necessary. Reducing the width in this case will require more
rows, so a larger height will be requested.

Likewise, with the vertical orientation, the widgets will be arranged
from top to bottom, starting a new column to the right when necessary.
Reducing the height will require more columns, so a larger width will
be requested.

The size request of a GtkFlowBox alone may not be what you expect; if you
need to be able to shrink it along both axes and dynamically reflow its
children, you may have to wrap it in a #GtkScrolledWindow to enable that.

The children of a GtkFlowBox can be dynamically sorted and filtered.

Although a GtkFlowBox must have only #GtkFlowBoxChild children,
you can add any kind of widget to it via gtk_container_add(), and
a GtkFlowBoxChild widget will automatically be inserted between
the box and the widget.

Also see #GtkListBox.

GtkFlowBox was added in GTK+ 3.12.

# CSS nodes

|[<!-- language="plain" -->
flowbox
├── flowboxchild
│   ╰── <child>
├── flowboxchild
│   ╰── <child>
┊
╰── [rubberband]
]|

GtkFlowBox uses a single CSS node with name flowbox. GtkFlowBoxChild
uses a single CSS node with name flowboxchild.
For rubberband selection, a subnode with name rubberband is used.
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
    widget = @gtk_flow_box_new[GObjectREF]() //


/* bind_model unavailable due to typing issues
 {:doh, %{argctype: "GListModel*", argname: "model", argtype: "Gio.ListModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkFlowBoxCreateWidgetFunc", argname: "create_widget_func", argtype: "FlowBoxCreateWidgetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "user_data_free_func", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun get_activate_on_single_click(): Bool =>
"""
Returns whether children activate on single clicks.
"""
  @gtk_flow_box_get_activate_on_single_click[Bool](widget)

/* get_child_at_index unavailable due to return typing issues
{:argctype, "GtkFlowBoxChild*"}
{:argname, "rv"}
{:argtype, "FlowBoxChild"}
{:paramtype, :param}
{:txo, "none"} */

/* get_child_at_pos unavailable due to return typing issues
{:argctype, "GtkFlowBoxChild*"}
{:argname, "rv"}
{:argtype, "FlowBoxChild"}
{:paramtype, :param}
{:txo, "none"} */

fun get_column_spacing(): U32 =>
"""
Gets the horizontal spacing.
"""
  @gtk_flow_box_get_column_spacing[U32](widget)

fun get_homogeneous(): Bool =>
"""
Returns whether the box is homogeneous (all children are the
same size). See gtk_box_set_homogeneous().
"""
  @gtk_flow_box_get_homogeneous[Bool](widget)

fun get_max_children_per_line(): U32 =>
"""
Gets the maximum number of children per line.
"""
  @gtk_flow_box_get_max_children_per_line[U32](widget)

fun get_min_children_per_line(): U32 =>
"""
Gets the minimum number of children per line.
"""
  @gtk_flow_box_get_min_children_per_line[U32](widget)

fun get_row_spacing(): U32 =>
"""
Gets the vertical spacing.
"""
  @gtk_flow_box_get_row_spacing[U32](widget)

/* get_selected_children unavailable due to return typing issues
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

fun insert(widget_pony: GtkWidget val, position_pony: I32): None =>
"""
Inserts the @widget into @box at @position.

If a sort function is set, the widget will actually be inserted
at the calculated position and this function has the same effect
as gtk_container_add().

If @position is -1, or larger than the total number of children
in the @box, then the @widget will be appended to the end.
"""
  @gtk_flow_box_insert[None](widget, widget_pony.gtkwidget(), position_pony)

fun invalidate_filter(): None =>
"""
Updates the filtering for all children.

Call this function when the result of the filter
function on the @box is changed due ot an external
factor. For instance, this would be used if the
filter function just looked for a specific search
term, and the entry with the string has changed.
"""
  @gtk_flow_box_invalidate_filter[None](widget)

fun invalidate_sort(): None =>
"""
Updates the sorting for all children.

Call this when the result of the sort function on
@box is changed due to an external factor.
"""
  @gtk_flow_box_invalidate_sort[None](widget)

fun select_all(): None =>
"""
Select all children of @box, if the selection
mode allows it.
"""
  @gtk_flow_box_select_all[None](widget)

/* select_child unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxChild*", argname: "child", argtype: "FlowBoxChild", paramtype: :param, txo: "none"}}
*/

/* selected_foreach unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxForeachFunc", argname: "func", argtype: "FlowBoxForeachFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

fun set_activate_on_single_click(single_pony: Bool): None =>
"""
If @single is %TRUE, children will be activated when you click
on them, otherwise you need to double-click.
"""
  @gtk_flow_box_set_activate_on_single_click[None](widget, single_pony)

fun set_column_spacing(spacing_pony: U32): None =>
"""
Sets the horizontal space to add between children.
See the #GtkFlowBox:column-spacing property.
"""
  @gtk_flow_box_set_column_spacing[None](widget, spacing_pony)

/* set_filter_func unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxFilterFunc", argname: "filter_func", argtype: "FlowBoxFilterFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_homogeneous(homogeneous_pony: Bool): None =>
"""
Sets the #GtkFlowBox:homogeneous property of @box, controlling
whether or not all children of @box are given equal space
in the box.
"""
  @gtk_flow_box_set_homogeneous[None](widget, homogeneous_pony)

fun set_max_children_per_line(n_children_pony: U32): None =>
"""
Sets the maximum number of children to request and
allocate space for in @box’s orientation.

Setting the maximum number of children per line
limits the overall natural size request to be no more
than @n_children children long in the given orientation.
"""
  @gtk_flow_box_set_max_children_per_line[None](widget, n_children_pony)

fun set_min_children_per_line(n_children_pony: U32): None =>
"""
Sets the minimum number of children to line up
in @box’s orientation before flowing.
"""
  @gtk_flow_box_set_min_children_per_line[None](widget, n_children_pony)

fun set_row_spacing(spacing_pony: U32): None =>
"""
Sets the vertical space to add between children.
See the #GtkFlowBox:row-spacing property.
"""
  @gtk_flow_box_set_row_spacing[None](widget, spacing_pony)

/* set_selection_mode unavailable due to typing issues
 {:doh, %{argctype: "GtkSelectionMode", argname: "mode", argtype: "SelectionMode", paramtype: :param, txo: "none"}}
*/

/* set_sort_func unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxSortFunc", argname: "sort_func", argtype: "FlowBoxSortFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_vadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun unselect_all(): None =>
"""
Unselect all children of @box, if the selection
mode allows it.
"""
  @gtk_flow_box_unselect_all[None](widget)

/* unselect_child unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxChild*", argname: "child", argtype: "FlowBoxChild", paramtype: :param, txo: "none"}}
*/


```````