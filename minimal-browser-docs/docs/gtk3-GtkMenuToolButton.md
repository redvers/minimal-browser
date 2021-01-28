# GtkMenuToolButton
<span class="source-link">[[Source]](src/gtk3/GtkMenuToolButton.md#L6)</span>

A #GtkMenuToolButton is a #GtkToolItem that contains a button and
a small additional button with an arrow. When clicked, the arrow
button pops up a dropdown menu.

Use gtk_menu_tool_button_new() to create a new
#GtkMenuToolButton.

# GtkMenuToolButton as GtkBuildable

The GtkMenuToolButton implementation of the GtkBuildable interface
supports adding a menu by specifying “menu” as the “type” attribute
of a <child> element.

An example for a UI definition fragment with menus:
|[
<object class="GtkMenuToolButton">
  <child type="menu">
    <object class="GtkMenu"/>
  </child>
</object>
]|


```pony
class val GtkMenuToolButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkMenuToolButton.md#L34)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkMenuToolButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkMenuToolButton](gtk3-GtkMenuToolButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuToolButton.md#L37)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuToolButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuToolButton](gtk3-GtkMenuToolButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuToolButton.md#L40)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkMenuToolButton val^
```

#### Returns

* [GtkMenuToolButton](gtk3-GtkMenuToolButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkMenuToolButton.md#L44)</span>


```pony
new val create(
  icon_widget_pony: GtkWidget val,
  label_pony: String val)
: GtkMenuToolButton val^
```
#### Parameters

*   icon_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkMenuToolButton](gtk3-GtkMenuToolButton.md) val^

---

### new_from_stock
<span class="source-link">[[Source]](src/gtk3/GtkMenuToolButton.md#L47)</span>


```pony
new val new_from_stock(
  stock_id_pony: String val)
: GtkMenuToolButton val^
```
#### Parameters

*   stock_id_pony: [String](builtin-String.md) val

#### Returns

* [GtkMenuToolButton](gtk3-GtkMenuToolButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuToolButton.md#L30)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuToolButton.md#L32)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### set_menu
<span class="source-link">[[Source]](src/gtk3/GtkMenuToolButton.md#L64)</span>


Sets the #GtkMenu that is popped up when the user clicks on the arrow.
If @menu is NULL, the arrow button becomes insensitive.


```pony
fun box set_menu(
  menu_pony: GtkWidget val)
: None val
```
#### Parameters

*   menu_pony: [GtkWidget](gtk3-GtkWidget.md) val

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

