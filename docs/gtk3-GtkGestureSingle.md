# GtkGestureSingle
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L6)</span>

#GtkGestureSingle is a subclass of #GtkGesture, optimized (although
not restricted) for dealing with mouse and single-touch gestures. Under
interaction, these gestures stick to the first interacting sequence, which
is accessible through gtk_gesture_single_get_current_sequence() while the
gesture is being interacted with.

By default gestures react to both %GDK_BUTTON_PRIMARY and touch
events, gtk_gesture_single_set_touch_only() can be used to change the
touch behavior. Callers may also specify a different mouse button number
to interact with through gtk_gesture_single_set_button(), or react to any
mouse button by setting 0. While the gesture is active, the button being
currently pressed can be known through gtk_gesture_single_get_current_button().


```pony
class val GtkGestureSingle is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L25)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkGestureSingle val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkGestureSingle](gtk3-GtkGestureSingle.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L28)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGestureSingle val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGestureSingle](gtk3-GtkGestureSingle.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L31)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkGestureSingle val^
```

#### Returns

* [GtkGestureSingle](gtk3-GtkGestureSingle.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L21)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L23)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_button
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L37)</span>


Returns the button number @gesture listens for, or 0 if @gesture
reacts to any button press.


```pony
fun box get_button()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_current_button
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L44)</span>


Returns the button number currently interacting with @gesture, or 0 if there
is none.


```pony
fun box get_current_button()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_exclusive
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L58)</span>


Gets whether a gesture is exclusive. For more information, see
gtk_gesture_single_set_exclusive().


```pony
fun box get_exclusive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_touch_only
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L65)</span>


Returns %TRUE if the gesture is only triggered by touch events.


```pony
fun box get_touch_only()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_button
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L71)</span>


Sets the button number @gesture listens to. If non-0, every
button press from a different button number will be ignored.
Touch events implicitly match with button 1.


```pony
fun box set_button(
  button_pony: U32 val)
: None val
```
#### Parameters

*   button_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_exclusive
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L79)</span>


Sets whether @gesture is exclusive. An exclusive gesture will
only handle pointer and "pointer emulated" touch events, so at
any given time, there is only one sequence able to interact with
those.


```pony
fun box set_exclusive(
  exclusive_pony: Bool val)
: None val
```
#### Parameters

*   exclusive_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_touch_only
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L88)</span>


If @touch_only is %TRUE, @gesture will only handle events of type
#GDK_TOUCH_BEGIN, #GDK_TOUCH_UPDATE or #GDK_TOUCH_END. If %FALSE,
mouse events will be handled too.


```pony
fun box set_touch_only(
  touch_only_pony: Bool val)
: None val
```
#### Parameters

*   touch_only_pony: [Bool](builtin-Bool.md) val

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

