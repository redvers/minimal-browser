```````pony-full-source
/*
   needs: ["None", "GtkWidget val", "I32", "GObjectREF", "Bool", "U32"]
provides: ["GtkGrid val"]
*/
use "../gobject"
class val GtkGrid is GtkWidget
"""
GtkGrid is a container which arranges its child widgets in
rows and columns, with arbitrary positions and horizontal/vertical spans.

Children are added using gtk_grid_attach(). They can span multiple
rows or columns. It is also possible to add a child next to an
existing child, using gtk_grid_attach_next_to(). The behaviour of
GtkGrid when several children occupy the same grid cell is undefined.

GtkGrid can be used like a #GtkBox by just using gtk_container_add(),
which will place children next to each other in the direction determined
by the #GtkOrientable:orientation property. However, if all you want is a
single row or column, then #GtkBox is the preferred widget.

# CSS nodes

GtkGrid uses a single CSS node with name grid.
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
    widget = @gtk_grid_new[GObjectREF]() //


fun attach(child_pony: GtkWidget val, left_pony: I32, top_pony: I32, width_pony: I32, height_pony: I32): None =>
"""
Adds a widget to the grid.

The position of @child is determined by @left and @top. The
number of “cells” that @child will occupy is determined by
@width and @height.
"""
  @gtk_grid_attach[None](widget, child_pony.gtkwidget(), left_pony, top_pony, width_pony, height_pony)

/* attach_next_to unavailable due to typing issues
 {:doh, %{argctype: "GtkPositionType", argname: "side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

fun get_baseline_row(): I32 =>
"""
Returns which row defines the global baseline of @grid.
"""
  @gtk_grid_get_baseline_row[I32](widget)

/* Needs conversion code 
  fun get_child_at(left_pony: I32, top_pony: I32): GtkWidget val =>
    @gtk_grid_get_child_at[GObjectREF](widget, left_pony, top_pony)
*/

fun get_column_homogeneous(): Bool =>
"""
Returns whether all columns of @grid have the same width.
"""
  @gtk_grid_get_column_homogeneous[Bool](widget)

fun get_column_spacing(): U32 =>
"""
Returns the amount of space between the columns of @grid.
"""
  @gtk_grid_get_column_spacing[U32](widget)

/* get_row_baseline_position unavailable due to return typing issues
{:argctype, "GtkBaselinePosition"}
{:argname, "rv"}
{:argtype, "BaselinePosition"}
{:paramtype, :param}
{:txo, "none"} */

fun get_row_homogeneous(): Bool =>
"""
Returns whether all rows of @grid have the same height.
"""
  @gtk_grid_get_row_homogeneous[Bool](widget)

fun get_row_spacing(): U32 =>
"""
Returns the amount of space between the rows of @grid.
"""
  @gtk_grid_get_row_spacing[U32](widget)

fun insert_column(position_pony: I32): None =>
"""
Inserts a column at the specified position.

Children which are attached at or to the right of this position
are moved one column to the right. Children which span across this
position are grown to span the new column.
"""
  @gtk_grid_insert_column[None](widget, position_pony)

/* insert_next_to unavailable due to typing issues
 {:doh, %{argctype: "GtkPositionType", argname: "side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

fun insert_row(position_pony: I32): None =>
"""
Inserts a row at the specified position.

Children which are attached at or below this position
are moved one row down. Children which span across this
position are grown to span the new row.
"""
  @gtk_grid_insert_row[None](widget, position_pony)

fun remove_column(position_pony: I32): None =>
"""
Removes a column from the grid.

Children that are placed in this column are removed,
spanning children that overlap this column have their
width reduced by one, and children after the column
are moved to the left.
"""
  @gtk_grid_remove_column[None](widget, position_pony)

fun remove_row(position_pony: I32): None =>
"""
Removes a row from the grid.

Children that are placed in this row are removed,
spanning children that overlap this row have their
height reduced by one, and children below the row
are moved up.
"""
  @gtk_grid_remove_row[None](widget, position_pony)

fun set_baseline_row(row_pony: I32): None =>
"""
Sets which row defines the global baseline for the entire grid.
Each row in the grid can have its own local baseline, but only
one of those is global, meaning it will be the baseline in the
parent of the @grid.
"""
  @gtk_grid_set_baseline_row[None](widget, row_pony)

fun set_column_homogeneous(homogeneous_pony: Bool): None =>
"""
Sets whether all columns of @grid will have the same width.
"""
  @gtk_grid_set_column_homogeneous[None](widget, homogeneous_pony)

fun set_column_spacing(spacing_pony: U32): None =>
"""
Sets the amount of space between columns of @grid.
"""
  @gtk_grid_set_column_spacing[None](widget, spacing_pony)

/* set_row_baseline_position unavailable due to typing issues
 {:doh, %{argctype: "GtkBaselinePosition", argname: "pos", argtype: "BaselinePosition", paramtype: :param, txo: "none"}}
*/

fun set_row_homogeneous(homogeneous_pony: Bool): None =>
"""
Sets whether all rows of @grid will have the same height.
"""
  @gtk_grid_set_row_homogeneous[None](widget, homogeneous_pony)

fun set_row_spacing(spacing_pony: U32): None =>
"""
Sets the amount of space between rows of @grid.
"""
  @gtk_grid_set_row_spacing[None](widget, spacing_pony)


```````