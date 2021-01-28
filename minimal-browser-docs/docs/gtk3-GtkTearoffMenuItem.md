# GtkTearoffMenuItem
<span class="source-link">[[Source]](src/gtk3/GtkTearoffMenuItem.md#L6)</span>

A #GtkTearoffMenuItem is a special #GtkMenuItem which is used to
tear off and reattach its menu.

When its menu is shown normally, the #GtkTearoffMenuItem is drawn as a
dotted line indicating that the menu can be torn off.  Activating it
causes its menu to be torn off and displayed in its own window
as a tearoff menu.

When its menu is shown as a tearoff menu, the #GtkTearoffMenuItem is drawn
as a dotted line which has a left pointing arrow graphic indicating that
the tearoff menu can be reattached.  Activating it will erase the tearoff
menu window.

> #GtkTearoffMenuItem is deprecated and should not be used in newly
> written code. Menus are not meant to be torn around.


```pony
class val GtkTearoffMenuItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTearoffMenuItem.md#L28)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTearoffMenuItem val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTearoffMenuItem](gtk3-GtkTearoffMenuItem.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTearoffMenuItem.md#L31)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTearoffMenuItem val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTearoffMenuItem](gtk3-GtkTearoffMenuItem.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTearoffMenuItem.md#L34)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTearoffMenuItem val^
```

#### Returns

* [GtkTearoffMenuItem](gtk3-GtkTearoffMenuItem.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTearoffMenuItem.md#L38)</span>


```pony
new val create()
: GtkTearoffMenuItem val^
```

#### Returns

* [GtkTearoffMenuItem](gtk3-GtkTearoffMenuItem.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTearoffMenuItem.md#L24)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTearoffMenuItem.md#L26)</span>


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

