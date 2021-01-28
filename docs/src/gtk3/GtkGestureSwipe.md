```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val"]
provides: ["GtkGestureSwipe val"]
*/
use "../gobject"
class val GtkGestureSwipe is GtkWidget
"""
#GtkGestureSwipe is a #GtkGesture implementation able to recognize
swipes, after a press/move/.../move/release sequence happens, the
#GtkGestureSwipe::swipe signal will be emitted, providing the velocity
and directionality of the sequence at the time it was lifted.

If the velocity is desired in intermediate points,
gtk_gesture_swipe_get_velocity() can be called on eg. a
#GtkGesture::update handler.

All velocities are reported in pixels/sec units.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(widget_pony: GtkWidget val) =>
    widget = @gtk_gesture_swipe_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_velocity unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "velocity_x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "velocity_y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/


```````