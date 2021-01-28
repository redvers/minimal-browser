# GtkAdjustment
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L6)</span>

The #GtkAdjustment object represents a value which has an associated lower
and upper bound, together with step and page increments, and a page size.
It is used within several GTK+ widgets, including #GtkSpinButton, #GtkViewport,
and #GtkRange (which is a base class for #GtkScrollbar and #GtkScale).

The #GtkAdjustment object does not update the value itself. Instead
it is left up to the owner of the #GtkAdjustment to control the value.


```pony
class val GtkAdjustment is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L20)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAdjustment val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAdjustment](gtk3-GtkAdjustment.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L23)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAdjustment val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAdjustment](gtk3-GtkAdjustment.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L26)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAdjustment val^
```

#### Returns

* [GtkAdjustment](gtk3-GtkAdjustment.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L30)</span>


```pony
new val create(
  value_pony: F64 val,
  lower_pony: F64 val,
  upper_pony: F64 val,
  step_increment_pony: F64 val,
  page_increment_pony: F64 val,
  page_size_pony: F64 val)
: GtkAdjustment val^
```
#### Parameters

*   value_pony: [F64](builtin-F64.md) val
*   lower_pony: [F64](builtin-F64.md) val
*   upper_pony: [F64](builtin-F64.md) val
*   step_increment_pony: [F64](builtin-F64.md) val
*   page_increment_pony: [F64](builtin-F64.md) val
*   page_size_pony: [F64](builtin-F64.md) val

#### Returns

* [GtkAdjustment](gtk3-GtkAdjustment.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L18)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### changed
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L34)</span>


Emits a #GtkAdjustment::changed signal from the #GtkAdjustment.
This is typically called by the owner of the #GtkAdjustment after it has
changed any of the #GtkAdjustment properties other than the value.


```pony
fun box changed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### value_changed
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L129)</span>


Emits a #GtkAdjustment::value-changed signal from the #GtkAdjustment.
This is typically called by the owner of the #GtkAdjustment after it has
changed the #GtkAdjustment:value property.


```pony
fun box value_changed()
: None val
```

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

