# GtkMenuItem
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L6)</span>

The #GtkMenuItem widget and the derived widgets are the only valid
children for menus. Their function is to correctly handle highlighting,
alignment, events and submenus.

As a GtkMenuItem derives from #GtkBin it can hold any valid child widget,
although only a few are really useful.

By default, a GtkMenuItem sets a #GtkAccelLabel as its child.
GtkMenuItem has direct functions to set the label and its mnemonic.
For more advanced label settings, you can fetch the child widget from the GtkBin.

An example for setting markup and accelerator on a MenuItem:
|[<!-- language="C" -->
GtkWidget *menu_item = gtk_menu_item_new_with_label ("Example Menu Item");

GtkWidget *child = gtk_bin_get_child (GTK_BIN (menu_item));
gtk_label_set_markup (GTK_LABEL (child), "<i>new label</i> with <b>markup</b>");
gtk_accel_label_set_accel (GTK_ACCEL_LABEL (child), GDK_KEY_1, 0);
]|

# GtkMenuItem as GtkBuildable

The GtkMenuItem implementation of the #GtkBuildable interface supports
adding a submenu by specifying “submenu” as the “type” attribute of
a <child> element.

An example of UI definition fragment with submenus:
|[
<object class="GtkMenuItem">
  <child type="submenu">
    <object class="GtkMenu"/>
  </child>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
menuitem
├── <child>
╰── [arrow.right]
]|

GtkMenuItem has a single CSS node with name menuitem. If the menuitem
has a submenu, it gets another CSS node with name arrow, which has
the .left or .right style class.


```pony
class val GtkMenuItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L59)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkMenuItem val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L62)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuItem val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L65)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkMenuItem val^
```

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L69)</span>


```pony
new val create()
: GtkMenuItem val^
```

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) val^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L72)</span>


```pony
new val new_with_label(
  label_pony: String val)
: GtkMenuItem val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) val^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L75)</span>


```pony
new val new_with_mnemonic(
  label_pony: String val)
: GtkMenuItem val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L55)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L57)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### activate
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L79)</span>


Emits the #GtkMenuItem::activate signal on the given item


```pony
fun box activate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deselect
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L85)</span>


Emits the #GtkMenuItem::deselect signal on the given item.


```pony
fun box deselect()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_accel_path
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L91)</span>


Retrieve the accelerator path that was previously set on @menu_item.

See gtk_menu_item_set_accel_path() for details.


```pony
fun box get_accel_path()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L101)</span>


Sets @text on the @menu_item label


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_reserve_indicator
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L109)</span>


Returns whether the @menu_item reserves space for
the submenu indicator, regardless if it has a submenu
or not.


```pony
fun box get_reserve_indicator()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_right_justified
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L117)</span>


Gets whether the menu item appears justified at the right
side of the menu bar.


```pony
fun box get_right_justified()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L129)</span>


Checks if an underline in the text indicates the next character
should be used for the mnemonic accelerator key.


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### select
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L136)</span>


Emits the #GtkMenuItem::select signal on the given item.


```pony
fun box select()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_reserve_indicator
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L150)</span>


Sets whether the @menu_item should reserve space for
the submenu indicator, regardless if it actually has
a submenu or not.

There should be little need for applications to call
this functions.


```pony
fun box set_reserve_indicator(
  reserve_pony: Bool val)
: None val
```
#### Parameters

*   reserve_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_right_justified
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L161)</span>


Sets whether the menu item appears justified at the right
side of a menu bar. This was traditionally done for “Help”
menu items, but is now considered a bad idea. (If the widget
layout is reversed for a right-to-left language like Hebrew
or Arabic, right-justified-menu-items appear at the left.)


```pony
fun box set_right_justified(
  right_justified_pony: Bool val)
: None val
```
#### Parameters

*   right_justified_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L175)</span>


If true, an underline in the text indicates the next character
should be used for the mnemonic accelerator key.


```pony
fun box set_use_underline(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### toggle_size_allocate
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L182)</span>


Emits the #GtkMenuItem::toggle-size-allocate signal on the given item.


```pony
fun box toggle_size_allocate(
  allocation_pony: I32 val)
: None val
```
#### Parameters

*   allocation_pony: [I32](builtin-I32.md) val

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

