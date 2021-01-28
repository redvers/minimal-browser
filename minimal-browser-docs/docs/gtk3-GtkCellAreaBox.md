# GtkCellAreaBox
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaBox.md#L6)</span>

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


```pony
class val GtkCellAreaBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaBox.md#L30)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCellAreaBox val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCellAreaBox](gtk3-GtkCellAreaBox.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaBox.md#L33)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellAreaBox val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellAreaBox](gtk3-GtkCellAreaBox.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaBox.md#L36)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCellAreaBox val^
```

#### Returns

* [GtkCellAreaBox](gtk3-GtkCellAreaBox.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaBox.md#L40)</span>


```pony
new val create()
: GtkCellAreaBox val^
```

#### Returns

* [GtkCellAreaBox](gtk3-GtkCellAreaBox.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaBox.md#L26)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaBox.md#L28)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_spacing
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaBox.md#L44)</span>


Gets the spacing added between cell renderers.


```pony
fun box get_spacing()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### set_spacing
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaBox.md#L58)</span>


Sets the spacing to add between cell renderers in @box.


```pony
fun box set_spacing(
  spacing_pony: I32 val)
: None val
```
#### Parameters

*   spacing_pony: [I32](builtin-I32.md) val

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

