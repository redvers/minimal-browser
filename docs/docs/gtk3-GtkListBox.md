# GtkListBox
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L6)</span>

A GtkListBox is a vertical container that contains GtkListBoxRow
children. These rows can by dynamically sorted and filtered, and
headers can be added dynamically depending on the row content.
It also allows keyboard and mouse navigation and selection like
a typical list.

Using GtkListBox is often an alternative to #GtkTreeView, especially
when the list contents has a more complicated layout than what is allowed
by a #GtkCellRenderer, or when the contents is interactive (i.e. has a
button in it).

Although a #GtkListBox must have only #GtkListBoxRow children you can
add any kind of widget to it via gtk_container_add(), and a #GtkListBoxRow
widget will automatically be inserted between the list and the widget.

#GtkListBoxRows can be marked as activatable or selectable. If a row
is activatable, #GtkListBox::row-activated will be emitted for it when
the user tries to activate it. If it is selectable, the row will be marked
as selected when the user tries to select it.

The GtkListBox widget was added in GTK+ 3.10.

# GtkListBox as GtkBuildable

The GtkListBox implementation of the #GtkBuildable interface supports
setting a child as the placeholder by specifying “placeholder” as the “type”
attribute of a <child> element. See gtk_list_box_set_placeholder() for info.

# CSS nodes

|[<!-- language="plain" -->
list
╰── row[.activatable]
]|

GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
a single CSS node named row. The row nodes get the .activatable
style class added when appropriate.


```pony
class val GtkListBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L51)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkListBox val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L54)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkListBox val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L57)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkListBox val^
```

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L61)</span>


```pony
new val create()
: GtkListBox val^
```

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L47)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L49)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### drag_unhighlight_row
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L76)</span>


If a row has previously been highlighted via gtk_list_box_drag_highlight_row()
it will have the highlight removed.


```pony
fun box drag_unhighlight_row()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_activate_on_single_click
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L83)</span>


Returns whether rows activate on single clicks.


```pony
fun box get_activate_on_single_click()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### insert
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L131)</span>


Insert the @child into the @box at @position. If a sort function is
set, the widget will actually be inserted at the calculated position and
this function has the same effect of gtk_container_add().

If @position is -1, or larger than the total number of items in the
@box, then the @child will be appended to the end.


```pony
fun box insert(
  child_pony: GtkWidget val,
  position_pony: I32 val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### invalidate_filter
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L142)</span>


Update the filtering for all rows. Call this when result
of the filter function on the @box is changed due
to an external factor. For instance, this would be used
if the filter function just looked for a specific search
string and the entry with the search string has changed.


```pony
fun box invalidate_filter()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### invalidate_headers
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L152)</span>


Update the separators for all rows. Call this when result
of the header function on the @box is changed due
to an external factor.


```pony
fun box invalidate_headers()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### invalidate_sort
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L160)</span>


Update the sorting for all rows. Call this when result
of the sort function on the @box is changed due
to an external factor.


```pony
fun box invalidate_sort()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### prepend
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L168)</span>


Prepend a widget to the list. If a sort function is set, the widget will
actually be inserted at the calculated position and this function has the
same effect of gtk_container_add().


```pony
fun box prepend(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### select_all
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L176)</span>


Select all children of @box, if the selection mode allows it.


```pony
fun box select_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_activate_on_single_click
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L191)</span>


If @single is %TRUE, rows will be activated when you click on them,
otherwise you need to double-click.


```pony
fun box set_activate_on_single_click(
  single_pony: Bool val)
: None val
```
#### Parameters

*   single_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_placeholder
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L214)</span>


Sets the placeholder widget that is shown in the list when
it doesn't display any visible children.


```pony
fun box set_placeholder(
  placeholder_pony: GtkWidget val)
: None val
```
#### Parameters

*   placeholder_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### unselect_all
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L231)</span>


Unselect all children of @box, if the selection mode allows it.


```pony
fun box unselect_all()
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

