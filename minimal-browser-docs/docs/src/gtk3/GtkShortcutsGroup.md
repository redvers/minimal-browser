```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkShortcutsGroup val"]
*/
use "../gobject"
class val GtkShortcutsGroup is GtkWidget
"""
A GtkShortcutsGroup represents a group of related keyboard shortcuts
or gestures. The group has a title. It may optionally be associated with
a view of the application, which can be used to show only relevant shortcuts
depending on the application context.

This widget is only meant to be used with #GtkShortcutsWindow.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF






```````