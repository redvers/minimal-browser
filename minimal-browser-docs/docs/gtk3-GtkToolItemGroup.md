# GtkToolItemGroup
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L6)</span>

A #GtkToolItemGroup is used together with #GtkToolPalette to add
#GtkToolItems to a palette like container with different
categories and drag and drop support.

# CSS nodes

GtkToolItemGroup has a single CSS node named toolitemgroup.


```pony
class val GtkToolItemGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L20)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkToolItemGroup val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L23)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolItemGroup val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L26)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkToolItemGroup val^
```

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L30)</span>


```pony
new val create(
  label_pony: String val)
: GtkToolItemGroup val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L18)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_collapsed
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L34)</span>


Gets whether @group is collapsed or expanded.


```pony
fun box get_collapsed()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L65)</span>


Gets the label of @group.


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_n_items
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L78)</span>


Gets the number of tool items in @group.


```pony
fun box get_n_items()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### set_collapsed
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L95)</span>


Sets whether the @group should be collapsed or expanded.


```pony
fun box set_collapsed(
  collapsed_pony: Bool val)
: None val
```
#### Parameters

*   collapsed_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_label_widget
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L117)</span>


Sets the label of the tool item group.
The label widget is displayed in the header of the group, in place
of the usual label.


```pony
fun box set_label_widget(
  label_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   label_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

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

