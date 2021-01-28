# GtkCellRendererSpin
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpin.md#L6)</span>

#GtkCellRendererSpin renders text in a cell like #GtkCellRendererText from
which it is derived. But while #GtkCellRendererText offers a simple entry to
edit the text, #GtkCellRendererSpin offers a #GtkSpinButton widget. Of course,
that means that the text has to be parseable as a floating point number.

The range of the spinbutton is taken from the adjustment property of the
cell renderer, which can be set explicitly or mapped to a column in the
tree model, like all properties of cell renders. #GtkCellRendererSpin
also has properties for the #GtkCellRendererSpin:climb-rate and the number
of #GtkCellRendererSpin:digits to display. Other #GtkSpinButton properties
can be set in a handler for the #GtkCellRenderer::editing-started signal.

The #GtkCellRendererSpin cell renderer was added in GTK+ 2.10.


```pony
class val GtkCellRendererSpin is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpin.md#L26)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCellRendererSpin val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCellRendererSpin](gtk3-GtkCellRendererSpin.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpin.md#L29)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRendererSpin val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRendererSpin](gtk3-GtkCellRendererSpin.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpin.md#L32)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCellRendererSpin val^
```

#### Returns

* [GtkCellRendererSpin](gtk3-GtkCellRendererSpin.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpin.md#L36)</span>


```pony
new val create()
: GtkCellRendererSpin val^
```

#### Returns

* [GtkCellRendererSpin](gtk3-GtkCellRendererSpin.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpin.md#L22)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpin.md#L24)</span>


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

