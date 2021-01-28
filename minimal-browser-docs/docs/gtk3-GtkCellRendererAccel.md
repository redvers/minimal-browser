# GtkCellRendererAccel
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererAccel.md#L6)</span>

#GtkCellRendererAccel displays a keyboard accelerator (i.e. a key
combination like `Control + a`). If the cell renderer is editable,
the accelerator can be changed by simply typing the new combination.

The #GtkCellRendererAccel cell renderer was added in GTK+ 2.10.


```pony
class val GtkCellRendererAccel is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererAccel.md#L18)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCellRendererAccel val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCellRendererAccel](gtk3-GtkCellRendererAccel.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererAccel.md#L21)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRendererAccel val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRendererAccel](gtk3-GtkCellRendererAccel.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererAccel.md#L24)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCellRendererAccel val^
```

#### Returns

* [GtkCellRendererAccel](gtk3-GtkCellRendererAccel.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererAccel.md#L28)</span>


```pony
new val create()
: GtkCellRendererAccel val^
```

#### Returns

* [GtkCellRendererAccel](gtk3-GtkCellRendererAccel.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererAccel.md#L14)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererAccel.md#L16)</span>


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

