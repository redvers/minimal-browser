```````pony-full-source
/*
   needs: ["GObjectREF", "GtkAdjustment val", "F64"]
provides: ["GtkHScale val"]
*/
use "../gobject"
class val GtkHScale is GtkWidget
"""
The #GtkHScale widget is used to allow the user to select a value using
a horizontal slider. To create one, use gtk_hscale_new_with_range().

The position to show the current value, and the number of decimal places
shown can be set using the parent #GtkScale class’s functions.

GtkHScale has been deprecated, use #GtkScale instead.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(adjustment_pony: GtkAdjustment val) =>
    widget = @gtk_hscale_new[GObjectREF](adjustment_pony.gtkwidget()) //

  new val new_with_range(min_pony: F64, max_pony: F64, step_pony: F64) =>
    widget = @gtk_hscale_new_with_range[GObjectREF](min_pony, max_pony, step_pony) //




```````