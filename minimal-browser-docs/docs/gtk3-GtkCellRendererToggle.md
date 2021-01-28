# GtkCellRendererToggle
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L6)</span>

#GtkCellRendererToggle renders a toggle button in a cell. The
button is drawn as a radio or a checkbutton, depending on the
#GtkCellRendererToggle:radio property.
When activated, it emits the #GtkCellRendererToggle::toggled signal.


```pony
class val GtkCellRendererToggle is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L17)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCellRendererToggle val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCellRendererToggle](gtk3-GtkCellRendererToggle.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L20)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRendererToggle val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRendererToggle](gtk3-GtkCellRendererToggle.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L23)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCellRendererToggle val^
```

#### Returns

* [GtkCellRendererToggle](gtk3-GtkCellRendererToggle.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L27)</span>


```pony
new val create()
: GtkCellRendererToggle val^
```

#### Returns

* [GtkCellRendererToggle](gtk3-GtkCellRendererToggle.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L13)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L15)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_activatable
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L31)</span>


Returns whether the cell renderer is activatable. See
gtk_cell_renderer_toggle_set_activatable().


```pony
fun box get_activatable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L38)</span>


Returns whether the cell renderer is active. See
gtk_cell_renderer_toggle_set_active().


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_radio
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L45)</span>


Returns whether we’re rendering radio toggles rather than checkboxes.


```pony
fun box get_radio()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_activatable
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L51)</span>


Makes the cell renderer activatable.


```pony
fun box set_activatable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L57)</span>


Activates or deactivates a cell renderer.


```pony
fun box set_active(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_radio
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L63)</span>


If @radio is %TRUE, the cell renderer renders a radio toggle
(i.e. a toggle in a group of mutually-exclusive toggles).
If %FALSE, it renders a check toggle (a standalone boolean option).
This can be set globally for the cell renderer, or changed just
before rendering each cell in the model (for #GtkTreeView, you set
up a per-row setting using #GtkTreeViewColumn to associate model
columns with cell renderer properties).


```pony
fun box set_radio(
  radio_pony: Bool val)
: None val
```
#### Parameters

*   radio_pony: [Bool](builtin-Bool.md) val

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

