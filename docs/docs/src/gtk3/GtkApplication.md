```````pony-full-source
/*
   needs: ["Bool", "None", "U32", "GObjectREF", "String", "GApplicationFlags"]
provides: ["GtkApplication val"]
*/
use "../gobject"
class val GtkApplication is GtkWidget
"""
#GtkApplication is a class that handles many important aspects
of a GTK+ application in a convenient fashion, without enforcing
a one-size-fits-all application model.

Currently, GtkApplication handles GTK+ initialization, application
uniqueness, session management, provides some basic scriptability and
desktop shell integration by exporting actions and menus and manages a
list of toplevel windows whose life-cycle is automatically tied to the
life-cycle of your application.

While GtkApplication works fine with plain #GtkWindows, it is recommended
to use it together with #GtkApplicationWindow.

When GDK threads are enabled, GtkApplication will acquire the GDK
lock when invoking actions that arrive from other processes.  The GDK
lock is not touched for local action invocations.  In order to have
actions invoked in a predictable context it is therefore recommended
that the GDK lock be held while invoking actions locally with
g_action_group_activate_action().  The same applies to actions
associated with #GtkApplicationWindow and to the “activate” and
“open” #GApplication methods.

## Automatic resources ## {#automatic-resources}

#GtkApplication will automatically load menus from the #GtkBuilder
resource located at "gtk/menus.ui", relative to the application's
resource base path (see g_application_set_resource_base_path()).  The
menu with the ID "app-menu" is taken as the application's app menu
and the menu with the ID "menubar" is taken as the application's
menubar.  Additional menus (most interesting submenus) can be named
and accessed via gtk_application_get_menu_by_id() which allows for
dynamic population of a part of the menu structure.

If the resources "gtk/menus-appmenu.ui" or "gtk/menus-traditional.ui" are
present then these files will be used in preference, depending on the value
of gtk_application_prefers_app_menu(). If the resource "gtk/menus-common.ui"
is present it will be loaded as well. This is useful for storing items that
are referenced from both "gtk/menus-appmenu.ui" and
"gtk/menus-traditional.ui".

It is also possible to provide the menus manually using
gtk_application_set_app_menu() and gtk_application_set_menubar().

#GtkApplication will also automatically setup an icon search path for
the default icon theme by appending "icons" to the resource base
path.  This allows your application to easily store its icons as
resources.  See gtk_icon_theme_add_resource_path() for more
information.

If there is a resource located at "gtk/help-overlay.ui" which
defines a #GtkShortcutsWindow with ID "help_overlay" then GtkApplication
associates an instance of this shortcuts window with each
#GtkApplicationWindow and sets up keyboard accelerators (Control-F1
and Control-?) to open it. To create a menu item that displays the
shortcuts window, associate the item with the action win.show-help-overlay.

## A simple application ## {#gtkapplication}

[A simple example](https://git.gnome.org/browse/gtk+/tree/examples/bp/bloatpad.c)

GtkApplication optionally registers with a session manager
of the users session (if you set the #GtkApplication:register-session
property) and offers various functionality related to the session
life-cycle.

An application can block various ways to end the session with
the gtk_application_inhibit() function. Typical use cases for
this kind of inhibiting are long-running, uninterruptible operations,
such as burning a CD or performing a disk backup. The session
manager may not honor the inhibitor, but it can be expected to
inform the user about the negative consequences of ending the
session while inhibitors are present.

## See Also ## {#seealso}
[HowDoI: Using GtkApplication](https://wiki.gnome.org/HowDoI/GtkApplication),
[Getting Started with GTK+: Basics](https://developer.gnome.org/gtk3/stable/gtk-getting-started.html#id-1.2.3.3)
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(application_id_pony: String, flags_pony: GApplicationFlags) =>
    widget = @gtk_application_new[GObjectREF](application_id_pony.cstring(), flags_pony) //


/* add_accelerator unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "action_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GVariant*", argname: "parameter", argtype: "GLib.Variant", paramtype: :param, txo: "none"}}
*/

/* add_window unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
*/

/* get_accels_for_action unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

/* get_actions_for_accel unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

/* get_active_window unavailable due to return typing issues
{:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_app_menu unavailable due to return typing issues
{:argctype, "GMenuModel*"}
{:argname, "rv"}
{:argtype, "Gio.MenuModel"}
{:paramtype, :param}
{:txo, "none"} */

/* get_menu_by_id unavailable due to return typing issues
{:argctype, "GMenu*"}
{:argname, "rv"}
{:argtype, "Gio.Menu"}
{:paramtype, :param}
{:txo, "none"} */

/* get_menubar unavailable due to return typing issues
{:argctype, "GMenuModel*"}
{:argname, "rv"}
{:argtype, "Gio.MenuModel"}
{:paramtype, :param}
{:txo, "none"} */

/* get_window_by_id unavailable due to return typing issues
{:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_windows unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "none"} */

/* inhibit unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkApplicationInhibitFlags", argname: "flags", argtype: "ApplicationInhibitFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "reason", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* is_inhibited unavailable due to typing issues
 {:doh, %{argctype: "GtkApplicationInhibitFlags", argname: "flags", argtype: "ApplicationInhibitFlags", paramtype: :param, txo: "none"}}
*/

/* list_action_descriptions unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

fun prefers_app_menu(): Bool =>
"""
Determines if the desktop environment in which the application is
running would prefer an application menu be shown.

If this function returns %TRUE then the application should call
gtk_application_set_app_menu() with the contents of an application
menu, which will be shown by the desktop environment.  If it returns
%FALSE then you should consider using an alternate approach, such as
a menubar.

The value returned by this function is purely advisory and you are
free to ignore it.  If you call gtk_application_set_app_menu() even
if the desktop environment doesn't support app menus, then a fallback
will be provided.

Applications are similarly free not to set an app menu even if the
desktop environment wants to show one.  In that case, a fallback will
also be created by the desktop environment (GNOME, for example, uses
a menu with only a "Quit" item in it).

The value returned by this function never changes.  Once it returns a
particular value, it is guaranteed to always return the same value.

You may only call this function after the application has been
registered and after the base startup handler has run.  You're most
likely to want to use this from your own startup handler.  It may
also make sense to consult this function while constructing UI (in
activate, open or an action activation handler) in order to determine
if you should show a gear menu or not.

This function will return %FALSE on Mac OS and a default app menu
will be created automatically with the "usual" contents of that menu
typical to most Mac OS applications.  If you call
gtk_application_set_app_menu() anyway, then this menu will be
replaced with your own.
"""
  @gtk_application_prefers_app_menu[Bool](widget)

/* remove_accelerator unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "action_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GVariant*", argname: "parameter", argtype: "GLib.Variant", paramtype: :param, txo: "none"}}
*/

/* remove_window unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
*/

/* set_accels_for_action unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "detailed_action_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "accels", argtype: "", paramtype: :param, txo: "none"}}
*/

/* set_app_menu unavailable due to typing issues
 {:doh, %{argctype: "GMenuModel*", argname: "app_menu", argtype: "Gio.MenuModel", paramtype: :param, txo: "none"}}
*/

/* set_menubar unavailable due to typing issues
 {:doh, %{argctype: "GMenuModel*", argname: "menubar", argtype: "Gio.MenuModel", paramtype: :param, txo: "none"}}
*/

fun uninhibit(cookie_pony: U32): None =>
"""
Removes an inhibitor that has been established with gtk_application_inhibit().
Inhibitors are also cleared when the application exits.
"""
  @gtk_application_uninhibit[None](widget, cookie_pony)


```````