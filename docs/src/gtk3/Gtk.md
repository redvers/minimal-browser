```````pony-full-source
use "lib:gtk-3"
primitive Gtk
/* accel_groups_activate unavailable due to typing issues
 {:doh, %{argctype: "GObject*", argname: "gobject", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* accel_groups_from_object unavailable due to return typing issues
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "none"} */

/* accelerator_get_default_mod_mask unavailable due to return typing issues
{:argctype, "GdkModifierType"}
{:argname, "rv"}
{:argtype, "Gdk.ModifierType"}
{:paramtype, :param}
{:txo, "none"} */

/* accelerator_get_label unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* accelerator_get_label_with_keycode unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* accelerator_name unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* accelerator_name_with_keycode unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* accelerator_parse unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint*", argname: "accelerator_key", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "GdkModifierType*", argname: "accelerator_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "full"}}
*/

/* accelerator_parse_with_keycode unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint*", argname: "accelerator_key", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "accelerator_codes", argtype: "", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "GdkModifierType*", argname: "accelerator_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "full"}}
*/

/* accelerator_set_default_mod_mask unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "default_mod_mask", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* accelerator_valid unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* alternative_dialog_button_order unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

/* binding_entry_add_signal_from_string unavailable due to return typing issues
{:argctype, "GTokenType"}
{:argname, "rv"}
{:argtype, "GLib.TokenType"}
{:paramtype, :param}
{:txo, "none"} */

/* binding_entry_add_signall unavailable due to typing issues
 {:doh, %{argctype: "GtkBindingSet*", argname: "binding_set", argtype: "BindingSet", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "signal_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GSList*", argname: "binding_args", argtype: "GLib.SList", paramtype: :param, txo: "none"}}
*/

/* binding_entry_remove unavailable due to typing issues
 {:doh, %{argctype: "GtkBindingSet*", argname: "binding_set", argtype: "BindingSet", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* binding_entry_skip unavailable due to typing issues
 {:doh, %{argctype: "GtkBindingSet*", argname: "binding_set", argtype: "BindingSet", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* binding_set_by_class unavailable due to return typing issues
{:argctype, "GtkBindingSet*"}
{:argname, "rv"}
{:argtype, "BindingSet"}
{:paramtype, :param}
{:txo, "none"} */

/* binding_set_find unavailable due to return typing issues
{:argctype, "GtkBindingSet*"}
{:argname, "rv"}
{:argtype, "BindingSet"}
{:paramtype, :param}
{:txo, "none"} */

/* binding_set_new unavailable due to return typing issues
{:argctype, "GtkBindingSet*"}
{:argname, "rv"}
{:argtype, "BindingSet"}
{:paramtype, :param}
{:txo, "none"} */

/* bindings_activate unavailable due to typing issues
 {:doh, %{argctype: "GObject*", argname: "gobject", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* bindings_activate_event unavailable due to typing issues
 {:doh, %{argctype: "GObject*", argname: "gobject", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

/* builder_error_quark unavailable due to return typing issues
{:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"} */

/* cairo_should_draw_window unavailable due to typing issues
 {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

/* cairo_transform_to_window unavailable due to typing issues
 {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

fun check_version(required_major_pony: U32, required_minor_pony: U32, required_micro_pony: U32): String =>
"""
Checks that the GTK+ library in use is compatible with the
given version. Generally you would pass in the constants
#GTK_MAJOR_VERSION, #GTK_MINOR_VERSION, #GTK_MICRO_VERSION
as the three arguments to this function; that produces
a check that the library in use is compatible with
the version of GTK+ the application or module was compiled
against.

Compatibility is defined by two things: first the version
of the running library is newer than the version
@required_major.required_minor.@required_micro. Second
the running library must be binary compatible with the
version @required_major.required_minor.@required_micro
(same major version.)

This function is primarily for GTK+ modules; the module
can call this function to check that it wasn’t loaded
into an incompatible version of GTK+. However, such a
check isn’t completely reliable, since the module may be
linked against an old version of GTK+ and calling the
old version of gtk_check_version(), but still get loaded
into an application using a newer version of GTK+.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_check_version[Pointer[U8 val] ref](required_major_pony, required_minor_pony, required_micro_pony)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* css_provider_error_quark unavailable due to return typing issues
{:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"} */

/* device_grab_add unavailable due to typing issues
 {:doh, %{argctype: "GdkDevice*", argname: "device", argtype: "Gdk.Device", paramtype: :param, txo: "none"}}
*/

/* device_grab_remove unavailable due to typing issues
 {:doh, %{argctype: "GdkDevice*", argname: "device", argtype: "Gdk.Device", paramtype: :param, txo: "none"}}
*/

fun disable_setlocale(): None =>
"""
Prevents gtk_init(), gtk_init_check(), gtk_init_with_args() and
gtk_parse_args() from automatically
calling `setlocale (LC_ALL, "")`. You would
want to use this function if you wanted to set the locale for
your program to something other than the user’s locale, or if
you wanted to set different values for different locale categories.

Most programs should not need to call this function.
"""
  @gtk_disable_setlocale[None]()

/* distribute_natural_allocation unavailable due to typing issues
 {:doh, %{argctype: "GtkRequestedSize*", argname: "sizes", argtype: "RequestedSize", paramtype: :param, txo: "none"}}
*/

/* drag_cancel unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/

/* drag_finish unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "time_", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

/* drag_get_source_widget unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/

/* drag_set_icon_default unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/

/* drag_set_icon_gicon unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

/* drag_set_icon_name unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* drag_set_icon_pixbuf unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* drag_set_icon_stock unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* drag_set_icon_surface unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_surface_t*", argname: "surface", argtype: "cairo.Surface", paramtype: :param, txo: "none"}}
*/

/* drag_set_icon_widget unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/

/* draw_insertion_cursor unavailable due to typing issues
 {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "location", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextDirection", argname: "direction", argtype: "TextDirection", paramtype: :param, txo: "none"}}
*/

fun events_pending(): Bool =>
"""
Checks if any events are pending.

This can be used to update the UI and invoke timeouts etc.
while doing some time intensive computation.

## Updating the UI during a long computation

|[<!-- language="C" -->
 // computation going on...

 while (gtk_events_pending ())
   gtk_main_iteration ();

 // ...computation continued
]|
"""
  @gtk_events_pending[Bool]()

fun gfalse(): Bool =>
"""
Analogical to gtk_true(), this function does nothing
but always returns %FALSE.
"""
  @gtk_false[Bool]()

/* file_chooser_error_quark unavailable due to return typing issues
{:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"} */

fun get_binary_age(): U32 =>
"""
Returns the binary age as passed to `libtool`
when building the GTK+ library the process is running against.
If `libtool` means nothing to you, don't
worry about it.
"""
  @gtk_get_binary_age[U32]()

/* get_current_event unavailable due to return typing issues
{:argctype, "GdkEvent*"}
{:argname, "rv"}
{:argtype, "Gdk.Event"}
{:paramtype, :param}
{:txo, "full"} */

/* get_current_event_device unavailable due to return typing issues
{:argctype, "GdkDevice*"}
{:argname, "rv"}
{:argtype, "Gdk.Device"}
{:paramtype, :param}
{:txo, "none"} */

/* get_current_event_state unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType*", argname: "state", argtype: "Gdk.ModifierType", paramtype: :param, txo: "full"}}
*/

/* get_current_event_time unavailable due to return typing issues
{:argctype, "guint32"}
{:argname, "rv"}
{:argtype, "guint32"}
{:paramtype, :param}
{:txo, "none"} */

fun get_debug_flags(): U32 =>
"""
Returns the GTK+ debug flags.

This function is intended for GTK+ modules that want
to adjust their debug output based on GTK+ debug flags.
"""
  @gtk_get_debug_flags[U32]()

/* get_default_language unavailable due to return typing issues
{:argctype, "PangoLanguage*"}
{:argname, "rv"}
{:argtype, "Pango.Language"}
{:paramtype, :param}
{:txo, "none"} */

/* get_event_widget unavailable due to typing issues
 {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/

fun get_interface_age(): U32 =>
"""
Returns the interface age as passed to `libtool`
when building the GTK+ library the process is running against.
If `libtool` means nothing to you, don't
worry about it.
"""
  @gtk_get_interface_age[U32]()

/* get_locale_direction unavailable due to return typing issues
{:argctype, "GtkTextDirection"}
{:argname, "rv"}
{:argtype, "TextDirection"}
{:paramtype, :param}
{:txo, "none"} */

fun get_major_version(): U32 =>
"""
Returns the major version number of the GTK+ library.
(e.g. in GTK+ version 3.1.5 this is 3.)

This function is in the library, so it represents the GTK+ library
your code is running against. Contrast with the #GTK_MAJOR_VERSION
macro, which represents the major version of the GTK+ headers you
have included when compiling your code.
"""
  @gtk_get_major_version[U32]()

fun get_micro_version(): U32 =>
"""
Returns the micro version number of the GTK+ library.
(e.g. in GTK+ version 3.1.5 this is 5.)

This function is in the library, so it represents the GTK+ library
your code is are running against. Contrast with the
#GTK_MICRO_VERSION macro, which represents the micro version of the
GTK+ headers you have included when compiling your code.
"""
  @gtk_get_micro_version[U32]()

fun get_minor_version(): U32 =>
"""
Returns the minor version number of the GTK+ library.
(e.g. in GTK+ version 3.1.5 this is 1.)

This function is in the library, so it represents the GTK+ library
your code is are running against. Contrast with the
#GTK_MINOR_VERSION macro, which represents the minor version of the
GTK+ headers you have included when compiling your code.
"""
  @gtk_get_minor_version[U32]()

/* get_option_group unavailable due to return typing issues
{:argctype, "GOptionGroup*"}
{:argname, "rv"}
{:argtype, "GLib.OptionGroup"}
{:paramtype, :param}
{:txo, "full"} */

/* Needs conversion code 
  fun grab_get_current(): GtkWidget val =>
    @gtk_grab_get_current[GObjectREF]()
*/

/* icon_size_from_name unavailable due to return typing issues
{:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "gint"}
{:paramtype, :param}
{:txo, "none"} */

/* icon_size_get_name unavailable due to typing issues
 {:doh, %{argctype: "GtkIconSize", argname: "size", argtype: "gint", paramtype: :param, txo: "none"}}
*/

/* icon_size_lookup unavailable due to typing issues
 {:doh, %{argctype: "GtkIconSize", argname: "size", argtype: "gint", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* icon_size_lookup_for_settings unavailable due to typing issues
 {:doh, %{argctype: "GtkSettings*", argname: "settings", argtype: "Settings", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkIconSize", argname: "size", argtype: "gint", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* icon_size_register unavailable due to return typing issues
{:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "gint"}
{:paramtype, :param}
{:txo, "none"} */

/* icon_size_register_alias unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "alias", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkIconSize", argname: "target", argtype: "gint", paramtype: :param, txo: "none"}}
*/

/* icon_theme_error_quark unavailable due to return typing issues
{:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"} */

 fun init(): None =>
 """
 Call this function before using any other GTK+ functions in your GUI
applications.  It will initialize everything needed to operate the
toolkit and parses some standard command line options.

Although you are expected to pass the @argc, @argv parameters from main() to
this function, it is possible to pass %NULL if @argv is not available or
commandline handling is not required.

@argc and @argv are adjusted accordingly so your own code will
never see those standard arguments.

Note that there are some alternative ways to initialize GTK+:
if you are calling gtk_parse_args(), gtk_init_check(),
gtk_init_with_args() or g_option_context_parse() with
the option group returned by gtk_get_option_group(),
you don’t have to call gtk_init().

And if you are using #GtkApplication, you don't have to call any of the
initialization functions either; the #GtkApplication::startup handler
does it for you.

This function will terminate your program if it was unable to
initialize the windowing system for some reason. If you want
your program to fall back to a textual interface you want to
call gtk_init_check() instead.

Since 2.18, GTK+ calls `signal (SIGPIPE, SIG_IGN)`
during initialization, to ignore SIGPIPE signals, since these are
almost never wanted in graphical applications. If you do need to
handle SIGPIPE for some reason, reset the handler after gtk_init(),
but notice that other libraries (e.g. libdbus or gvfs) might do
similar things.
 """
     @gtk_init[None](USize(0), None)

/* init_check unavailable due to typing issues
 {:doh, %{argctype: "int*", argname: "argc", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "argv", argtype: "", paramtype: :param, txo: "full"}}
*/

/* init_with_args unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "argc", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "argv", argtype: "", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "const gchar*", argname: "parameter_string", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "translation_domain", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* key_snooper_install unavailable due to typing issues
 {:doh, %{argctype: "GtkKeySnoopFunc", argname: "snooper", argtype: "KeySnoopFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "func_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

fun key_snooper_remove(snooper_handler_id_pony: U32): None =>
"""
Removes the key snooper function with the given id.
"""
  @gtk_key_snooper_remove[None](snooper_handler_id_pony)

fun main(): None =>
"""
Runs the main loop until gtk_main_quit() is called.

You can nest calls to gtk_main(). In that case gtk_main_quit()
will make the innermost invocation of the main loop return.
"""
  @gtk_main[None]()

/* main_do_event unavailable due to typing issues
 {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/

fun main_iteration(): Bool =>
"""
Runs a single iteration of the mainloop.

If no events are waiting to be processed GTK+ will block
until the next event is noticed. If you don’t want to block
look at gtk_main_iteration_do() or check if any events are
pending with gtk_events_pending() first.
"""
  @gtk_main_iteration[Bool]()

fun main_iteration_do(blocking_pony: Bool): Bool =>
"""
Runs a single iteration of the mainloop.
If no events are available either return or block depending on
the value of @blocking.
"""
  @gtk_main_iteration_do[Bool](blocking_pony)

fun main_level(): U32 =>
"""
Asks for the current nesting level of the main loop.
"""
  @gtk_main_level[U32]()

fun main_quit(): None =>
"""
Makes the innermost invocation of the main loop return
when it regains control.
"""
  @gtk_main_quit[None]()

/* paint_arrow unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkArrowType", argname: "arrow_type", argtype: "ArrowType", paramtype: :param, txo: "none"}}
*/

/* paint_box unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_box_gap unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

/* paint_check unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_diamond unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_expander unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkExpanderStyle", argname: "expander_style", argtype: "ExpanderStyle", paramtype: :param, txo: "none"}}
*/

/* paint_extension unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

/* paint_flat_box unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_focus unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_handle unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkOrientation", argname: "orientation", argtype: "Orientation", paramtype: :param, txo: "none"}}
*/

/* paint_hline unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_layout unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "PangoLayout*", argname: "layout", argtype: "Pango.Layout", paramtype: :param, txo: "none"}}
*/

/* paint_option unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_resize_grip unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindowEdge", argname: "edge", argtype: "Gdk.WindowEdge", paramtype: :param, txo: "none"}}
*/

/* paint_shadow unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_shadow_gap unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

/* paint_slider unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkOrientation", argname: "orientation", argtype: "Orientation", paramtype: :param, txo: "none"}}
*/

/* paint_spinner unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_tab unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* paint_vline unavailable due to typing issues
 {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun paper_size_get_default(): String =>
"""
Returns the name of the default paper size, which
depends on the current locale.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_paper_size_get_default[Pointer[U8 val] ref]()
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* paper_size_get_paper_sizes unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"} */

/* parse_args unavailable due to typing issues
 {:doh, %{argctype: "int*", argname: "argc", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "argv", argtype: "", paramtype: :param, txo: "full"}}
*/

/* print_error_quark unavailable due to return typing issues
{:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"} */

/* print_run_page_setup_dialog unavailable due to return typing issues
{:argctype, "GtkPageSetup*"}
{:argname, "rv"}
{:argtype, "PageSetup"}
{:paramtype, :param}
{:txo, "full"} */

/* print_run_page_setup_dialog_async unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPageSetup*", argname: "page_setup", argtype: "PageSetup", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPrintSettings*", argname: "settings", argtype: "PrintSettings", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPageSetupDoneFunc", argname: "done_cb", argtype: "PageSetupDoneFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* propagate_event unavailable due to typing issues
 {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/

/* rc_add_default_file unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "filename", paramtype: :param, txo: "none"}}
*/

/* rc_find_module_in_path unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"} */

/* rc_find_pixmap_in_path unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"} */

/* rc_get_default_files unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"} */

/* rc_get_im_module_file unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"} */

/* rc_get_im_module_path unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"} */

/* rc_get_module_dir unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"} */

/* rc_get_style unavailable due to return typing issues
{:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "none"} */

/* rc_get_style_by_paths unavailable due to return typing issues
{:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "none"} */

/* rc_get_theme_dir unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* rc_parse unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* rc_parse_color unavailable due to typing issues
 {:doh, %{argctype: "GScanner*", argname: "scanner", argtype: "GLib.Scanner", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* rc_parse_color_full unavailable due to typing issues
 {:doh, %{argctype: "GScanner*", argname: "scanner", argtype: "GLib.Scanner", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRcStyle*", argname: "style", argtype: "RcStyle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* rc_parse_priority unavailable due to typing issues
 {:doh, %{argctype: "GScanner*", argname: "scanner", argtype: "GLib.Scanner", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPathPriorityType*", argname: "priority", argtype: "PathPriorityType", paramtype: :param, txo: "none"}}
*/

/* rc_parse_state unavailable due to typing issues
 {:doh, %{argctype: "GScanner*", argname: "scanner", argtype: "GLib.Scanner", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType*", argname: "state", argtype: "StateType", paramtype: :param, txo: "full"}}
*/

/* rc_parse_string unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "rc_string", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* rc_property_parse_border unavailable due to typing issues
 {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* rc_property_parse_color unavailable due to typing issues
 {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* rc_property_parse_enum unavailable due to typing issues
 {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* rc_property_parse_flags unavailable due to typing issues
 {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* rc_property_parse_requisition unavailable due to typing issues
 {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

fun rc_reparse_all(): Bool =>
"""
If the modification time on any previously read file for the
default #GtkSettings has changed, discard all style information
and then reread all previously read RC files.
"""
  @gtk_rc_reparse_all[Bool]()

/* rc_reparse_all_for_settings unavailable due to typing issues
 {:doh, %{argctype: "GtkSettings*", argname: "settings", argtype: "Settings", paramtype: :param, txo: "none"}}
*/

/* rc_reset_styles unavailable due to typing issues
 {:doh, %{argctype: "GtkSettings*", argname: "settings", argtype: "Settings", paramtype: :param, txo: "none"}}
*/

/* rc_scanner_new unavailable due to return typing issues
{:argctype, "GScanner*"}
{:argname, "rv"}
{:argtype, "GLib.Scanner"}
{:paramtype, :param}
{:txo, "notpresent"} */

/* rc_set_default_files unavailable due to typing issues
 {:doh, %{argctype: "", argname: "filenames", argtype: "", paramtype: :param, txo: "none"}}
*/

/* recent_chooser_error_quark unavailable due to return typing issues
{:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"} */

/* recent_manager_error_quark unavailable due to return typing issues
{:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"} */

/* render_activity unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_arrow unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "angle", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_background unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_background_get_clip unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "out_clip", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* render_check unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_expander unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_extension unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

/* render_focus unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_frame unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_frame_gap unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "xy0_gap", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "xy1_gap", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_handle unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_icon unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_icon_pixbuf unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* render_icon_surface unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_surface_t*", argname: "surface", argtype: "cairo.Surface", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_insertion_cursor unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "PangoLayout*", argname: "layout", argtype: "Pango.Layout", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "int", argname: "index", argtype: "gint", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "PangoDirection", argname: "direction", argtype: "Pango.Direction", paramtype: :param, txo: "none"}}
*/

/* render_layout unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "PangoLayout*", argname: "layout", argtype: "Pango.Layout", paramtype: :param, txo: "none"}}
*/

/* render_line unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x0", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y0", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x1", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y1", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_option unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* render_slider unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkOrientation", argname: "orientation", argtype: "Orientation", paramtype: :param, txo: "none"}}
*/

/* rgb_to_hsv unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "r", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "g", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "b", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "h", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "s", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "v", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* selection_add_target unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkAtom", argname: "target", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/

/* selection_add_targets unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/

/* selection_clear_targets unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/

/* selection_convert unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkAtom", argname: "target", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "time_", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

/* selection_owner_set unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "time_", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

/* selection_owner_set_for_display unavailable due to typing issues
 {:doh, %{argctype: "GdkDisplay*", argname: "display", argtype: "Gdk.Display", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "time_", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

fun selection_remove_all(widget_pony: GtkWidget val): None =>
"""
Removes all handlers and unsets ownership of all
selections for a widget. Called when widget is being
destroyed. This function will not generally be
called by applications.
"""
  @gtk_selection_remove_all[None](widget_pony.gtkwidget())

fun set_debug_flags(flags_pony: U32): None =>
"""
Sets the GTK+ debug flags.
"""
  @gtk_set_debug_flags[None](flags_pony)

/* show_about_dialog unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* show_uri unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

/* show_uri_on_window unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const char*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

/* stock_add unavailable due to typing issues
 {:doh, %{argctype: "", argname: "items", argtype: "", paramtype: :param, txo: "none"}}
*/

/* stock_add_static unavailable due to typing issues
 {:doh, %{argctype: "", argname: "items", argtype: "", paramtype: :param, txo: "none"}}
*/

/* stock_list_ids unavailable due to return typing issues
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "full"} */

/* stock_lookup unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStockItem*", argname: "item", argtype: "StockItem", paramtype: :param, txo: "none"}}
*/

/* stock_set_translate_func unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "domain", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTranslateFunc", argname: "func", argtype: "TranslateFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "notify", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* target_table_free unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/

/* target_table_new_from_list unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

/* targets_include_image unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/

/* targets_include_rich_text unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextBuffer*", argname: "buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
*/

/* targets_include_text unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/

/* targets_include_uri unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/

/* test_create_simple_window unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "window_title", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "dialog_text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* test_create_widget unavailable due to typing issues
 {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* test_display_button_window unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "window_title", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "dialog_text", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* test_find_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label_pattern", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* test_find_sibling unavailable due to typing issues
 {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
*/

/* test_find_widget unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label_pattern", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
*/

/* test_init unavailable due to typing issues
 {:doh, %{argctype: "int*", argname: "argcp", argtype: "gint", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "argvp", argtype: "", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* test_list_all_types unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"} */

fun test_register_all_types(): None =>
"""
Force registration of all core Gtk+ and Gdk object types.
This allowes to refer to any of those object types via
g_type_from_name() after calling this function.
"""
  @gtk_test_register_all_types[None]()

/* test_slider_get_value unavailable due to return typing issues
{:argctype, "double"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* test_slider_set_perc unavailable due to typing issues
 {:doh, %{argctype: "double", argname: "percentage", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* test_spin_button_click unavailable due to typing issues
 {:doh, %{argctype: "GtkSpinButton*", argname: "spinner", argtype: "SpinButton", paramtype: :param, txo: "none"}}
*/

/* test_text_get unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* test_text_set unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "string", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* test_widget_click unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* test_widget_send_key unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

fun test_widget_wait_for_draw(widget_pony: GtkWidget val): None =>
"""
Enters the main loop and waits for @widget to be “drawn”. In this
context that means it waits for the frame clock of @widget to have
run a full styling, layout and drawing cycle.

This function is intended to be used for syncing with actions that
depend on @widget relayouting or on interaction with the display
server.
"""
  @gtk_test_widget_wait_for_draw[None](widget_pony.gtkwidget())

/* tree_get_row_drag_data unavailable due to typing issues
 {:doh, %{argctype: "GtkSelectionData*", argname: "selection_data", argtype: "SelectionData", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeModel**", argname: "tree_model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath**", argname: "path", argtype: "TreePath", paramtype: :param, txo: "full"}}
*/

/* tree_row_reference_deleted unavailable due to typing issues
 {:doh, %{argctype: "GObject*", argname: "proxy", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

/* tree_row_reference_inserted unavailable due to typing issues
 {:doh, %{argctype: "GObject*", argname: "proxy", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

/* tree_row_reference_reordered unavailable due to typing issues
 {:doh, %{argctype: "GObject*", argname: "proxy", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "new_order", argtype: "", paramtype: :param, txo: "none"}}
*/

/* tree_set_row_drag_data unavailable due to typing issues
 {:doh, %{argctype: "GtkSelectionData*", argname: "selection_data", argtype: "SelectionData", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeModel*", argname: "tree_model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

fun gtrue(): Bool =>
"""
All this function does it to return %TRUE.

This can be useful for example if you want to inhibit the deletion
of a window. Of course you should not do this as the user expects
a reaction from clicking the close icon of the window...

## A persistent window

|[<!-- language="C" -->
#include <gtk/gtk.h>

int
main (int argc, char **argv)
{
  GtkWidget *win, *but;
  const char *text = "Close yourself. I mean it!";

  gtk_init (&argc, &argv);

  win = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  g_signal_connect (win,
                    "delete-event",
                    G_CALLBACK (gtk_true),
                    NULL);
  g_signal_connect (win, "destroy",
                    G_CALLBACK (gtk_main_quit),
                    NULL);

  but = gtk_button_new_with_label (text);
  g_signal_connect_swapped (but, "clicked",
                            G_CALLBACK (gtk_object_destroy),
                            win);
  gtk_container_add (GTK_CONTAINER (win), but);

  gtk_widget_show_all (win);

  gtk_main ();

  return 0;
}
]|
"""
  @gtk_true[Bool]()

```````