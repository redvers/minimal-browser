```````pony-full-source
/*
   needs: ["None", "GObjectREF", "GtkWidget val", "Pointer[U8 val] ref", "String", "Bool"]
provides: ["GtkAction val"]
*/
use "../gobject"
class val GtkAction is GtkWidget
"""
> In GTK+ 3.10, GtkAction has been deprecated. Use #GAction
> instead, and associate actions with #GtkActionable widgets. Use
> #GMenuModel for creating menus with gtk_menu_new_from_model().

Actions represent operations that the user can be perform, along with
some information how it should be presented in the interface. Each action
provides methods to create icons, menu items and toolbar items
representing itself.

As well as the callback that is called when the action gets activated,
the following also gets associated with the action:

- a name (not translated, for path lookup)

- a label (translated, for display)

- an accelerator

- whether label indicates a stock id

- a tooltip (optional, translated)

- a toolbar label (optional, shorter than label)


The action will also have some state information:

- visible (shown/hidden)

- sensitive (enabled/disabled)

Apart from regular actions, there are [toggle actions][GtkToggleAction],
which can be toggled between two states and
[radio actions][GtkRadioAction], of which only one in a group
can be in the “active” state. Other actions can be implemented as #GtkAction
subclasses.

Each action can have one or more proxy widgets. To act as an action proxy,
widget needs to implement #GtkActivatable interface. Proxies mirror the state
of the action and should change when the action’s state changes. Properties
that are always mirrored by proxies are #GtkAction:sensitive and
#GtkAction:visible. #GtkAction:gicon, #GtkAction:icon-name, #GtkAction:label,
#GtkAction:short-label and #GtkAction:stock-id properties are only mirorred
if proxy widget has #GtkActivatable:use-action-appearance property set to
%TRUE.

When the proxy is activated, it should activate its action.
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
    widget = @gtk_action_new[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring()) //


fun activate(): None =>
"""
Emits the “activate” signal on the specified action, if it isn't
insensitive. This gets called by the proxy widgets when they get
activated.

It can also be used to manually activate an action.
"""
  @gtk_action_activate[None](widget)

fun block_activate(): None =>
"""
Disable activation signals from the action

This is needed when updating the state of your proxy
#GtkActivatable widget could result in calling gtk_action_activate(),
this is a convenience function to avoid recursing in those
cases (updating toggle state for instance).
"""
  @gtk_action_block_activate[None](widget)

fun connect_accelerator(): None =>
"""
Installs the accelerator for @action if @action has an
accel path and group. See gtk_action_set_accel_path() and
gtk_action_set_accel_group()

Since multiple proxies may independently trigger the installation
of the accelerator, the @action counts the number of times this
function has been called and doesn’t remove the accelerator until
gtk_action_disconnect_accelerator() has been called as many times.
"""
  @gtk_action_connect_accelerator[None](widget)

/* create_icon unavailable due to typing issues
 {:doh, %{argctype: "GtkIconSize", argname: "icon_size", argtype: "gint", paramtype: :param, txo: "none"}}
*/

/* Needs conversion code 
  fun create_menu(): GtkWidget val =>
    @gtk_action_create_menu[GObjectREF](widget)
*/

/* Needs conversion code 
  fun create_menu_item(): GtkWidget val =>
    @gtk_action_create_menu_item[GObjectREF](widget)
*/

/* Needs conversion code 
  fun create_tool_item(): GtkWidget val =>
    @gtk_action_create_tool_item[GObjectREF](widget)
*/

fun disconnect_accelerator(): None =>
"""
Undoes the effect of one call to gtk_action_connect_accelerator().
"""
  @gtk_action_disconnect_accelerator[None](widget)

/* get_accel_closure unavailable due to return typing issues
{:argctype, "GClosure*"}
{:argname, "rv"}
{:argtype, "GObject.Closure"}
{:paramtype, :param}
{:txo, "none"} */

fun get_accel_path(): String =>
"""
Returns the accel path for this action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_accel_path[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_always_show_image(): Bool =>
"""
Returns whether @action's menu item proxies will always
show their image, if available.
"""
  @gtk_action_get_always_show_image[Bool](widget)

/* get_gicon unavailable due to return typing issues
{:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"} */

fun get_icon_name(): String =>
"""
Gets the icon name of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_icon_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_is_important(): Bool =>
"""
Checks whether @action is important or not
"""
  @gtk_action_get_is_important[Bool](widget)

fun get_label(): String =>
"""
Gets the label text of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_name(): String =>
"""
Returns the name of the action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_proxies unavailable due to return typing issues
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "none"} */

fun get_sensitive(): Bool =>
"""
Returns whether the action itself is sensitive. Note that this doesn’t
necessarily mean effective sensitivity. See gtk_action_is_sensitive()
for that.
"""
  @gtk_action_get_sensitive[Bool](widget)

fun get_short_label(): String =>
"""
Gets the short label text of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_short_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_stock_id(): String =>
"""
Gets the stock id of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_stock_id[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_tooltip(): String =>
"""
Gets the tooltip text of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_tooltip[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_visible(): Bool =>
"""
Returns whether the action itself is visible. Note that this doesn’t
necessarily mean effective visibility. See gtk_action_is_sensitive()
for that.
"""
  @gtk_action_get_visible[Bool](widget)

fun get_visible_horizontal(): Bool =>
"""
Checks whether @action is visible when horizontal
"""
  @gtk_action_get_visible_horizontal[Bool](widget)

fun get_visible_vertical(): Bool =>
"""
Checks whether @action is visible when horizontal
"""
  @gtk_action_get_visible_vertical[Bool](widget)

fun is_sensitive(): Bool =>
"""
Returns whether the action is effectively sensitive.
"""
  @gtk_action_is_sensitive[Bool](widget)

fun is_visible(): Bool =>
"""
Returns whether the action is effectively visible.
"""
  @gtk_action_is_visible[Bool](widget)

/* set_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

/* set_accel_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_always_show_image(always_show_pony: Bool): None =>
"""
Sets whether @action's menu item proxies will ignore the
#GtkSettings:gtk-menu-images setting and always show their image, if available.

Use this if the menu item would be useless or hard to use
without their image.
"""
  @gtk_action_set_always_show_image[None](widget, always_show_pony)

/* set_gicon unavailable due to typing issues
 {:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

/* set_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_is_important(is_important_pony: Bool): None =>
"""
Sets whether the action is important, this attribute is used
primarily by toolbar items to decide whether to show a label
or not.
"""
  @gtk_action_set_is_important[None](widget, is_important_pony)

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_sensitive(sensitive_pony: Bool): None =>
"""
Sets the :sensitive property of the action to @sensitive. Note that
this doesn’t necessarily mean effective sensitivity. See
gtk_action_is_sensitive()
for that.
"""
  @gtk_action_set_sensitive[None](widget, sensitive_pony)

/* set_short_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "short_label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_stock_id unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_tooltip unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_visible(visible_pony: Bool): None =>
"""
Sets the :visible property of the action to @visible. Note that
this doesn’t necessarily mean effective visibility. See
gtk_action_is_visible()
for that.
"""
  @gtk_action_set_visible[None](widget, visible_pony)

fun set_visible_horizontal(visible_horizontal_pony: Bool): None =>
"""
Sets whether @action is visible when horizontal
"""
  @gtk_action_set_visible_horizontal[None](widget, visible_horizontal_pony)

fun set_visible_vertical(visible_vertical_pony: Bool): None =>
"""
Sets whether @action is visible when vertical
"""
  @gtk_action_set_visible_vertical[None](widget, visible_vertical_pony)

fun unblock_activate(): None =>
"""
Reenable activation signals from the action
"""
  @gtk_action_unblock_activate[None](widget)


```````