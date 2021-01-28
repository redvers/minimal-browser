```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF", "GtkRecentManager val"]
provides: ["GtkRecentChooserMenu val"]
*/
use "../gobject"
class val GtkRecentChooserMenu is GtkWidget
"""
#GtkRecentChooserMenu is a widget suitable for displaying recently used files
inside a menu.  It can be used to set a sub-menu of a #GtkMenuItem using
gtk_menu_item_set_submenu(), or as the menu of a #GtkMenuToolButton.

Note that #GtkRecentChooserMenu does not have any methods of its own. Instead,
you should use the functions that work on a #GtkRecentChooser.

Note also that #GtkRecentChooserMenu does not support multiple filters, as it
has no way to let the user choose between them as the #GtkRecentChooserWidget
and #GtkRecentChooserDialog widgets do. Thus using gtk_recent_chooser_add_filter()
on a #GtkRecentChooserMenu widget will yield the same effects as using
gtk_recent_chooser_set_filter(), replacing any currently set filter
with the supplied filter; gtk_recent_chooser_remove_filter() will remove
any currently set #GtkRecentFilter object and will unset the current filter;
gtk_recent_chooser_list_filters() will return a list containing a single
#GtkRecentFilter object.

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
    widget = @gtk_recent_chooser_menu_new[GObjectREF]() //

  new val new_for_manager(manager_pony: GtkRecentManager val) =>
    widget = @gtk_recent_chooser_menu_new_for_manager[GObjectREF](manager_pony.gtkwidget()) //


fun get_show_numbers(): Bool =>
"""
Returns the value set by gtk_recent_chooser_menu_set_show_numbers().
"""
  @gtk_recent_chooser_menu_get_show_numbers[Bool](widget)

fun set_show_numbers(show_numbers_pony: Bool): None =>
"""
Sets whether a number should be added to the items of @menu.  The
numbers are shown to provide a unique character for a mnemonic to
be used inside ten menu item’s label.  Only the first the items
get a number to avoid clashes.
"""
  @gtk_recent_chooser_menu_set_show_numbers[None](widget, show_numbers_pony)


```````