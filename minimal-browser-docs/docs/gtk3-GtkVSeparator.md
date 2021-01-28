# GtkVSeparator
<span class="source-link">[[Source]](src/gtk3/GtkVSeparator.md#L6)</span>

The #GtkVSeparator widget is a vertical separator, used to group the
widgets within a window. It displays a vertical line with a shadow to
make it appear sunken into the interface.

GtkVSeparator has been deprecated, use #GtkSeparator instead.


```pony
class val GtkVSeparator is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkVSeparator.md#L18)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkVSeparator val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkVSeparator](gtk3-GtkVSeparator.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkVSeparator.md#L21)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkVSeparator val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkVSeparator](gtk3-GtkVSeparator.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkVSeparator.md#L24)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkVSeparator val^
```

#### Returns

* [GtkVSeparator](gtk3-GtkVSeparator.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkVSeparator.md#L28)</span>


```pony
new val create()
: GtkVSeparator val^
```

#### Returns

* [GtkVSeparator](gtk3-GtkVSeparator.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkVSeparator.md#L14)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkVSeparator.md#L16)</span>


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

