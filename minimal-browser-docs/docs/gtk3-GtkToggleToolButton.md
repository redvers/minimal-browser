# GtkToggleToolButton
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L6)</span>

A #GtkToggleToolButton is a #GtkToolItem that contains a toggle
button.

Use gtk_toggle_tool_button_new() to create a new GtkToggleToolButton.

# CSS nodes

GtkToggleToolButton has a single CSS node with name togglebutton.


```pony
class val GtkToggleToolButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L21)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkToggleToolButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkToggleToolButton](gtk3-GtkToggleToolButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L24)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToggleToolButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToggleToolButton](gtk3-GtkToggleToolButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L27)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkToggleToolButton val^
```

#### Returns

* [GtkToggleToolButton](gtk3-GtkToggleToolButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L31)</span>


```pony
new val create()
: GtkToggleToolButton val^
```

#### Returns

* [GtkToggleToolButton](gtk3-GtkToggleToolButton.md) val^

---

### new_from_stock
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L34)</span>


```pony
new val new_from_stock(
  stock_id_pony: String val)
: GtkToggleToolButton val^
```
#### Parameters

*   stock_id_pony: [String](builtin-String.md) val

#### Returns

* [GtkToggleToolButton](gtk3-GtkToggleToolButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L17)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L19)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L38)</span>


Queries a #GtkToggleToolButton and returns its current state.
Returns %TRUE if the toggle button is pressed in and %FALSE if it is raised.


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L45)</span>


Sets the status of the toggle tool button. Set to %TRUE if you
want the GtkToggleButton to be “pressed in”, and %FALSE to raise it.
This action causes the toggled signal to be emitted.


```pony
fun box set_active(
  is_active_pony: Bool val)
: None val
```
#### Parameters

*   is_active_pony: [Bool](builtin-Bool.md) val

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

