# GtkToolItem
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L6)</span>

#GtkToolItems are widgets that can appear on a toolbar. To
create a toolbar item that contain something else than a button, use
gtk_tool_item_new(). Use gtk_container_add() to add a child
widget to the tool item.

For toolbar items that contain buttons, see the #GtkToolButton,
#GtkToggleToolButton and #GtkRadioToolButton classes.

See the #GtkToolbar class for a description of the toolbar widget, and
#GtkToolShell for a description of the tool shell interface.


```pony
class val GtkToolItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L23)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkToolItem val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkToolItem](gtk3-GtkToolItem.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L26)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolItem val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolItem](gtk3-GtkToolItem.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L29)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkToolItem val^
```

#### Returns

* [GtkToolItem](gtk3-GtkToolItem.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L33)</span>


```pony
new val create()
: GtkToolItem val^
```

#### Returns

* [GtkToolItem](gtk3-GtkToolItem.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L19)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L21)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_expand
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L44)</span>


Returns whether @tool_item is allocated extra space.
See gtk_tool_item_set_expand().


```pony
fun box get_expand()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L51)</span>


Returns whether @tool_item is the same size as other homogeneous
items. See gtk_tool_item_set_homogeneous().


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_is_important
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L65)</span>


Returns whether @tool_item is considered important. See
gtk_tool_item_set_is_important()


```pony
fun box get_is_important()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_drag_window
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L118)</span>


Returns whether @tool_item has a drag window. See
gtk_tool_item_set_use_drag_window().


```pony
fun box get_use_drag_window()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_horizontal
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L125)</span>


Returns whether the @tool_item is visible on toolbars that are
docked horizontally.


```pony
fun box get_visible_horizontal()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_vertical
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L132)</span>


Returns whether @tool_item is visible when the toolbar is docked vertically.
See gtk_tool_item_set_visible_vertical().


```pony
fun box get_visible_vertical()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### rebuild_menu
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L139)</span>


Calling this function signals to the toolbar that the
overflow menu item for @tool_item has changed. If the
overflow menu is visible when this function it called,
the menu will be rebuilt.

The function must be called when the tool item changes what it
will do in response to the #GtkToolItem::create-menu-proxy signal.


```pony
fun box rebuild_menu()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_expand
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L156)</span>


Sets whether @tool_item is allocated extra space when there
is more room on the toolbar then needed for the items. The
effect is that the item gets bigger when the toolbar gets bigger
and smaller when the toolbar gets smaller.


```pony
fun box set_expand(
  expand_pony: Bool val)
: None val
```
#### Parameters

*   expand_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L165)</span>


Sets whether @tool_item is to be allocated the same size as other
homogeneous items. The effect is that all homogeneous items will have
the same width as the widest of the items.


```pony
fun box set_homogeneous(
  homogeneous_pony: Bool val)
: None val
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_is_important
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L173)</span>


Sets whether @tool_item should be considered important. The #GtkToolButton
class uses this property to determine whether to show or hide its label
when the toolbar style is %GTK_TOOLBAR_BOTH_HORIZ. The result is that
only tool buttons with the “is_important” property set have labels, an
effect known as “priority text”


```pony
fun box set_is_important(
  is_important_pony: Bool val)
: None val
```
#### Parameters

*   is_important_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_drag_window
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L195)</span>


Sets whether @tool_item has a drag window. When %TRUE the
toolitem can be used as a drag source through gtk_drag_source_set().
When @tool_item has a drag window it will intercept all events,
even those that would otherwise be sent to a child of @tool_item.


```pony
fun box set_use_drag_window(
  use_drag_window_pony: Bool val)
: None val
```
#### Parameters

*   use_drag_window_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible_horizontal
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L204)</span>


Sets whether @tool_item is visible when the toolbar is docked horizontally.


```pony
fun box set_visible_horizontal(
  visible_horizontal_pony: Bool val)
: None val
```
#### Parameters

*   visible_horizontal_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible_vertical
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L210)</span>


Sets whether @tool_item is visible when the toolbar is docked
vertically. Some tool items, such as text entries, are too wide to be
useful on a vertically docked toolbar. If @visible_vertical is %FALSE
@tool_item will not appear on toolbars that are docked vertically.


```pony
fun box set_visible_vertical(
  visible_vertical_pony: Bool val)
: None val
```
#### Parameters

*   visible_vertical_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### toolbar_reconfigured
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L219)</span>


Emits the signal #GtkToolItem::toolbar_reconfigured on @tool_item.
#GtkToolbar and other #GtkToolShell implementations use this function
to notify children, when some aspect of their configuration changes.


```pony
fun box toolbar_reconfigured()
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

