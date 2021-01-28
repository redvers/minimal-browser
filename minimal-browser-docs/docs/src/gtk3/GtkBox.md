```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val", "Bool", "I32", "None", "U32", "GtkOrientation"]
provides: ["GtkBox val"]
*/
use "../gobject"
class val GtkBox is GtkWidget
"""
The GtkBox widget arranges child widgets into a single row or column,
depending upon the value of its #GtkOrientable:orientation property. Within
the other dimension, all children are allocated the same size. Of course,
the #GtkWidget:halign and #GtkWidget:valign properties can be used on
the children to influence their allocation.

GtkBox uses a notion of packing. Packing refers
to adding widgets with reference to a particular position in a
#GtkContainer. For a GtkBox, there are two reference positions: the
start and the end of the box.
For a vertical #GtkBox, the start is defined as the top of the box and
the end is defined as the bottom. For a horizontal #GtkBox the start
is defined as the left side and the end is defined as the right side.

Use repeated calls to gtk_box_pack_start() to pack widgets into a
GtkBox from start to end. Use gtk_box_pack_end() to add widgets from
end to start. You may intersperse these calls and add widgets from
both ends of the same GtkBox.

Because GtkBox is a #GtkContainer, you may also use gtk_container_add()
to insert widgets into the box, and they will be packed with the default
values for expand and fill child properties. Use gtk_container_remove()
to remove widgets from the GtkBox.

Use gtk_box_set_homogeneous() to specify whether or not all children
of the GtkBox are forced to get the same amount of space.

Use gtk_box_set_spacing() to determine how much space will be
minimally placed between all children in the GtkBox. Note that
spacing is added between the children, while
padding added by gtk_box_pack_start() or gtk_box_pack_end() is added
on either side of the widget it belongs to.

Use gtk_box_reorder_child() to move a GtkBox child to a different
place in the box.

Use gtk_box_set_child_packing() to reset the expand,
fill and padding child properties.
Use gtk_box_query_child_packing() to query these fields.

# CSS nodes

GtkBox uses a single CSS node with name box.

In horizontal orientation, the nodes of the children are always arranged
from left to right. So :first-child will always select the leftmost child,
regardless of text direction.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(orientation_pony: GtkOrientation, spacing_pony: I32) =>
    widget = @gtk_box_new[GObjectREF](orientation_pony, spacing_pony) //


/* get_baseline_position unavailable due to return typing issues
{:argctype, "GtkBaselinePosition"}
{:argname, "rv"}
{:argtype, "BaselinePosition"}
{:paramtype, :param}
{:txo, "none"} */

/* Needs conversion code 
  fun get_center_widget(): GtkWidget val =>
    @gtk_box_get_center_widget[GObjectREF](widget)
*/

fun get_homogeneous(): Bool =>
"""
Returns whether the box is homogeneous (all children are the
same size). See gtk_box_set_homogeneous().
"""
  @gtk_box_get_homogeneous[Bool](widget)

fun get_spacing(): I32 =>
"""
Gets the value set by gtk_box_set_spacing().
"""
  @gtk_box_get_spacing[I32](widget)

fun pack_end(child_pony: GtkWidget val, expand_pony: Bool, fill_pony: Bool, padding_pony: U32): None =>
"""
Adds @child to @box, packed with reference to the end of @box.
The @child is packed after (away from end of) any other child
packed with reference to the end of @box.
"""
  @gtk_box_pack_end[None](widget, child_pony.gtkwidget(), expand_pony, fill_pony, padding_pony)

fun pack_start(child_pony: GtkWidget val, expand_pony: Bool, fill_pony: Bool, padding_pony: U32): None =>
"""
Adds @child to @box, packed with reference to the start of @box.
The @child is packed after any other child packed with reference
to the start of @box.
"""
  @gtk_box_pack_start[None](widget, child_pony.gtkwidget(), expand_pony, fill_pony, padding_pony)

/* query_child_packing unavailable due to typing issues
 {:doh, %{argctype: "gboolean*", argname: "expand", argtype: "gboolean", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gboolean*", argname: "fill", argtype: "gboolean", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "padding", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "GtkPackType*", argname: "pack_type", argtype: "PackType", paramtype: :param, txo: "full"}}
*/

fun reorder_child(child_pony: GtkWidget val, position_pony: I32): None =>
"""
Moves @child to a new @position in the list of @box children.
The list contains widgets packed #GTK_PACK_START
as well as widgets packed #GTK_PACK_END, in the order that these
widgets were added to @box.

A widget’s position in the @box children list determines where
the widget is packed into @box.  A child widget at some position
in the list will be packed just after all other widgets of the
same packing type that appear earlier in the list.
"""
  @gtk_box_reorder_child[None](widget, child_pony.gtkwidget(), position_pony)

/* set_baseline_position unavailable due to typing issues
 {:doh, %{argctype: "GtkBaselinePosition", argname: "position", argtype: "BaselinePosition", paramtype: :param, txo: "none"}}
*/

fun set_center_widget(widget_pony: GtkWidget val): None =>
"""
Sets a center widget; that is a child widget that will be
centered with respect to the full width of the box, even
if the children at either side take up different amounts
of space.
"""
  @gtk_box_set_center_widget[None](widget, widget_pony.gtkwidget())

/* set_child_packing unavailable due to typing issues
 {:doh, %{argctype: "GtkPackType", argname: "pack_type", argtype: "PackType", paramtype: :param, txo: "none"}}
*/

fun set_homogeneous(homogeneous_pony: Bool): None =>
"""
Sets the #GtkBox:homogeneous property of @box, controlling
whether or not all children of @box are given equal space
in the box.
"""
  @gtk_box_set_homogeneous[None](widget, homogeneous_pony)

fun set_spacing(spacing_pony: I32): None =>
"""
Sets the #GtkBox:spacing property of @box, which is the
number of pixels to place between children of @box.
"""
  @gtk_box_set_spacing[None](widget, spacing_pony)


```````