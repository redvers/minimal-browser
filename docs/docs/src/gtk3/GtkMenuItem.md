```````pony-full-source
/*
   needs: ["None", "Pointer[U8 val] ref", "String", "Bool", "GObjectREF", "GtkWidget val", "I32"]
provides: ["GtkMenuItem val"]
*/
use "../gobject"
class val GtkMenuItem is GtkWidget
"""
The #GtkMenuItem widget and the derived widgets are the only valid
children for menus. Their function is to correctly handle highlighting,
alignment, events and submenus.

As a GtkMenuItem derives from #GtkBin it can hold any valid child widget,
although only a few are really useful.

By default, a GtkMenuItem sets a #GtkAccelLabel as its child.
GtkMenuItem has direct functions to set the label and its mnemonic.
For more advanced label settings, you can fetch the child widget from the GtkBin.

An example for setting markup and accelerator on a MenuItem:
|[<!-- language="C" -->
GtkWidget *menu_item = gtk_menu_item_new_with_label ("Example Menu Item");

GtkWidget *child = gtk_bin_get_child (GTK_BIN (menu_item));
gtk_label_set_markup (GTK_LABEL (child), "<i>new label</i> with <b>markup</b>");
gtk_accel_label_set_accel (GTK_ACCEL_LABEL (child), GDK_KEY_1, 0);
]|

# GtkMenuItem as GtkBuildable

The GtkMenuItem implementation of the #GtkBuildable interface supports
adding a submenu by specifying “submenu” as the “type” attribute of
a <child> element.

An example of UI definition fragment with submenus:
|[
<object class="GtkMenuItem">
  <child type="submenu">
    <object class="GtkMenu"/>
  </child>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
menuitem
├── <child>
╰── [arrow.right]
]|

GtkMenuItem has a single CSS node with name menuitem. If the menuitem
has a submenu, it gets another CSS node with name arrow, which has
the .left or .right style class.
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
    widget = @gtk_menu_item_new[GObjectREF]() //

  new val new_with_label(label_pony: String) =>
    widget = @gtk_menu_item_new_with_label[GObjectREF](label_pony.cstring()) //

  new val new_with_mnemonic(label_pony: String) =>
    widget = @gtk_menu_item_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun activate(): None =>
"""
Emits the #GtkMenuItem::activate signal on the given item
"""
  @gtk_menu_item_activate[None](widget)

fun deselect(): None =>
"""
Emits the #GtkMenuItem::deselect signal on the given item.
"""
  @gtk_menu_item_deselect[None](widget)

fun get_accel_path(): String =>
"""
Retrieve the accelerator path that was previously set on @menu_item.

See gtk_menu_item_set_accel_path() for details.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_menu_item_get_accel_path[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_label(): String =>
"""
Sets @text on the @menu_item label
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_menu_item_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_reserve_indicator(): Bool =>
"""
Returns whether the @menu_item reserves space for
the submenu indicator, regardless if it has a submenu
or not.
"""
  @gtk_menu_item_get_reserve_indicator[Bool](widget)

fun get_right_justified(): Bool =>
"""
Gets whether the menu item appears justified at the right
side of the menu bar.
"""
  @gtk_menu_item_get_right_justified[Bool](widget)

/* Needs conversion code 
  fun get_submenu(): GtkWidget val =>
    @gtk_menu_item_get_submenu[GObjectREF](widget)
*/

fun get_use_underline(): Bool =>
"""
Checks if an underline in the text indicates the next character
should be used for the mnemonic accelerator key.
"""
  @gtk_menu_item_get_use_underline[Bool](widget)

fun select(): None =>
"""
Emits the #GtkMenuItem::select signal on the given item.
"""
  @gtk_menu_item_select[None](widget)

/* set_accel_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_reserve_indicator(reserve_pony: Bool): None =>
"""
Sets whether the @menu_item should reserve space for
the submenu indicator, regardless if it actually has
a submenu or not.

There should be little need for applications to call
this functions.
"""
  @gtk_menu_item_set_reserve_indicator[None](widget, reserve_pony)

fun set_right_justified(right_justified_pony: Bool): None =>
"""
Sets whether the menu item appears justified at the right
side of a menu bar. This was traditionally done for “Help”
menu items, but is now considered a bad idea. (If the widget
layout is reversed for a right-to-left language like Hebrew
or Arabic, right-justified-menu-items appear at the left.)
"""
  @gtk_menu_item_set_right_justified[None](widget, right_justified_pony)

/* set_submenu unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "submenu", argtype: "Menu", paramtype: :param, txo: "none"}}
*/

fun set_use_underline(setting_pony: Bool): None =>
"""
If true, an underline in the text indicates the next character
should be used for the mnemonic accelerator key.
"""
  @gtk_menu_item_set_use_underline[None](widget, setting_pony)

fun toggle_size_allocate(allocation_pony: I32): None =>
"""
Emits the #GtkMenuItem::toggle-size-allocate signal on the given item.
"""
  @gtk_menu_item_toggle_size_allocate[None](widget, allocation_pony)

/* toggle_size_request unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "requisition", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```````