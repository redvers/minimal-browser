```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "I32", "None", "GObjectREF"]
provides: ["GtkNumerableIcon val"]
*/
use "../gobject"
class val GtkNumerableIcon is GtkWidget
"""
GtkNumerableIcon is a subclass of #GEmblemedIcon that can
show a number or short string as an emblem. The number can
be overlayed on top of another emblem, if desired.

It supports theming by taking font and color information
from a provided #GtkStyleContext; see
gtk_numerable_icon_set_style_context().

Typical numerable icons:
![](numerableicon.png)
![](numerableicon2.png)
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* get_background_gicon unavailable due to return typing issues
{:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"} */

fun get_background_icon_name(): String =>
"""
Returns the icon name used as the base background image,
or %NULL if there’s none.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_numerable_icon_get_background_icon_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_count(): I32 =>
"""
Returns the value currently displayed by @self.
"""
  @gtk_numerable_icon_get_count[I32](widget)

fun get_label(): String =>
"""
Returns the currently displayed label of the icon, or %NULL.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_numerable_icon_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_style_context unavailable due to return typing issues
{:argctype, "GtkStyleContext*"}
{:argname, "rv"}
{:argtype, "StyleContext"}
{:paramtype, :param}
{:txo, "none"} */

/* set_background_gicon unavailable due to typing issues
 {:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

/* set_background_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_count(count_pony: I32): None =>
"""
Sets the currently displayed value of @self to @count.

The numeric value is always clamped to make it two digits, i.e.
between -99 and 99. Setting a count of zero removes the emblem.
If this method is called, and a label was already set on the icon,
it will automatically be reset to %NULL before rendering the number,
i.e. the last method called between gtk_numerable_icon_set_count()
and gtk_numerable_icon_set_label() has always priority.
"""
  @gtk_numerable_icon_set_count[None](widget, count_pony)

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_style_context unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "style", argtype: "StyleContext", paramtype: :param, txo: "none"}}
*/


```````