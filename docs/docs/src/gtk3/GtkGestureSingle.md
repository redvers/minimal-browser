```````pony-full-source
/*
   needs: ["U32", "Bool", "None", "GObjectREF"]
provides: ["GtkGestureSingle val"]
*/
use "../gobject"
class val GtkGestureSingle is GtkWidget
"""
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
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




fun get_button(): U32 =>
"""
Returns the button number @gesture listens for, or 0 if @gesture
reacts to any button press.
"""
  @gtk_gesture_single_get_button[U32](widget)

fun get_current_button(): U32 =>
"""
Returns the button number currently interacting with @gesture, or 0 if there
is none.
"""
  @gtk_gesture_single_get_current_button[U32](widget)

/* get_current_sequence unavailable due to return typing issues
{:argctype, "GdkEventSequence*"}
{:argname, "rv"}
{:argtype, "Gdk.EventSequence"}
{:paramtype, :param}
{:txo, "full"} */

fun get_exclusive(): Bool =>
"""
Gets whether a gesture is exclusive. For more information, see
gtk_gesture_single_set_exclusive().
"""
  @gtk_gesture_single_get_exclusive[Bool](widget)

fun get_touch_only(): Bool =>
"""
Returns %TRUE if the gesture is only triggered by touch events.
"""
  @gtk_gesture_single_get_touch_only[Bool](widget)

fun set_button(button_pony: U32): None =>
"""
Sets the button number @gesture listens to. If non-0, every
button press from a different button number will be ignored.
Touch events implicitly match with button 1.
"""
  @gtk_gesture_single_set_button[None](widget, button_pony)

fun set_exclusive(exclusive_pony: Bool): None =>
"""
Sets whether @gesture is exclusive. An exclusive gesture will
only handle pointer and "pointer emulated" touch events, so at
any given time, there is only one sequence able to interact with
those.
"""
  @gtk_gesture_single_set_exclusive[None](widget, exclusive_pony)

fun set_touch_only(touch_only_pony: Bool): None =>
"""
If @touch_only is %TRUE, @gesture will only handle events of type
#GDK_TOUCH_BEGIN, #GDK_TOUCH_UPDATE or #GDK_TOUCH_END. If %FALSE,
mouse events will be handled too.
"""
  @gtk_gesture_single_set_touch_only[None](widget, touch_only_pony)


```````