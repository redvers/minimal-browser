# GtkListBoxAccessible
<span class="source-link">[[Source]](src/gtk3/GtkListBoxAccessible.md#L6)</span>

No documentation provided


```pony
class val GtkListBoxAccessible is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkListBoxAccessible.md#L14)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkListBoxAccessible val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkListBoxAccessible](gtk3-GtkListBoxAccessible.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkListBoxAccessible.md#L17)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkListBoxAccessible val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkListBoxAccessible](gtk3-GtkListBoxAccessible.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkListBoxAccessible.md#L20)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkListBoxAccessible val^
```

#### Returns

* [GtkListBoxAccessible](gtk3-GtkListBoxAccessible.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkListBoxAccessible.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkListBoxAccessible.md#L12)</span>


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

