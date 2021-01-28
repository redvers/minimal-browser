# GtkSeparatorToolItem
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L6)</span>

A #GtkSeparatorToolItem is a #GtkToolItem that separates groups of other
#GtkToolItems. Depending on the theme, a #GtkSeparatorToolItem will
often look like a vertical line on horizontally docked toolbars.

If the #GtkToolbar child property “expand” is %TRUE and the property
#GtkSeparatorToolItem:draw is %FALSE, a #GtkSeparatorToolItem will act as
a “spring” that forces other items to the ends of the toolbar.

Use gtk_separator_tool_item_new() to create a new #GtkSeparatorToolItem.

# CSS nodes

GtkSeparatorToolItem has a single CSS node with name separator.


```pony
class val GtkSeparatorToolItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L26)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkSeparatorToolItem val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkSeparatorToolItem](gtk3-GtkSeparatorToolItem.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L29)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSeparatorToolItem val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSeparatorToolItem](gtk3-GtkSeparatorToolItem.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L32)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkSeparatorToolItem val^
```

#### Returns

* [GtkSeparatorToolItem](gtk3-GtkSeparatorToolItem.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L36)</span>


```pony
new val create()
: GtkSeparatorToolItem val^
```

#### Returns

* [GtkSeparatorToolItem](gtk3-GtkSeparatorToolItem.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L22)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L24)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_draw
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L40)</span>


Returns whether @item is drawn as a line, or just blank.
See gtk_separator_tool_item_set_draw().


```pony
fun box get_draw()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_draw
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L47)</span>


Whether @item is drawn as a vertical line, or just blank.
Setting this to %FALSE along with gtk_tool_item_set_expand() is useful
to create an item that forces following items to the end of the toolbar.


```pony
fun box set_draw(
  draw_pony: Bool val)
: None val
```
#### Parameters

*   draw_pony: [Bool](builtin-Bool.md) val

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

