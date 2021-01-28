# GtkGestureZoom
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L6)</span>

#GtkGestureZoom is a #GtkGesture implementation able to recognize
pinch/zoom gestures, whenever the distance between both tracked
sequences changes, the #GtkGestureZoom::scale-changed signal is
emitted to report the scale factor.


```pony
class val GtkGestureZoom is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L17)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkGestureZoom val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkGestureZoom](gtk3-GtkGestureZoom.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L20)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGestureZoom val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGestureZoom](gtk3-GtkGestureZoom.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L23)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkGestureZoom val^
```

#### Returns

* [GtkGestureZoom](gtk3-GtkGestureZoom.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L27)</span>


```pony
new val create(
  widget_pony: GtkWidget val)
: GtkGestureZoom val^
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [GtkGestureZoom](gtk3-GtkGestureZoom.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L13)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L15)</span>


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

