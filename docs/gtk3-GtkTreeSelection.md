# GtkTreeSelection
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L6)</span>

The #GtkTreeSelection object is a helper object to manage the selection
for a #GtkTreeView widget.  The #GtkTreeSelection object is
automatically created when a new #GtkTreeView widget is created, and
cannot exist independently of this widget.  The primary reason the
#GtkTreeSelection objects exists is for cleanliness of code and API.
That is, there is no conceptual reason all these functions could not be
methods on the #GtkTreeView widget instead of a separate function.

The #GtkTreeSelection object is gotten from a #GtkTreeView by calling
gtk_tree_view_get_selection().  It can be manipulated to check the
selection status of the tree, as well as select and deselect individual
rows.  Selection is done completely view side.  As a result, multiple
views of the same model can have completely different selections.
Additionally, you cannot change the selection of a row on the model that
is not currently displayed by the view without expanding its parents
first.

One of the important things to remember when monitoring the selection of
a view is that the #GtkTreeSelection::changed signal is mostly a hint.
That is, it may only emit one signal when a range of rows is selected.
Additionally, it may on occasion emit a #GtkTreeSelection::changed signal
when nothing has happened (mostly as a result of programmers calling
select_row on an already selected row).


```pony
class val GtkTreeSelection is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L36)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTreeSelection val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTreeSelection](gtk3-GtkTreeSelection.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L39)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTreeSelection val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTreeSelection](gtk3-GtkTreeSelection.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L42)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTreeSelection val^
```

#### Returns

* [GtkTreeSelection](gtk3-GtkTreeSelection.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L32)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L34)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### count_selected_rows
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L48)</span>


Returns the number of rows that have been selected in @tree.


```pony
fun box count_selected_rows()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### select_all
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L102)</span>


Selects all the nodes. @selection must be set to #GTK_SELECTION_MULTIPLE
mode.


```pony
fun box select_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unselect_all
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L137)</span>


Unselects all the nodes.


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

