# GtkHandleBox
<span class="source-link">[[Source]](src/gtk3/GtkHandleBox.md#L6)</span>

The #GtkHandleBox widget allows a portion of a window to be "torn
off". It is a bin widget which displays its child and a handle that
the user can drag to tear off a separate window (the “float
window”) containing the child widget. A thin
“ghost” is drawn in the original location of the
handlebox. By dragging the separate window back to its original
location, it can be reattached.

When reattaching, the ghost and float window, must be aligned
along one of the edges, the “snap edge”.
This either can be specified by the application programmer
explicitly, or GTK+ will pick a reasonable default based
on the handle position.

To make detaching and reattaching the handlebox as minimally confusing
as possible to the user, it is important to set the snap edge so that
the snap edge does not move when the handlebox is deattached. For
instance, if the handlebox is packed at the bottom of a VBox, then
when the handlebox is detached, the bottom edge of the handlebox's
allocation will remain fixed as the height of the handlebox shrinks,
so the snap edge should be set to %GTK_POS_BOTTOM.

> #GtkHandleBox has been deprecated. It is very specialized, lacks features
> to make it useful and most importantly does not fit well into modern
> application design. Do not use it. There is no replacement.


```pony
class val GtkHandleBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkHandleBox.md#L38)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkHandleBox val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkHandleBox](gtk3-GtkHandleBox.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHandleBox.md#L41)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHandleBox val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHandleBox](gtk3-GtkHandleBox.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHandleBox.md#L44)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkHandleBox val^
```

#### Returns

* [GtkHandleBox](gtk3-GtkHandleBox.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHandleBox.md#L48)</span>


```pony
new val create()
: GtkHandleBox val^
```

#### Returns

* [GtkHandleBox](gtk3-GtkHandleBox.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHandleBox.md#L34)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHandleBox.md#L36)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_child_detached
<span class="source-link">[[Source]](src/gtk3/GtkHandleBox.md#L52)</span>


Whether the handlebox’s child is currently detached.


```pony
fun box get_child_detached()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

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

