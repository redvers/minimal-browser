# GtkGestureSwipe
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L6)</span>

#GtkGestureSwipe is a #GtkGesture implementation able to recognize
swipes, after a press/move/.../move/release sequence happens, the
#GtkGestureSwipe::swipe signal will be emitted, providing the velocity
and directionality of the sequence at the time it was lifted.

If the velocity is desired in intermediate points,
gtk_gesture_swipe_get_velocity() can be called on eg. a
#GtkGesture::update handler.

All velocities are reported in pixels/sec units.


```pony
class val GtkGestureSwipe is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L23)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkGestureSwipe val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkGestureSwipe](gtk3-GtkGestureSwipe.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L26)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGestureSwipe val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGestureSwipe](gtk3-GtkGestureSwipe.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L29)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkGestureSwipe val^
```

#### Returns

* [GtkGestureSwipe](gtk3-GtkGestureSwipe.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L33)</span>


```pony
new val create(
  widget_pony: GtkWidget val)
: GtkGestureSwipe val^
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [GtkGestureSwipe](gtk3-GtkGestureSwipe.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L19)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L21)</span>


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

