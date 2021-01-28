# GtkListBoxRow
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L6)</span>

No documentation provided


```pony
class val GtkListBoxRow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L14)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkListBoxRow val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L17)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkListBoxRow val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L20)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkListBoxRow val^
```

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L24)</span>


```pony
new val create()
: GtkListBoxRow val^
```

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### changed
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L28)</span>


Marks @row as changed, causing any state that depends on this
to be updated. This affects sorting, filtering and headers.

Note that calls to this method must be in sync with the data
used for the row functions. For instance, if the list is
mirroring some external data set, and *two* rows changed in the
external data set then when you call gtk_list_box_row_changed()
on the first row the sort function must only read the new data
for the first of the two changed rows, otherwise the resorting
of the rows will be wrong.

This generally means that if you don’t fully control the data
model you have to duplicate the data that affects the listbox
row functions into the row widgets themselves. Another alternative
is to call gtk_list_box_invalidate_sort() on any model change,
but that is more expensive.


```pony
fun box changed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_activatable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L49)</span>


Gets the value of the #GtkListBoxRow:activatable property
for this row.


```pony
fun box get_activatable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_index
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L61)</span>


Gets the current index of the @row in its #GtkListBox container.


```pony
fun box get_index()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_selectable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L67)</span>


Gets the value of the #GtkListBoxRow:selectable property
for this row.


```pony
fun box get_selectable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_selected
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L74)</span>


Returns whether the child is currently selected in its
#GtkListBox container.


```pony
fun box is_selected()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_activatable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L81)</span>


Set the #GtkListBoxRow:activatable property for this row.


```pony
fun box set_activatable(
  activatable_pony: Bool val)
: None val
```
#### Parameters

*   activatable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_header
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L87)</span>


Sets the current header of the @row. This is only allowed to be called
from a #GtkListBoxUpdateHeaderFunc. It will replace any existing
header in the row, and be shown in front of the row in the listbox.


```pony
fun box set_header(
  header_pony: GtkWidget val)
: None val
```
#### Parameters

*   header_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_selectable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L95)</span>


Set the #GtkListBoxRow:selectable property for this row.


```pony
fun box set_selectable(
  selectable_pony: Bool val)
: None val
```
#### Parameters

*   selectable_pony: [Bool](builtin-Bool.md) val

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

