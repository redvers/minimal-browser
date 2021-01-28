```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkSettings val"]
*/
use "../gobject"
class val GtkSettings is GtkWidget
"""
GtkSettings provide a mechanism to share global settings between
applications.

On the X window system, this sharing is realized by an
[XSettings](http://www.freedesktop.org/wiki/Specifications/xsettings-spec)
manager that is usually part of the desktop environment, along with
utilities that let the user change these settings. In the absence of
an Xsettings manager, GTK+ reads default values for settings from
`settings.ini` files in
`/etc/gtk-3.0`, `$XDG_CONFIG_DIRS/gtk-3.0`
and `$XDG_CONFIG_HOME/gtk-3.0`.
These files must be valid key files (see #GKeyFile), and have
a section called Settings. Themes can also provide default values
for settings by installing a `settings.ini` file
next to their `gtk.css` file.

Applications can override system-wide settings by setting the property
of the GtkSettings object with g_object_set(). This should be restricted
to special cases though; GtkSettings are not meant as an application
configuration facility. When doing so, you need to be aware that settings
that are specific to individual widgets may not be available before the
widget type has been realized at least once. The following example
demonstrates a way to do this:
|[<!-- language="C" -->
  gtk_init (&argc, &argv);

  // make sure the type is realized
  g_type_class_unref (g_type_class_ref (GTK_TYPE_IMAGE_MENU_ITEM));

  g_object_set (gtk_settings_get_default (), "gtk-enable-animations", FALSE, NULL);
]|

There is one GtkSettings instance per screen. It can be obtained with
gtk_settings_get_for_screen(), but in many cases, it is more convenient
to use gtk_widget_get_settings(). gtk_settings_get_default() returns the
GtkSettings instance for the default screen.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* reset_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_double_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "v_double", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "origin", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_long_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "glong", argname: "v_long", argtype: "glong", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "origin", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_property_value unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkSettingsValue*", argname: "svalue", argtype: "SettingsValue", paramtype: :param, txo: "none"}}
*/

/* set_string_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "v_string", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "origin", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````