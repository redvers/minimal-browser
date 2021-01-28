# GtkFlowBoxChild
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L6)</span>

No documentation provided


```pony
class val GtkFlowBoxChild is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L14)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkFlowBoxChild val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkFlowBoxChild](gtk3-GtkFlowBoxChild.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L17)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFlowBoxChild val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFlowBoxChild](gtk3-GtkFlowBoxChild.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L20)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkFlowBoxChild val^
```

#### Returns

* [GtkFlowBoxChild](gtk3-GtkFlowBoxChild.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L24)</span>


```pony
new val create()
: GtkFlowBoxChild val^
```

#### Returns

* [GtkFlowBoxChild](gtk3-GtkFlowBoxChild.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### changed
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L28)</span>


Marks @child as changed, causing any state that depends on this
to be updated. This affects sorting and filtering.

Note that calls to this method must be in sync with the data
used for the sorting and filtering functions. For instance, if
the list is mirroring some external data set, and *two* children
changed in the external data set when you call
gtk_flow_box_child_changed() on the first child, the sort function
must only read the new data for the first of the two changed
children, otherwise the resorting of the children will be wrong.

This generally means that if you don’t fully control the data
model, you have to duplicate the data that affects the sorting
and filtering functions into the widgets themselves. Another
alternative is to call gtk_flow_box_invalidate_sort() on any
model change, but that is more expensive.


```pony
fun box changed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_index
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L49)</span>


Gets the current index of the @child in its #GtkFlowBox container.


```pony
fun box get_index()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### is_selected
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L55)</span>


Returns whether the @child is currently selected in its
#GtkFlowBox container.


```pony
fun box is_selected()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

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

