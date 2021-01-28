```````pony-full-source
/*
   needs: ["I32", "None", "GObjectREF"]
provides: ["GtkCellAreaBox val"]
*/
use "../gobject"
class val GtkCellAreaBox is GtkWidget
"""
The #GtkCellAreaBox renders cell renderers into a row or a column
depending on its #GtkOrientation.

GtkCellAreaBox uses a notion of packing. Packing
refers to adding cell renderers with reference to a particular position
in a #GtkCellAreaBox. There are two reference positions: the
start and the end of the box.
When the #GtkCellAreaBox is oriented in the %GTK_ORIENTATION_VERTICAL
orientation, the start is defined as the top of the box and the end is
defined as the bottom. In the %GTK_ORIENTATION_HORIZONTAL orientation
start is defined as the left side and the end is defined as the right
side.

Alignments of #GtkCellRenderers rendered in adjacent rows can be
configured by configuring the #GtkCellAreaBox align child cell property
with gtk_cell_area_cell_set_property() or by specifying the "align"
argument to gtk_cell_area_box_pack_start() and gtk_cell_area_box_pack_end().
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
    widget = @gtk_cell_area_box_new[GObjectREF]() //


fun get_spacing(): I32 =>
"""
Gets the spacing added between cell renderers.
"""
  @gtk_cell_area_box_get_spacing[I32](widget)

/* pack_end unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* pack_start unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

fun set_spacing(spacing_pony: I32): None =>
"""
Sets the spacing to add between cell renderers in @box.
"""
  @gtk_cell_area_box_set_spacing[None](widget, spacing_pony)


```````