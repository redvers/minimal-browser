```````pony-full-source
/*
   needs: ["I32", "Bool", "None", "GObjectREF"]
provides: ["GtkToolbar val"]
*/
use "../gobject"
class val GtkToolbar is GtkWidget
"""
A toolbar is created with a call to gtk_toolbar_new().

A toolbar can contain instances of a subclass of #GtkToolItem. To add
a #GtkToolItem to the a toolbar, use gtk_toolbar_insert(). To remove
an item from the toolbar use gtk_container_remove(). To add a button
to the toolbar, add an instance of #GtkToolButton.

Toolbar items can be visually grouped by adding instances of
#GtkSeparatorToolItem to the toolbar. If the GtkToolbar child property
“expand” is #TRUE and the property #GtkSeparatorToolItem:draw is set to
#FALSE, the effect is to force all following items to the end of the toolbar.

By default, a toolbar can be shrunk, upon which it will add an arrow button
to show an overflow menu offering access to any #GtkToolItem child that has
a proxy menu item. To disable this and request enough size for all children,
call gtk_toolbar_set_show_arrow() to set #GtkToolbar:show-arrow to %FALSE.

Creating a context menu for the toolbar can be done by connecting to
the #GtkToolbar::popup-context-menu signal.

# CSS nodes

GtkToolbar has a single CSS node with name toolbar.
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
    widget = @gtk_toolbar_new[GObjectREF]() //


fun get_drop_index(x_pony: I32, y_pony: I32): I32 =>
"""
Returns the position corresponding to the indicated point on
@toolbar. This is useful when dragging items to the toolbar:
this function returns the position a new item should be
inserted.

@x and @y are in @toolbar coordinates.
"""
  @gtk_toolbar_get_drop_index[I32](widget, x_pony, y_pony)

/* get_icon_size unavailable due to return typing issues
{:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "IconSize"}
{:paramtype, :param}
{:txo, "none"} */

/* get_item_index unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/

fun get_n_items(): I32 =>
"""
Returns the number of items on the toolbar.
"""
  @gtk_toolbar_get_n_items[I32](widget)

/* get_nth_item unavailable due to return typing issues
{:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"} */

/* get_relief_style unavailable due to return typing issues
{:argctype, "GtkReliefStyle"}
{:argname, "rv"}
{:argtype, "ReliefStyle"}
{:paramtype, :param}
{:txo, "none"} */

fun get_show_arrow(): Bool =>
"""
Returns whether the toolbar has an overflow menu.
See gtk_toolbar_set_show_arrow().
"""
  @gtk_toolbar_get_show_arrow[Bool](widget)

/* get_style unavailable due to return typing issues
{:argctype, "GtkToolbarStyle"}
{:argname, "rv"}
{:argtype, "ToolbarStyle"}
{:paramtype, :param}
{:txo, "none"} */

/* insert unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/

/* set_drop_highlight_item unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItem*", argname: "tool_item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/

/* set_icon_size unavailable due to typing issues
 {:doh, %{argctype: "GtkIconSize", argname: "icon_size", argtype: "IconSize", paramtype: :param, txo: "none"}}
*/

fun set_show_arrow(show_arrow_pony: Bool): None =>
"""
Sets whether to show an overflow menu when @toolbar isn’t allocated enough
size to show all of its items. If %TRUE, items which can’t fit in @toolbar,
and which have a proxy menu item set by gtk_tool_item_set_proxy_menu_item()
or #GtkToolItem::create-menu-proxy, will be available in an overflow menu,
which can be opened by an added arrow button. If %FALSE, @toolbar will
request enough size to fit all of its child items without any overflow.
"""
  @gtk_toolbar_set_show_arrow[None](widget, show_arrow_pony)

/* set_style unavailable due to typing issues
 {:doh, %{argctype: "GtkToolbarStyle", argname: "style", argtype: "ToolbarStyle", paramtype: :param, txo: "none"}}
*/

fun unset_icon_size(): None =>
"""
Unsets toolbar icon size set with gtk_toolbar_set_icon_size(), so that
user preferences will be used to determine the icon size.
"""
  @gtk_toolbar_unset_icon_size[None](widget)

fun unset_style(): None =>
"""
Unsets a toolbar style set with gtk_toolbar_set_style(), so that
user preferences will be used to determine the toolbar style.
"""
  @gtk_toolbar_unset_style[None](widget)


```````