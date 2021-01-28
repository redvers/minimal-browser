```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkGesture val"]
*/
use "../gobject"
class val GtkGesture is GtkWidget
"""
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
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* get_bounding_box unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* get_bounding_box_center unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_device unavailable due to return typing issues
{:argctype, "GdkDevice*"}
{:argname, "rv"}
{:argtype, "Gdk.Device"}
{:paramtype, :param}
{:txo, "none"} */

/* get_group unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* get_last_event unavailable due to return typing issues
{:argctype, "const GdkEvent*"}
{:argname, "rv"}
{:argtype, "Gdk.Event"}
{:paramtype, :param}
{:txo, "none"} */

/* get_last_updated_sequence unavailable due to return typing issues
{:argctype, "GdkEventSequence*"}
{:argname, "rv"}
{:argtype, "Gdk.EventSequence"}
{:paramtype, :param}
{:txo, "none"} */

/* get_point unavailable due to typing issues
 {:doh, %{argctype: "GdkEventSequence*", argname: "sequence", argtype: "Gdk.EventSequence", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_sequence_state unavailable due to return typing issues
{:argctype, "GtkEventSequenceState"}
{:argname, "rv"}
{:argtype, "EventSequenceState"}
{:paramtype, :param}
{:txo, "none"} */

/* get_sequences unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* get_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* group unavailable due to typing issues
 {:doh, %{argctype: "GtkGesture*", argname: "gesture", argtype: "Gesture", paramtype: :param, txo: "none"}}
*/

/* handles_sequence unavailable due to typing issues
 {:doh, %{argctype: "GdkEventSequence*", argname: "sequence", argtype: "Gdk.EventSequence", paramtype: :param, txo: "none"}}
*/

fun is_active(): Bool =>
"""
Returns %TRUE if the gesture is currently active.
A gesture is active meanwhile there are touch sequences
interacting with it.
"""
  @gtk_gesture_is_active[Bool](widget)

/* is_grouped_with unavailable due to typing issues
 {:doh, %{argctype: "GtkGesture*", argname: "other", argtype: "Gesture", paramtype: :param, txo: "none"}}
*/

fun is_recognized(): Bool =>
"""
Returns %TRUE if the gesture is currently recognized.
A gesture is recognized if there are as many interacting
touch sequences as required by @gesture, and #GtkGesture::check
returned %TRUE for the sequences being currently interpreted.
"""
  @gtk_gesture_is_recognized[Bool](widget)

/* set_sequence_state unavailable due to typing issues
 {:doh, %{argctype: "GdkEventSequence*", argname: "sequence", argtype: "Gdk.EventSequence", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkEventSequenceState", argname: "state", argtype: "EventSequenceState", paramtype: :param, txo: "none"}}
*/

/* set_state unavailable due to typing issues
 {:doh, %{argctype: "GtkEventSequenceState", argname: "state", argtype: "EventSequenceState", paramtype: :param, txo: "none"}}
*/

/* set_window unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

fun ungroup(): None =>
"""
Separates @gesture into an isolated group.
"""
  @gtk_gesture_ungroup[None](widget)


```````