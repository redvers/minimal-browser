# GtkRadioAction
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L6)</span>

A #GtkRadioAction is similar to #GtkRadioMenuItem. A number of radio
actions can be linked together so that only one may be active at any
one time.


```pony
class val GtkRadioAction is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L16)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRadioAction val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L19)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRadioAction val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L22)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRadioAction val^
```

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L26)</span>


```pony
new val create(
  name_pony: String val,
  label_pony: String val,
  tooltip_pony: String val,
  stock_id_pony: String val,
  value_pony: I32 val)
: GtkRadioAction val^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val
*   label_pony: [String](builtin-String.md) val
*   tooltip_pony: [String](builtin-String.md) val
*   stock_id_pony: [String](builtin-String.md) val
*   value_pony: [I32](builtin-I32.md) val

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L12)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L14)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_current_value
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L30)</span>


Obtains the value property of the currently active member of
the group to which @action belongs.


```pony
fun box get_current_value()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### set_current_value
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L48)</span>


Sets the currently active group member to the member with value
property @current_value.


```pony
fun box set_current_value(
  current_value_pony: I32 val)
: None val
```
#### Parameters

*   current_value_pony: [I32](builtin-I32.md) val

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

