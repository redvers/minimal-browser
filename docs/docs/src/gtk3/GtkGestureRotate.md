```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val"]
provides: ["GtkGestureRotate val"]
*/
use "../gobject"
class val GtkGestureRotate is GtkWidget
"""
#GtkGestureRotate is a #GtkGesture implementation able to recognize
2-finger rotations, whenever the angle between both handled sequences
changes, the #GtkGestureRotate::angle-changed signal is emitted.
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
    widget = @gtk_gesture_rotate_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_angle_delta unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */


```````