# GtkComboBoxText
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L6)</span>

A GtkComboBoxText is a simple variant of #GtkComboBox that hides
the model-view complexity for simple text-only use cases.

To create a GtkComboBoxText, use gtk_combo_box_text_new() or
gtk_combo_box_text_new_with_entry().

You can add items to a GtkComboBoxText with
gtk_combo_box_text_append_text(), gtk_combo_box_text_insert_text()
or gtk_combo_box_text_prepend_text() and remove options with
gtk_combo_box_text_remove().

If the GtkComboBoxText contains an entry (via the “has-entry” property),
its contents can be retrieved using gtk_combo_box_text_get_active_text().
The entry itself can be accessed by calling gtk_bin_get_child() on the
combo box.

You should not call gtk_combo_box_set_model() or attempt to pack more cells
into this combo box via its GtkCellLayout interface.

# GtkComboBoxText as GtkBuildable

The GtkComboBoxText implementation of the GtkBuildable interface supports
adding items directly using the <items> element and specifying <item>
elements for each item. Each <item> element can specify the “id”
corresponding to the appended text and also supports the regular
translation attributes “translatable”, “context” and “comments”.

Here is a UI definition fragment specifying GtkComboBoxText items:
|[
<object class="GtkComboBoxText">
  <items>
    <item translatable="yes" id="factory">Factory</item>
    <item translatable="yes" id="home">Home</item>
    <item translatable="yes" id="subway">Subway</item>
  </items>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
combobox
╰── box.linked
    ├── entry.combo
    ├── button.combo
    ╰── window.popup
]|

GtkComboBoxText has a single CSS node with name combobox. It adds
the style class .combo to the main CSS nodes of its entry and button
children, and the .linked class to the node of its internal box.


```pony
class val GtkComboBoxText is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L64)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkComboBoxText val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L67)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkComboBoxText val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L70)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkComboBoxText val^
```

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L74)</span>


```pony
new val create()
: GtkComboBoxText val^
```

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

### new_with_entry
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L77)</span>


```pony
new val new_with_entry()
: GtkComboBoxText val^
```

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L60)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L62)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### remove
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L115)</span>


Removes the string at @position from @combo_box.


```pony
fun box remove(
  position_pony: I32 val)
: None val
```
#### Parameters

*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### remove_all
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L121)</span>


Removes all the text entries from the combo box.


```pony
fun box remove_all()
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

