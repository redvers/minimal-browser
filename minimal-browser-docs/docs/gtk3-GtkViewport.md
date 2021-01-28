# GtkViewport
<span class="source-link">[[Source]](src/gtk3/GtkViewport.md#L6)</span>

The #GtkViewport widget acts as an adaptor class, implementing
scrollability for child widgets that lack their own scrolling
capabilities. Use GtkViewport to scroll child widgets such as
#GtkGrid, #GtkBox, and so on.

If a widget has native scrolling abilities, such as #GtkTextView,
#GtkTreeView or #GtkIconView, it can be added to a #GtkScrolledWindow
with gtk_container_add(). If a widget does not, you must first add the
widget to a #GtkViewport, then add the viewport to the scrolled window.
gtk_container_add() does this automatically if a child that does not
implement #GtkScrollable is added to a #GtkScrolledWindow, so you can
ignore the presence of the viewport.

The GtkViewport will start scrolling content only if allocated less
than the child widget’s minimum size in a given orientation.

# CSS nodes

GtkViewport has a single CSS node with name viewport.


```pony
class val GtkViewport is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkViewport.md#L32)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkViewport val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkViewport](gtk3-GtkViewport.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkViewport.md#L35)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkViewport val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkViewport](gtk3-GtkViewport.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkViewport.md#L38)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkViewport val^
```

#### Returns

* [GtkViewport](gtk3-GtkViewport.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkViewport.md#L42)</span>


```pony
new val create(
  hadjustment_pony: GtkAdjustment val,
  vadjustment_pony: GtkAdjustment val)
: GtkViewport val^
```
#### Parameters

*   hadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) val
*   vadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) val

#### Returns

* [GtkViewport](gtk3-GtkViewport.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkViewport.md#L28)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkViewport.md#L30)</span>


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

