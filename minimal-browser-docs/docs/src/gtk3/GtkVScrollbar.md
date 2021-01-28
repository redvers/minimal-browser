```````pony-full-source
/*
   needs: ["GObjectREF", "GtkAdjustment val"]
provides: ["GtkVScrollbar val"]
*/
use "../gobject"
class val GtkVScrollbar is GtkWidget
"""
The #GtkVScrollbar widget is a widget arranged vertically creating a
scrollbar. See #GtkScrollbar for details on
scrollbars. #GtkAdjustment pointers may be added to handle the
adjustment of the scrollbar or it may be left %NULL in which case one
will be created for you. See #GtkScrollbar for a description of what the
fields in an adjustment represent for a scrollbar.

GtkVScrollbar has been deprecated, use #GtkScrollbar instead.
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
    widget = @gtk_vscrollbar_new[GObjectREF](adjustment_pony.gtkwidget()) //




```````