```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkAccelGroup val"]
*/
use "../gobject"
class val GtkAccelGroup is GtkWidget
"""
A #GtkAccelGroup represents a group of keyboard accelerators,
typically attached to a toplevel #GtkWindow (with
gtk_window_add_accel_group()). Usually you won’t need to create a
#GtkAccelGroup directly; instead, when using #GtkUIManager, GTK+
automatically sets up the accelerators for your menus in the ui
manager’s #GtkAccelGroup.

Note that “accelerators” are different from
“mnemonics”. Accelerators are shortcuts for
activating a menu item; they appear alongside the menu item they’re a
shortcut for. For example “Ctrl+Q” might appear alongside the “Quit”
menu item. Mnemonics are shortcuts for GUI elements such as text
entries or buttons; they appear as underlined characters. See
gtk_label_new_with_mnemonic(). Menu items can have both accelerators
and mnemonics, of course.
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
    widget = @gtk_accel_group_new[GObjectREF]() //


/* activate unavailable due to typing issues
 {:doh, %{argctype: "GQuark", argname: "accel_quark", argtype: "GLib.Quark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GObject*", argname: "acceleratable", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* connect unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkAccelFlags", argname: "accel_flags", argtype: "AccelFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/

/* connect_by_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/

/* disconnect unavailable due to typing issues
 {:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/

/* disconnect_key unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* find unavailable due to return typing issues
{:argctype, "GtkAccelKey*"}
{:argname, "rv"}
{:argtype, "AccelKey"}
{:paramtype, :param}
{:txo, "none"} */

fun get_is_locked(): Bool =>
"""
Locks are added and removed using gtk_accel_group_lock() and
gtk_accel_group_unlock().
"""
  @gtk_accel_group_get_is_locked[Bool](widget)

/* get_modifier_mask unavailable due to return typing issues
{:argctype, "GdkModifierType"}
{:argname, "rv"}
{:argtype, "Gdk.ModifierType"}
{:paramtype, :param}
{:txo, "none"} */

fun lock(): None =>
"""
Locks the given accelerator group.

Locking an acelerator group prevents the accelerators contained
within it to be changed during runtime. Refer to
gtk_accel_map_change_entry() about runtime accelerator changes.

If called more than once, @accel_group remains locked until
gtk_accel_group_unlock() has been called an equivalent number
of times.
"""
  @gtk_accel_group_lock[None](widget)

/* query unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"} */

fun unlock(): None =>
"""
Undoes the last call to gtk_accel_group_lock() on this @accel_group.
"""
  @gtk_accel_group_unlock[None](widget)


```````