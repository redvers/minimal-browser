# GtkMenuButton
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L6)</span>

The #GtkMenuButton widget is used to display a popup when clicked on.
This popup can be provided either as a #GtkMenu, a #GtkPopover or an
abstract #GMenuModel.

The #GtkMenuButton widget can hold any valid child widget. That is, it
can hold almost any other standard #GtkWidget. The most commonly used
child is #GtkImage. If no widget is explicitely added to the #GtkMenuButton,
a #GtkImage is automatically created, using an arrow image oriented
according to #GtkMenuButton:direction or the generic “open-menu-symbolic”
icon if the direction is not set.

The positioning of the popup is determined by the #GtkMenuButton:direction
property of the menu button.

For menus, the #GtkWidget:halign and #GtkWidget:valign properties of the
menu are also taken into account. For example, when the direction is
%GTK_ARROW_DOWN and the horizontal alignment is %GTK_ALIGN_START, the
menu will be positioned below the button, with the starting edge
(depending on the text direction) of the menu aligned with the starting
edge of the button. If there is not enough space below the button, the
menu is popped up above the button instead. If the alignment would move
part of the menu offscreen, it is “pushed in”.

## Direction = Down

- halign = start

    ![](down-start.png)

- halign = center

    ![](down-center.png)

- halign = end

    ![](down-end.png)

## Direction = Up

- halign = start

    ![](up-start.png)

- halign = center

    ![](up-center.png)

- halign = end

    ![](up-end.png)

## Direction = Left

- valign = start

    ![](left-start.png)

- valign = center

    ![](left-center.png)

- valign = end

    ![](left-end.png)

## Direction = Right

- valign = start

    ![](right-start.png)

- valign = center

    ![](right-center.png)

- valign = end

    ![](right-end.png)

# CSS nodes

GtkMenuButton has a single CSS node with name button. To differentiate
it from a plain #GtkButton, it gets the .popup style class.


```pony
class val GtkMenuButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L96)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkMenuButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L99)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L102)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkMenuButton val^
```

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L106)</span>


```pony
new val create()
: GtkMenuButton val^
```

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L92)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L94)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_use_popover
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L143)</span>


Returns whether a #GtkPopover or a #GtkMenu will be constructed
from the menu model.


```pony
fun box get_use_popover()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_align_widget
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L150)</span>


Sets the #GtkWidget to use to line the menu with when popped up.
Note that the @align_widget must contain the #GtkMenuButton itself.

Setting it to %NULL means that the menu will be aligned with the
button itself.

Note that this property is only used with menus currently,
and not for popovers.


```pony
fun box set_align_widget(
  align_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   align_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_popover
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L171)</span>


Sets the #GtkPopover that will be popped up when the @menu_button is clicked,
or %NULL to dissociate any existing popover and disable the button.

If #GtkMenuButton:menu-model or #GtkMenuButton:popup are set, those objects
are dissociated from the @menu_button, and those properties are set to %NULL.


```pony
fun box set_popover(
  popover_pony: GtkWidget val)
: None val
```
#### Parameters

*   popover_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_popup
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L181)</span>


Sets the #GtkMenu that will be popped up when the @menu_button is clicked, or
%NULL to dissociate any existing menu and disable the button.

If #GtkMenuButton:menu-model or #GtkMenuButton:popover are set, those objects
are dissociated from the @menu_button, and those properties are set to %NULL.


```pony
fun box set_popup(
  menu_pony: GtkWidget val)
: None val
```
#### Parameters

*   menu_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_popover
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L191)</span>


Sets whether to construct a #GtkPopover instead of #GtkMenu
when gtk_menu_button_set_menu_model() is called. Note that
this property is only consulted when a new menu model is set.


```pony
fun box set_use_popover(
  use_popover_pony: Bool val)
: None val
```
#### Parameters

*   use_popover_pony: [Bool](builtin-Bool.md) val

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

