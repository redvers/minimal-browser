# GtkTable
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L6)</span>

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


```pony
class val GtkTable is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L37)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTable val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTable](gtk3-GtkTable.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L40)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTable val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTable](gtk3-GtkTable.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L43)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTable val^
```

#### Returns

* [GtkTable](gtk3-GtkTable.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L47)</span>


```pony
new val create(
  rows_pony: U32 val,
  columns_pony: U32 val,
  homogeneous_pony: Bool val)
: GtkTable val^
```
#### Parameters

*   rows_pony: [U32](builtin-U32.md) val
*   columns_pony: [U32](builtin-U32.md) val
*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [GtkTable](gtk3-GtkTable.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L33)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L35)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### attach_defaults
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L56)</span>


As there are many options associated with gtk_table_attach(), this convenience
function provides the programmer with a means to add children to a table with
identical padding and expansion options. The values used for the #GtkAttachOptions
are `GTK_EXPAND | GTK_FILL`, and the padding is set to 0.


```pony
fun box attach_defaults(
  widget_pony: GtkWidget val,
  left_attach_pony: U32 val,
  right_attach_pony: U32 val,
  top_attach_pony: U32 val,
  bottom_attach_pony: U32 val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   left_attach_pony: [U32](builtin-U32.md) val
*   right_attach_pony: [U32](builtin-U32.md) val
*   top_attach_pony: [U32](builtin-U32.md) val
*   bottom_attach_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### get_col_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L65)</span>


Gets the amount of space between column @col, and
column @col + 1. See gtk_table_set_col_spacing().


```pony
fun box get_col_spacing(
  column_pony: U32 val)
: U32 val
```
#### Parameters

*   column_pony: [U32](builtin-U32.md) val

#### Returns

* [U32](builtin-U32.md) val

---

### get_default_col_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L72)</span>


Gets the default column spacing for the table. This is
the spacing that will be used for newly added columns.
(See gtk_table_set_col_spacings())


```pony
fun box get_default_col_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_default_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L80)</span>


Gets the default row spacing for the table. This is
the spacing that will be used for newly added rows.
(See gtk_table_set_row_spacings())


```pony
fun box get_default_row_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L88)</span>


Returns whether the table cells are all constrained to the same
width and height. (See gtk_table_set_homogeneous ())


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L95)</span>


Gets the amount of space between row @row, and
row @row + 1. See gtk_table_set_row_spacing().


```pony
fun box get_row_spacing(
  row_pony: U32 val)
: U32 val
```
#### Parameters

*   row_pony: [U32](builtin-U32.md) val

#### Returns

* [U32](builtin-U32.md) val

---

### resize
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L107)</span>


If you need to change a table’s size after
it has been created, this function allows you to do so.


```pony
fun box resize(
  rows_pony: U32 val,
  columns_pony: U32 val)
: None val
```
#### Parameters

*   rows_pony: [U32](builtin-U32.md) val
*   columns_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_col_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L114)</span>


Alters the amount of space between a given table column and the following
column.


```pony
fun box set_col_spacing(
  column_pony: U32 val,
  spacing_pony: U32 val)
: None val
```
#### Parameters

*   column_pony: [U32](builtin-U32.md) val
*   spacing_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_col_spacings
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L121)</span>


Sets the space between every column in @table equal to @spacing.


```pony
fun box set_col_spacings(
  spacing_pony: U32 val)
: None val
```
#### Parameters

*   spacing_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L127)</span>


Changes the homogenous property of table cells, ie. whether all cells are
an equal size or not.


```pony
fun box set_homogeneous(
  homogeneous_pony: Bool val)
: None val
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L134)</span>


Changes the space between a given table row and the subsequent row.


```pony
fun box set_row_spacing(
  row_pony: U32 val,
  spacing_pony: U32 val)
: None val
```
#### Parameters

*   row_pony: [U32](builtin-U32.md) val
*   spacing_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_row_spacings
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L140)</span>


Sets the space between every row in @table equal to @spacing.


```pony
fun box set_row_spacings(
  spacing_pony: U32 val)
: None val
```
#### Parameters

*   spacing_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### show_all
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L4)</span>


```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L7)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


```pony
fun box signal_connect[V: Any #share](
  detailed_signal: String val,
  c_handler: @{(GObjectREF, V)}[V] val,
  data: V)
: U64 val
```
#### Parameters

*   detailed_signal: [String](builtin-String.md) val
*   c_handler: @{(GObjectREF, V)}[V] val
*   data: V

#### Returns

* [U64](builtin-U64.md) val

---

