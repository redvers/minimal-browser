# GtkVolumeButton
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L6)</span>

#GtkVolumeButton is a subclass of #GtkScaleButton that has
been tailored for use as a volume control widget with suitable
icons, tooltips and accessible labels.


```pony
class val GtkVolumeButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L16)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkVolumeButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkVolumeButton](gtk3-GtkVolumeButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L19)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkVolumeButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkVolumeButton](gtk3-GtkVolumeButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L22)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkVolumeButton val^
```

#### Returns

* [GtkVolumeButton](gtk3-GtkVolumeButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L26)</span>


```pony
new val create()
: GtkVolumeButton val^
```

#### Returns

* [GtkVolumeButton](gtk3-GtkVolumeButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L12)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L14)</span>


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

