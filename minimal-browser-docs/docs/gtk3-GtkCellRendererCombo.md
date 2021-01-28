# GtkCellRendererCombo
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L6)</span>

#GtkCellRendererCombo renders text in a cell like #GtkCellRendererText from
which it is derived. But while #GtkCellRendererText offers a simple entry to
edit the text, #GtkCellRendererCombo offers a #GtkComboBox
widget to edit the text. The values to display in the combo box are taken from
the tree model specified in the #GtkCellRendererCombo:model property.

The combo cell renderer takes care of adding a text cell renderer to the combo
box and sets it to display the column specified by its
#GtkCellRendererCombo:text-column property. Further properties of the combo box
can be set in a handler for the #GtkCellRenderer::editing-started signal.

The #GtkCellRendererCombo cell renderer was added in GTK+ 2.6.


```pony
class val GtkCellRendererCombo is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L25)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCellRendererCombo val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCellRendererCombo](gtk3-GtkCellRendererCombo.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L28)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRendererCombo val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRendererCombo](gtk3-GtkCellRendererCombo.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L31)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCellRendererCombo val^
```

#### Returns

* [GtkCellRendererCombo](gtk3-GtkCellRendererCombo.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L35)</span>


```pony
new val create()
: GtkCellRendererCombo val^
```

#### Returns

* [GtkCellRendererCombo](gtk3-GtkCellRendererCombo.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L21)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L23)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

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

