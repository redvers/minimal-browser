# GtkGesture
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L6)</span>

#GtkGesture is the base object for gesture recognition, although this
object is quite generalized to serve as a base for multi-touch gestures,
it is suitable to implement single-touch and pointer-based gestures (using
the special %NULL #GdkEventSequence value for these).

The number of touches that a #GtkGesture need to be recognized is controlled
by the #GtkGesture:n-points property, if a gesture is keeping track of less
or more than that number of sequences, it won't check wether the gesture
is recognized.

As soon as the gesture has the expected number of touches, the gesture will
run the #GtkGesture::check signal regularly on input events until the gesture
is recognized, the criteria to consider a gesture as "recognized" is left to
#GtkGesture subclasses.

A recognized gesture will then emit the following signals:
- #GtkGesture::begin when the gesture is recognized.
- A number of #GtkGesture::update, whenever an input event is processed.
- #GtkGesture::end when the gesture is no longer recognized.

## Event propagation

In order to receive events, a gesture needs to either set a propagation phase
through gtk_event_controller_set_propagation_phase(), or feed those manually
through gtk_event_controller_handle_event().

In the capture phase, events are propagated from the toplevel down to the
target widget, and gestures that are attached to containers above the widget
get a chance to interact with the event before it reaches the target.

After the capture phase, GTK+ emits the traditional #GtkWidget::button-press-event,
#GtkWidget::button-release-event, #GtkWidget::touch-event, etc signals. Gestures
with the %GTK_PHASE_TARGET phase are fed events from the default #GtkWidget::event
handlers.

In the bubble phase, events are propagated up from the target widget to the
toplevel, and gestures that are attached to containers above the widget get
a chance to interact with events that have not been handled yet.

## States of a sequence # {#touch-sequence-states}

Whenever input interaction happens, a single event may trigger a cascade of
#GtkGestures, both across the parents of the widget receiving the event and
in parallel within an individual widget. It is a responsibility of the
widgets using those gestures to set the state of touch sequences accordingly
in order to enable cooperation of gestures around the #GdkEventSequences
triggering those.

Within a widget, gestures can be grouped through gtk_gesture_group(),
grouped gestures synchronize the state of sequences, so calling
gtk_gesture_set_sequence_state() on one will effectively propagate
the state throughout the group.

By default, all sequences start out in the #GTK_EVENT_SEQUENCE_NONE state,
sequences in this state trigger the gesture event handler, but event
propagation will continue unstopped by gestures.

If a sequence enters into the #GTK_EVENT_SEQUENCE_DENIED state, the gesture
group will effectively ignore the sequence, letting events go unstopped
through the gesture, but the "slot" will still remain occupied while
the touch is active.

If a sequence enters in the #GTK_EVENT_SEQUENCE_CLAIMED state, the gesture
group will grab all interaction on the sequence, by:
- Setting the same sequence to #GTK_EVENT_SEQUENCE_DENIED on every other gesture
  group within the widget, and every gesture on parent widgets in the propagation
  chain.
- calling #GtkGesture::cancel on every gesture in widgets underneath in the
  propagation chain.
- Stopping event propagation after the gesture group handles the event.

Note: if a sequence is set early to #GTK_EVENT_SEQUENCE_CLAIMED on
#GDK_TOUCH_BEGIN/#GDK_BUTTON_PRESS (so those events are captured before
reaching the event widget, this implies #GTK_PHASE_CAPTURE), one similar
event will emulated if the sequence changes to #GTK_EVENT_SEQUENCE_DENIED.
This way event coherence is preserved before event propagation is unstopped
again.

Sequence states can't be changed freely, see gtk_gesture_set_sequence_state()
to know about the possible lifetimes of a #GdkEventSequence.

## Touchpad gestures

On the platforms that support it, #GtkGesture will handle transparently
touchpad gesture events. The only precautions users of #GtkGesture should do
to enable this support are:
- Enabling %GDK_TOUCHPAD_GESTURE_MASK on their #GdkWindows
- If the gesture has %GTK_PHASE_NONE, ensuring events of type
  %GDK_TOUCHPAD_SWIPE and %GDK_TOUCHPAD_PINCH are handled by the #GtkGesture


```pony
class val GtkGesture is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L102)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkGesture val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkGesture](gtk3-GtkGesture.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L105)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGesture val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGesture](gtk3-GtkGesture.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L108)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkGesture val^
```

#### Returns

* [GtkGesture](gtk3-GtkGesture.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L98)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L100)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### is_active
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L186)</span>


Returns %TRUE if the gesture is currently active.
A gesture is active meanwhile there are touch sequences
interacting with it.


```pony
fun box is_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_recognized
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L198)</span>


Returns %TRUE if the gesture is currently recognized.
A gesture is recognized if there are as many interacting
touch sequences as required by @gesture, and #GtkGesture::check
returned %TRUE for the sequences being currently interpreted.


```pony
fun box is_recognized()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### ungroup
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L220)</span>


Separates @gesture into an isolated group.


```pony
fun box ungroup()
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

