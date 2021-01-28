```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF", "String", "GtkRecentManager val"]
provides: ["GtkRecentAction val"]
*/
use "../gobject"
class val GtkRecentAction is GtkWidget
"""
A #GtkRecentAction represents a list of recently used files, which
can be shown by widgets such as #GtkRecentChooserDialog or
#GtkRecentChooserMenu.

To construct a submenu showing recently used files, use a #GtkRecentAction
as the action for a <menuitem>. To construct a menu toolbutton showing
the recently used files in the popup menu, use a #GtkRecentAction as the
action for a <toolitem> element.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(name_pony: String, label_pony: String, tooltip_pony: String, stock_id_pony: String) =>
    widget = @gtk_recent_action_new[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring()) //

  new val new_for_manager(name_pony: String, label_pony: String, tooltip_pony: String, stock_id_pony: String, manager_pony: GtkRecentManager val) =>
    widget = @gtk_recent_action_new_for_manager[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring(), manager_pony.gtkwidget()) //


fun get_show_numbers(): Bool =>
"""
Returns the value set by gtk_recent_chooser_menu_set_show_numbers().
"""
  @gtk_recent_action_get_show_numbers[Bool](widget)

fun set_show_numbers(show_numbers_pony: Bool): None =>
"""
Sets whether a number should be added to the items shown by the
widgets representing @action. The numbers are shown to provide
a unique character for a mnemonic to be used inside the menu item's
label. Only the first ten items get a number to avoid clashes.
"""
  @gtk_recent_action_set_show_numbers[None](widget, show_numbers_pony)


```````