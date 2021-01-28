```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkCssProvider val"]
*/
use "../gobject"
class val GtkCssProvider is GtkWidget
"""
GtkCssProvider is an object implementing the #GtkStyleProvider interface.
It is able to parse [CSS-like][css-overview] input in order to style widgets.

An application can make GTK+ parse a specific CSS style sheet by calling
gtk_css_provider_load_from_file() or gtk_css_provider_load_from_resource()
and adding the provider with gtk_style_context_add_provider() or
gtk_style_context_add_provider_for_screen().

In addition, certain files will be read when GTK+ is initialized. First, the
file `$XDG_CONFIG_HOME/gtk-3.0/gtk.css` is loaded if it exists. Then, GTK+
loads the first existing file among
`XDG_DATA_HOME/themes/THEME/gtk-VERSION/gtk.css`,
`$HOME/.themes/THEME/gtk-VERSION/gtk.css`,
`$XDG_DATA_DIRS/themes/THEME/gtk-VERSION/gtk.css` and
`DATADIR/share/themes/THEME/gtk-VERSION/gtk.css`, where `THEME` is the name of
the current theme (see the #GtkSettings:gtk-theme-name setting), `DATADIR`
is the prefix configured when GTK+ was compiled (unless overridden by the
`GTK_DATA_PREFIX` environment variable), and `VERSION` is the GTK+ version number.
If no file is found for the current version, GTK+ tries older versions all the
way back to 3.0.

In the same way, GTK+ tries to load a gtk-keys.css file for the current
key theme, as defined by #GtkSettings:gtk-key-theme-name.
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
    widget = @gtk_css_provider_new[GObjectREF]() //


/* load_from_data unavailable due to typing issues
 {:doh, %{argctype: "", argname: "data", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gssize", argname: "length", argtype: "gssize", paramtype: :param, txo: "none"}}
*/

/* load_from_file unavailable due to typing issues
 {:doh, %{argctype: "GFile*", argname: "file", argtype: "Gio.File", paramtype: :param, txo: "none"}}
*/

/* load_from_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* load_from_resource unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "resource_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* to_string unavailable due to return typing issues
{:argctype, "char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */


```````