# GtkLayout
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L6)</span>

#GtkLayout is similar to #GtkDrawingArea in that it’s a “blank slate” and
doesn’t do anything except paint a blank background by default. It’s
different in that it supports scrolling natively due to implementing
#GtkScrollable, and can contain child widgets since it’s a #GtkContainer.

If you just want to draw, a #GtkDrawingArea is a better choice since it has
lower overhead. If you just need to position child widgets at specific
points, then #GtkFixed provides that functionality on its own.

When handling expose events on a #GtkLayout, you must draw to the #GdkWindow
returned by gtk_layout_get_bin_window(), rather than to the one returned by
gtk_widget_get_window() as you would for a #GtkDrawingArea.


```pony
class val GtkLayout is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L25)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkLayout val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkLayout](gtk3-GtkLayout.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L28)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkLayout val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkLayout](gtk3-GtkLayout.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L31)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkLayout val^
```

#### Returns

* [GtkLayout](gtk3-GtkLayout.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L35)</span>


```pony
new val create(
  hadjustment_pony: GtkAdjustment val,
  vadjustment_pony: GtkAdjustment val)
: GtkLayout val^
```
#### Parameters

*   hadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) val
*   vadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) val

#### Returns

* [GtkLayout](gtk3-GtkLayout.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L21)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L23)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### move
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L65)</span>


Moves a current child of @layout to a new position.


```pony
fun box move(
  child_widget_pony: GtkWidget val,
  x_pony: I32 val,
  y_pony: I32 val)
: None val
```
#### Parameters

*   child_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### put
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L71)</span>


Adds @child_widget to @layout, at position (@x,@y).
@layout becomes the new parent container of @child_widget.


```pony
fun box put(
  child_widget_pony: GtkWidget val,
  x_pony: I32 val,
  y_pony: I32 val)
: None val
```
#### Parameters

*   child_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_size
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L82)</span>


Sets the size of the scrollable area of the layout.


```pony
fun box set_size(
  width_pony: U32 val,
  height_pony: U32 val)
: None val
```
#### Parameters

*   width_pony: [U32](builtin-U32.md) val
*   height_pony: [U32](builtin-U32.md) val

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

