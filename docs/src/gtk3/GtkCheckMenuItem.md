```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF", "String"]
provides: ["GtkCheckMenuItem val"]
*/
use "../gobject"
class val GtkCheckMenuItem is GtkWidget
"""
A #GtkCheckMenuItem is a menu item that maintains the state of a boolean
value in addition to a #GtkMenuItem usual role in activating application
code.

A check box indicating the state of the boolean value is displayed
at the left side of the #GtkMenuItem.  Activating the #GtkMenuItem
toggles the value.

# CSS nodes

|[<!-- language="plain" -->
menuitem
├── check.left
╰── <child>
]|

GtkCheckMenuItem has a main CSS node with name menuitem, and a subnode
with name check, which gets the .left or .right style class.
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
    widget = @gtk_check_menu_item_new[GObjectREF]() //

  new val new_with_label(label_pony: String) =>
    widget = @gtk_check_menu_item_new_with_label[GObjectREF](label_pony.cstring()) //

  new val new_with_mnemonic(label_pony: String) =>
    widget = @gtk_check_menu_item_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun get_active(): Bool =>
"""
Returns whether the check menu item is active. See
gtk_check_menu_item_set_active ().
"""
  @gtk_check_menu_item_get_active[Bool](widget)

fun get_draw_as_radio(): Bool =>
"""
Returns whether @check_menu_item looks like a #GtkRadioMenuItem
"""
  @gtk_check_menu_item_get_draw_as_radio[Bool](widget)

fun get_inconsistent(): Bool =>
"""
Retrieves the value set by gtk_check_menu_item_set_inconsistent().
"""
  @gtk_check_menu_item_get_inconsistent[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
"""
Sets the active state of the menu item’s check box.
"""
  @gtk_check_menu_item_set_active[None](widget, is_active_pony)

fun set_draw_as_radio(draw_as_radio_pony: Bool): None =>
"""
Sets whether @check_menu_item is drawn like a #GtkRadioMenuItem
"""
  @gtk_check_menu_item_set_draw_as_radio[None](widget, draw_as_radio_pony)

fun set_inconsistent(setting_pony: Bool): None =>
"""
If the user has selected a range of elements (such as some text or
spreadsheet cells) that are affected by a boolean setting, and the
current values in that range are inconsistent, you may want to
display the check in an “in between” state. This function turns on
“in between” display.  Normally you would turn off the inconsistent
state again if the user explicitly selects a setting. This has to be
done manually, gtk_check_menu_item_set_inconsistent() only affects
visual appearance, it doesn’t affect the semantics of the widget.
"""
  @gtk_check_menu_item_set_inconsistent[None](widget, setting_pony)

fun toggled(): None =>
"""
Emits the #GtkCheckMenuItem::toggled signal.
"""
  @gtk_check_menu_item_toggled[None](widget)


```````