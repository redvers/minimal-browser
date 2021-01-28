# GtkToolbar
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L6)</span>

A toolbar is created with a call to gtk_toolbar_new().

A toolbar can contain instances of a subclass of #GtkToolItem. To add
a #GtkToolItem to the a toolbar, use gtk_toolbar_insert(). To remove
an item from the toolbar use gtk_container_remove(). To add a button
to the toolbar, add an instance of #GtkToolButton.

Toolbar items can be visually grouped by adding instances of
#GtkSeparatorToolItem to the toolbar. If the GtkToolbar child property
“expand” is #TRUE and the property #GtkSeparatorToolItem:draw is set to
#FALSE, the effect is to force all following items to the end of the toolbar.

By default, a toolbar can be shrunk, upon which it will add an arrow button
to show an overflow menu offering access to any #GtkToolItem child that has
a proxy menu item. To disable this and request enough size for all children,
call gtk_toolbar_set_show_arrow() to set #GtkToolbar:show-arrow to %FALSE.

Creating a context menu for the toolbar can be done by connecting to
the #GtkToolbar::popup-context-menu signal.

# CSS nodes

GtkToolbar has a single CSS node with name toolbar.


```pony
class val GtkToolbar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L36)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkToolbar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkToolbar](gtk3-GtkToolbar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L39)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolbar val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolbar](gtk3-GtkToolbar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L42)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkToolbar val^
```

#### Returns

* [GtkToolbar](gtk3-GtkToolbar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L46)</span>


```pony
new val create()
: GtkToolbar val^
```

#### Returns

* [GtkToolbar](gtk3-GtkToolbar.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L32)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L34)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_drop_index
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L50)</span>


Returns the position corresponding to the indicated point on
@toolbar. This is useful when dragging items to the toolbar:
this function returns the position a new item should be
inserted.

@x and @y are in @toolbar coordinates.


```pony
fun box get_drop_index(
  x_pony: I32 val,
  y_pony: I32 val)
: I32 val
```
#### Parameters

*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### get_n_items
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L72)</span>


Returns the number of items on the toolbar.


```pony
fun box get_n_items()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_show_arrow
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L92)</span>


Returns whether the toolbar has an overflow menu.
See gtk_toolbar_set_show_arrow().


```pony
fun box get_show_arrow()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_arrow
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L118)</span>


Sets whether to show an overflow menu when @toolbar isn’t allocated enough
size to show all of its items. If %TRUE, items which can’t fit in @toolbar,
and which have a proxy menu item set by gtk_tool_item_set_proxy_menu_item()
or #GtkToolItem::create-menu-proxy, will be available in an overflow menu,
which can be opened by an added arrow button. If %FALSE, @toolbar will
request enough size to fit all of its child items without any overflow.


```pony
fun box set_show_arrow(
  show_arrow_pony: Bool val)
: None val
```
#### Parameters

*   show_arrow_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### unset_icon_size
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L133)</span>


Unsets toolbar icon size set with gtk_toolbar_set_icon_size(), so that
user preferences will be used to determine the icon size.


```pony
fun box unset_icon_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unset_style
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L140)</span>


Unsets a toolbar style set with gtk_toolbar_set_style(), so that
user preferences will be used to determine the toolbar style.


```pony
fun box unset_style()
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

