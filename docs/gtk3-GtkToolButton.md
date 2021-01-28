# GtkToolButton
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L6)</span>

#GtkToolButtons are #GtkToolItems containing buttons.

Use gtk_tool_button_new() to create a new #GtkToolButton.

The label of a #GtkToolButton is determined by the properties
#GtkToolButton:label-widget, #GtkToolButton:label, and
#GtkToolButton:stock-id. If #GtkToolButton:label-widget is
non-%NULL, then that widget is used as the label. Otherwise, if
#GtkToolButton:label is non-%NULL, that string is used as the label.
Otherwise, if #GtkToolButton:stock-id is non-%NULL, the label is
determined by the stock item. Otherwise, the button does not have a label.

The icon of a #GtkToolButton is determined by the properties
#GtkToolButton:icon-widget and #GtkToolButton:stock-id. If
#GtkToolButton:icon-widget is non-%NULL, then
that widget is used as the icon. Otherwise, if #GtkToolButton:stock-id is
non-%NULL, the icon is determined by the stock item. Otherwise,
the button does not have a icon.

# CSS nodes

GtkToolButton has a single CSS node with name toolbutton.


```pony
class val GtkToolButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L35)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkToolButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkToolButton](gtk3-GtkToolButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L38)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolButton](gtk3-GtkToolButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L41)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkToolButton val^
```

#### Returns

* [GtkToolButton](gtk3-GtkToolButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L45)</span>


```pony
new val create(
  icon_widget_pony: GtkWidget val,
  label_pony: String val)
: GtkToolButton val^
```
#### Parameters

*   icon_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToolButton](gtk3-GtkToolButton.md) val^

---

### new_from_stock
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L48)</span>


```pony
new val new_from_stock(
  stock_id_pony: String val)
: GtkToolButton val^
```
#### Parameters

*   stock_id_pony: [String](builtin-String.md) val

#### Returns

* [GtkToolButton](gtk3-GtkToolButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L31)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L33)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L52)</span>


Returns the name of the themed icon for the tool button,
see gtk_tool_button_set_icon_name().


```pony
fun box get_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L66)</span>


Returns the label used by the tool button, or %NULL if the tool button
doesn’t have a label. or uses a the label from a stock item. The returned
string is owned by GTK+, and must not be modified or freed.


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_stock_id
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L81)</span>


Returns the name of the stock item. See gtk_tool_button_set_stock_id().
The returned string is owned by GTK+ and must not be freed or modifed.


```pony
fun box get_stock_id()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L90)</span>


Returns whether underscores in the label property are used as mnemonics
on menu items on the overflow menu. See gtk_tool_button_set_use_underline().


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_icon_widget
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L101)</span>


Sets @icon as the widget used as icon on @button. If @icon_widget is
%NULL the icon is determined by the #GtkToolButton:stock-id property. If the
#GtkToolButton:stock-id property is also %NULL, @button will not have an icon.


```pony
fun box set_icon_widget(
  icon_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   icon_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_label_widget
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L113)</span>


Sets @label_widget as the widget that will be used as the label
for @button. If @label_widget is %NULL the #GtkToolButton:label property is used
as label. If #GtkToolButton:label is also %NULL, the label in the stock item
determined by the #GtkToolButton:stock-id property is used as label. If
#GtkToolButton:stock-id is also %NULL, @button does not have a label.


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

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L127)</span>


If set, an underline in the label property indicates that the next character
should be used for the mnemonic accelerator key in the overflow menu. For
example, if the label property is “_Open” and @use_underline is %TRUE,
the label on the tool button will be “Open” and the item on the overflow
menu will have an underlined “O”.

Labels shown on tool buttons never have mnemonics on them; this property
only affects the menu item on the overflow menu.


```pony
fun box set_use_underline(
  use_underline_pony: Bool val)
: None val
```
#### Parameters

*   use_underline_pony: [Bool](builtin-Bool.md) val

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

