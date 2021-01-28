```````pony-full-source
/*
   needs: ["Bool", "GObjectREF"]
provides: ["GtkIconTheme val"]
*/
use "../gobject"
class val GtkIconTheme is GtkWidget
"""
#GtkIconTheme provides a facility for looking up icons by name
and size. The main reason for using a name rather than simply
providing a filename is to allow different icons to be used
depending on what “icon theme” is selected
by the user. The operation of icon themes on Linux and Unix
follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
There is a fallback icon theme, named `hicolor`, where applications
should install their icons, but additional icon themes can be installed
as operating system vendors and users choose.

Named icons are similar to the deprecated [Stock Items][gtkstock],
and the distinction between the two may be a bit confusing.
A few things to keep in mind:

- Stock images usually are used in conjunction with
  [Stock Items][gtkstock], such as %GTK_STOCK_OK or
  %GTK_STOCK_OPEN. Named icons are easier to set up and therefore
  are more useful for new icons that an application wants to
  add, such as application icons or window icons.

- Stock images can only be loaded at the symbolic sizes defined
  by the #GtkIconSize enumeration, or by custom sizes defined
  by gtk_icon_size_register(), while named icons are more flexible
  and any pixel size can be specified.

- Because stock images are closely tied to stock items, and thus
  to actions in the user interface, stock images may come in
  multiple variants for different widget states or writing
  directions.

A good rule of thumb is that if there is a stock image for what
you want to use, use it, otherwise use a named icon. It turns
out that internally stock images are generally defined in
terms of one or more named icons. (An example of the
more than one case is icons that depend on writing direction;
%GTK_STOCK_GO_FORWARD uses the two themed icons
“gtk-stock-go-forward-ltr” and “gtk-stock-go-forward-rtl”.)

In many cases, named themes are used indirectly, via #GtkImage
or stock items, rather than directly, but looking up icons
directly is also simple. The #GtkIconTheme object acts
as a database of all the icons in the current theme. You
can create new #GtkIconTheme objects, but it’s much more
efficient to use the standard icon theme for the #GdkScreen
so that the icon information is shared with other people
looking up icons.
|[<!-- language="C" -->
GError *error = NULL;
GtkIconTheme *icon_theme;
GdkPixbuf *pixbuf;

icon_theme = gtk_icon_theme_get_default ();
pixbuf = gtk_icon_theme_load_icon (icon_theme,
                                   "my-icon-name", // icon name
                                   48, // icon size
                                   0,  // flags
                                   &error);
if (!pixbuf)
  {
    g_warning ("Couldn’t load icon: %s", error->message);
    g_error_free (error);
  }
else
  {
    // Use the pixbuf
    g_object_unref (pixbuf);
  }
]|
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
    widget = @gtk_icon_theme_new[GObjectREF]() //


/* add_resource_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* append_search_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "filename", paramtype: :param, txo: "none"}}
*/

/* choose_icon unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* choose_icon_for_scale unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* get_example_icon_name unavailable due to return typing issues
{:argctype, "char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_icon_sizes unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

/* get_search_path unavailable due to typing issues
 {:doh, %{argctype: "", argname: "path", argtype: "", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "n_elements", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* has_icon unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* list_contexts unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"} */

/* list_icons unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"} */

/* load_icon unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* load_icon_for_scale unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* load_surface unavailable due to return typing issues
{:argctype, "cairo_surface_t*"}
{:argname, "rv"}
{:argtype, "cairo.Surface"}
{:paramtype, :param}
{:txo, "full"} */

/* lookup_by_gicon unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* lookup_by_gicon_for_scale unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* lookup_icon unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* lookup_icon_for_scale unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* prepend_search_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "filename", paramtype: :param, txo: "none"}}
*/

fun rescan_if_needed(): Bool =>
"""
Checks to see if the icon theme has changed; if it has, any
currently cached information is discarded and will be reloaded
next time @icon_theme is accessed.
"""
  @gtk_icon_theme_rescan_if_needed[Bool](widget)

/* set_custom_theme unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "theme_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_screen unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

/* set_search_path unavailable due to typing issues
 {:doh, %{argctype: "", argname: "path", argtype: "", paramtype: :param, txo: "none"}}
*/


```````