# GtkCellRendererText
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererText.md#L6)</span>

A #GtkCellRendererText renders a given text in its cell, using the font, color and
style information provided by its properties. The text will be ellipsized if it is
too long and the #GtkCellRendererText:ellipsize property allows it.

If the #GtkCellRenderer:mode is %GTK_CELL_RENDERER_MODE_EDITABLE,
the #GtkCellRendererText allows to edit its text using an entry.


```pony
class val GtkCellRendererText is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererText.md#L19)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCellRendererText val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCellRendererText](gtk3-GtkCellRendererText.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererText.md#L22)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRendererText val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRendererText](gtk3-GtkCellRendererText.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererText.md#L25)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCellRendererText val^
```

#### Returns

* [GtkCellRendererText](gtk3-GtkCellRendererText.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererText.md#L29)</span>


```pony
new val create()
: GtkCellRendererText val^
```

#### Returns

* [GtkCellRendererText](gtk3-GtkCellRendererText.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererText.md#L15)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererText.md#L17)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### set_fixed_height_from_font
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererText.md#L33)</span>


Sets the height of a renderer to explicitly be determined by the “font” and
“y_pad” property set on it.  Further changes in these properties do not
affect the height, so they must be accompanied by a subsequent call to this
function.  Using this function is unflexible, and should really only be used
if calculating the size of a cell is too slow (ie, a massive number of cells
displayed).  If @number_of_rows is -1, then the fixed height is unset, and
the height is determined by the properties again.


```pony
fun box set_fixed_height_from_font(
  number_of_rows_pony: I32 val)
: None val
```
#### Parameters

*   number_of_rows_pony: [I32](builtin-I32.md) val

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

