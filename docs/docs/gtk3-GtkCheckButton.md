# GtkCheckButton
<span class="source-link">[[Source]](src/gtk3/GtkCheckButton.md#L6)</span>

A #GtkCheckButton places a discrete #GtkToggleButton next to a widget,
(usually a #GtkLabel). See the section on #GtkToggleButton widgets for
more information about toggle/check buttons.

The important signal ( #GtkToggleButton::toggled ) is also inherited from
#GtkToggleButton.

# CSS nodes

|[<!-- language="plain" -->
checkbutton
├── check
╰── <child>
]|

A GtkCheckButton with indicator (see gtk_toggle_button_set_mode()) has a
main CSS node with name checkbutton and a subnode with name check.

|[<!-- language="plain" -->
button.check
├── check
╰── <child>
]|

A GtkCheckButton without indicator changes the name of its main node
to button and adds a .check style class to it. The subnode is invisible
in this case.


```pony
class val GtkCheckButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCheckButton.md#L40)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCheckButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCheckButton](gtk3-GtkCheckButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCheckButton.md#L43)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCheckButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCheckButton](gtk3-GtkCheckButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCheckButton.md#L46)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCheckButton val^
```

#### Returns

* [GtkCheckButton](gtk3-GtkCheckButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCheckButton.md#L50)</span>


```pony
new val create()
: GtkCheckButton val^
```

#### Returns

* [GtkCheckButton](gtk3-GtkCheckButton.md) val^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkCheckButton.md#L53)</span>


```pony
new val new_with_label(
  label_pony: String val)
: GtkCheckButton val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkCheckButton](gtk3-GtkCheckButton.md) val^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkCheckButton.md#L56)</span>


```pony
new val new_with_mnemonic(
  label_pony: String val)
: GtkCheckButton val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkCheckButton](gtk3-GtkCheckButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCheckButton.md#L36)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCheckButton.md#L38)</span>


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

