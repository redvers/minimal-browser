# GtkVScale
<span class="source-link">[[Source]](src/gtk3/GtkVScale.md#L6)</span>

The #GtkVScale widget is used to allow the user to select a value using
a vertical slider. To create one, use gtk_hscale_new_with_range().

The position to show the current value, and the number of decimal places
shown can be set using the parent #GtkScale class’s functions.

GtkVScale has been deprecated, use #GtkScale instead.


```pony
class val GtkVScale is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkVScale.md#L20)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkVScale val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkVScale](gtk3-GtkVScale.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkVScale.md#L23)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkVScale val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkVScale](gtk3-GtkVScale.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkVScale.md#L26)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkVScale val^
```

#### Returns

* [GtkVScale](gtk3-GtkVScale.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkVScale.md#L30)</span>


```pony
new val create(
  adjustment_pony: GtkAdjustment val)
: GtkVScale val^
```
#### Parameters

*   adjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) val

#### Returns

* [GtkVScale](gtk3-GtkVScale.md) val^

---

### new_with_range
<span class="source-link">[[Source]](src/gtk3/GtkVScale.md#L33)</span>


```pony
new val new_with_range(
  min_pony: F64 val,
  max_pony: F64 val,
  step_pony: F64 val)
: GtkVScale val^
```
#### Parameters

*   min_pony: [F64](builtin-F64.md) val
*   max_pony: [F64](builtin-F64.md) val
*   step_pony: [F64](builtin-F64.md) val

#### Returns

* [GtkVScale](gtk3-GtkVScale.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkVScale.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkVScale.md#L18)</span>


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

