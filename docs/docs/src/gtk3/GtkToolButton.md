```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "GObjectREF", "GtkWidget val", "Bool", "None"]
provides: ["GtkToolButton val"]
*/
use "../gobject"
class val GtkToolButton is GtkWidget
"""
#GtkToolButtons are #GtkToolItems containing buttons.

Use gtk_tool_button_new() to create a new #GtkToolButton.

The label of a #GtkToolButton is determined by the properties
#GtkToolButton:label-widget, #GtkToolButton:label, and
#GtkToolButton:stock-id. If #GtkToolButton:label-widget is
non-%NULL, then that widget is used as the label. Otherwise, if
#GtkToolButton:label is non-%NULL, that string is used as the label.
Otherwise, if #GtkToolButton:stock-id is non-%NULL, the label is
determined by the stock item. Otherwise, the button does not have a label.

The icon of a #GtkToolButton is determined by the properties
#GtkToolButton:icon-widget and #GtkToolButton:stock-id. If
#GtkToolButton:icon-widget is non-%NULL, then
that widget is used as the icon. Otherwise, if #GtkToolButton:stock-id is
non-%NULL, the icon is determined by the stock item. Otherwise,
the button does not have a icon.

# CSS nodes

GtkToolButton has a single CSS node with name toolbutton.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(icon_widget_pony: GtkWidget val, label_pony: String) =>
    widget = @gtk_tool_button_new[GObjectREF](icon_widget_pony.gtkwidget(), label_pony.cstring()) //

  new val new_from_stock(stock_id_pony: String) =>
    widget = @gtk_tool_button_new_from_stock[GObjectREF](stock_id_pony.cstring()) //


fun get_icon_name(): String =>
"""
Returns the name of the themed icon for the tool button,
see gtk_tool_button_set_icon_name().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_tool_button_get_icon_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* Needs conversion code 
  fun get_icon_widget(): GtkWidget val =>
    @gtk_tool_button_get_icon_widget[GObjectREF](widget)
*/

fun get_label(): String =>
"""
Returns the label used by the tool button, or %NULL if the tool button
doesn’t have a label. or uses a the label from a stock item. The returned
string is owned by GTK+, and must not be modified or freed.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_tool_button_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* Needs conversion code 
  fun get_label_widget(): GtkWidget val =>
    @gtk_tool_button_get_label_widget[GObjectREF](widget)
*/

fun get_stock_id(): String =>
"""
Returns the name of the stock item. See gtk_tool_button_set_stock_id().
The returned string is owned by GTK+ and must not be freed or modifed.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_tool_button_get_stock_id[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_use_underline(): Bool =>
"""
Returns whether underscores in the label property are used as mnemonics
on menu items on the overflow menu. See gtk_tool_button_set_use_underline().
"""
  @gtk_tool_button_get_use_underline[Bool](widget)

/* set_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_icon_widget(icon_widget_pony: GtkWidget val): None =>
"""
Sets @icon as the widget used as icon on @button. If @icon_widget is
%NULL the icon is determined by the #GtkToolButton:stock-id property. If the
#GtkToolButton:stock-id property is also %NULL, @button will not have an icon.
"""
  @gtk_tool_button_set_icon_widget[None](widget, icon_widget_pony.gtkwidget())

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_label_widget(label_widget_pony: GtkWidget val): None =>
"""
Sets @label_widget as the widget that will be used as the label
for @button. If @label_widget is %NULL the #GtkToolButton:label property is used
as label. If #GtkToolButton:label is also %NULL, the label in the stock item
determined by the #GtkToolButton:stock-id property is used as label. If
#GtkToolButton:stock-id is also %NULL, @button does not have a label.
"""
  @gtk_tool_button_set_label_widget[None](widget, label_widget_pony.gtkwidget())

/* set_stock_id unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_use_underline(use_underline_pony: Bool): None =>
"""
If set, an underline in the label property indicates that the next character
should be used for the mnemonic accelerator key in the overflow menu. For
example, if the label property is “_Open” and @use_underline is %TRUE,
the label on the tool button will be “Open” and the item on the overflow
menu will have an underlined “O”.

Labels shown on tool buttons never have mnemonics on them; this property
only affects the menu item on the overflow menu.
"""
  @gtk_tool_button_set_use_underline[None](widget, use_underline_pony)


```````