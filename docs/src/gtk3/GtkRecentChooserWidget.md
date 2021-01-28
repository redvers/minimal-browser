```````pony-full-source
/*
   needs: ["GObjectREF", "GtkRecentManager val"]
provides: ["GtkRecentChooserWidget val"]
*/
use "../gobject"
class val GtkRecentChooserWidget is GtkWidget
"""
#GtkRecentChooserWidget is a widget suitable for selecting recently used
files.  It is the main building block of a #GtkRecentChooserDialog.  Most
applications will only need to use the latter; you can use
#GtkRecentChooserWidget as part of a larger window if you have special needs.

Note that #GtkRecentChooserWidget does not have any methods of its own.
Instead, you should use the functions that work on a #GtkRecentChooser.

Recently used files are supported since GTK+ 2.10.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_recent_chooser_widget_new[GObjectREF]() //

  new val new_for_manager(manager_pony: GtkRecentManager val) =>
    widget = @gtk_recent_chooser_widget_new_for_manager[GObjectREF](manager_pony.gtkwidget()) //




```````