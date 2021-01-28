```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val"]
provides: ["GtkGestureDrag val"]
*/
use "../gobject"
class val GtkGestureDrag is GtkWidget
"""
#GtkGestureDrag is a #GtkGesture implementation that recognizes drag
operations. The drag operation itself can be tracked throught the
#GtkGestureDrag::drag-begin, #GtkGestureDrag::drag-update and
#GtkGestureDrag::drag-end signals, or the relevant coordinates be
extracted through gtk_gesture_drag_get_offset() and
gtk_gesture_drag_get_start_point().
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
    widget = @gtk_gesture_drag_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_offset unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_start_point unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/


```````