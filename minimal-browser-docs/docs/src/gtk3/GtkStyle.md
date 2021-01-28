```````pony-full-source
/*
   needs: ["None", "Bool", "GObjectREF"]
provides: ["GtkStyle val"]
*/
use "../gobject"
class val GtkStyle is GtkWidget
"""
A #GtkStyle object encapsulates the information that provides the look and
feel for a widget.

> In GTK+ 3.0, GtkStyle has been deprecated and replaced by
> #GtkStyleContext.

Each #GtkWidget has an associated #GtkStyle object that is used when
rendering that widget. Also, a #GtkStyle holds information for the five
possible widget states though not every widget supports all five
states; see #GtkStateType.

Usually the #GtkStyle for a widget is the same as the default style that
is set by GTK+ and modified the theme engine.

Usually applications should not need to use or modify the #GtkStyle of
their widgets.
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
    widget = @gtk_style_new[GObjectREF]() //


/* apply_default_background unavailable due to typing issues
 {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
*/

/* attach unavailable due to return typing issues
{:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "notpresent"} */

/* copy unavailable due to return typing issues
{:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "full"} */

fun detach(): None =>
"""
Detaches a style from a window. If the style is not attached
to any windows anymore, it is unrealized. See gtk_style_attach().
"""
  @gtk_style_detach[None](widget)

/* get unavailable due to typing issues
 {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_style_property unavailable due to typing issues
 {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* get_valist unavailable due to typing issues
 {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "var_args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

fun has_context(): Bool =>
"""
Returns whether @style has an associated #GtkStyleContext.
"""
  @gtk_style_has_context[Bool](widget)

/* lookup_color unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "color_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* lookup_icon_set unavailable due to return typing issues
{:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"} */

/* render_icon unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* set_background unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
*/


```````