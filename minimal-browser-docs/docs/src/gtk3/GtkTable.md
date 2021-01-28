```````pony-full-source
/*
   needs: ["None", "GtkWidget val", "U32", "Bool", "GObjectREF"]
provides: ["GtkTable val"]
*/
use "../gobject"
class val GtkTable is GtkWidget
"""
The #GtkTable functions allow the programmer to arrange widgets in rows and
columns, making it easy to align many widgets next to each other,
horizontally and vertically.

Tables are created with a call to gtk_table_new(), the size of which can
later be changed with gtk_table_resize().

Widgets can be added to a table using gtk_table_attach() or the more
convenient (but slightly less flexible) gtk_table_attach_defaults().

To alter the space next to a specific row, use gtk_table_set_row_spacing(),
and for a column, gtk_table_set_col_spacing().
The gaps between all rows or columns can be changed by
calling gtk_table_set_row_spacings() or gtk_table_set_col_spacings()
respectively. Note that spacing is added between the
children, while padding added by gtk_table_attach() is added on
either side of the widget it belongs to.

gtk_table_set_homogeneous(), can be used to set whether all cells in the
table will resize themselves to the size of the largest widget in the table.

> #GtkTable has been deprecated. Use #GtkGrid instead. It provides the same
> capabilities as GtkTable for arranging widgets in a rectangular grid, but
> does support height-for-width geometry management.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(rows_pony: U32, columns_pony: U32, homogeneous_pony: Bool) =>
    widget = @gtk_table_new[GObjectREF](rows_pony, columns_pony, homogeneous_pony) //


/* attach unavailable due to typing issues
 {:doh, %{argctype: "GtkAttachOptions", argname: "xoptions", argtype: "AttachOptions", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkAttachOptions", argname: "yoptions", argtype: "AttachOptions", paramtype: :param, txo: "none"}}
*/

fun attach_defaults(widget_pony: GtkWidget val, left_attach_pony: U32, right_attach_pony: U32, top_attach_pony: U32, bottom_attach_pony: U32): None =>
"""
As there are many options associated with gtk_table_attach(), this convenience
function provides the programmer with a means to add children to a table with
identical padding and expansion options. The values used for the #GtkAttachOptions
are `GTK_EXPAND | GTK_FILL`, and the padding is set to 0.
"""
  @gtk_table_attach_defaults[None](widget, widget_pony.gtkwidget(), left_attach_pony, right_attach_pony, top_attach_pony, bottom_attach_pony)

fun get_col_spacing(column_pony: U32): U32 =>
"""
Gets the amount of space between column @col, and
column @col + 1. See gtk_table_set_col_spacing().
"""
  @gtk_table_get_col_spacing[U32](widget, column_pony)

fun get_default_col_spacing(): U32 =>
"""
Gets the default column spacing for the table. This is
the spacing that will be used for newly added columns.
(See gtk_table_set_col_spacings())
"""
  @gtk_table_get_default_col_spacing[U32](widget)

fun get_default_row_spacing(): U32 =>
"""
Gets the default row spacing for the table. This is
the spacing that will be used for newly added rows.
(See gtk_table_set_row_spacings())
"""
  @gtk_table_get_default_row_spacing[U32](widget)

fun get_homogeneous(): Bool =>
"""
Returns whether the table cells are all constrained to the same
width and height. (See gtk_table_set_homogeneous ())
"""
  @gtk_table_get_homogeneous[Bool](widget)

fun get_row_spacing(row_pony: U32): U32 =>
"""
Gets the amount of space between row @row, and
row @row + 1. See gtk_table_set_row_spacing().
"""
  @gtk_table_get_row_spacing[U32](widget, row_pony)

/* get_size unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "rows", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "columns", argtype: "guint", paramtype: :param, txo: "full"}}
*/

fun resize(rows_pony: U32, columns_pony: U32): None =>
"""
If you need to change a table’s size after
it has been created, this function allows you to do so.
"""
  @gtk_table_resize[None](widget, rows_pony, columns_pony)

fun set_col_spacing(column_pony: U32, spacing_pony: U32): None =>
"""
Alters the amount of space between a given table column and the following
column.
"""
  @gtk_table_set_col_spacing[None](widget, column_pony, spacing_pony)

fun set_col_spacings(spacing_pony: U32): None =>
"""
Sets the space between every column in @table equal to @spacing.
"""
  @gtk_table_set_col_spacings[None](widget, spacing_pony)

fun set_homogeneous(homogeneous_pony: Bool): None =>
"""
Changes the homogenous property of table cells, ie. whether all cells are
an equal size or not.
"""
  @gtk_table_set_homogeneous[None](widget, homogeneous_pony)

fun set_row_spacing(row_pony: U32, spacing_pony: U32): None =>
"""
Changes the space between a given table row and the subsequent row.
"""
  @gtk_table_set_row_spacing[None](widget, row_pony, spacing_pony)

fun set_row_spacings(spacing_pony: U32): None =>
"""
Sets the space between every row in @table equal to @spacing.
"""
  @gtk_table_set_row_spacings[None](widget, spacing_pony)


```````