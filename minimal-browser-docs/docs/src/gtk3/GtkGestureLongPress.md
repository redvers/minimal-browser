```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val"]
provides: ["GtkGestureLongPress val"]
*/
use "../gobject"
class val GtkGestureLongPress is GtkWidget
"""
#GtkGestureLongPress is a #GtkGesture implementation able to recognize
long presses, triggering the #GtkGestureLongPress::pressed after the
timeout is exceeded.

If the touchpoint is lifted before the timeout passes, or if it drifts
too far of the initial press point, the #GtkGestureLongPress::cancelled
signal will be emitted.
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
    widget = @gtk_gesture_long_press_new[GObjectREF](widget_pony.gtkwidget()) //




```````