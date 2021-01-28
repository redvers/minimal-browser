```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkActionGroup val"]
*/
use "../gobject"
class val GtkActionGroup is GtkWidget
"""
Actions are organised into groups. An action group is essentially a
map from names to #GtkAction objects.

All actions that would make sense to use in a particular context
should be in a single group. Multiple action groups may be used for a
particular user interface. In fact, it is expected that most nontrivial
applications will make use of multiple groups. For example, in an
application that can edit multiple documents, one group holding global
actions (e.g. quit, about, new), and one group per document holding
actions that act on that document (eg. save, cut/copy/paste, etc). Each
window’s menus would be constructed from a combination of two action
groups.

## Accelerators ## {#Action-Accel}

Accelerators are handled by the GTK+ accelerator map. All actions are
assigned an accelerator path (which normally has the form
`<Actions>/group-name/action-name`) and a shortcut is associated with
this accelerator path. All menuitems and toolitems take on this accelerator
path. The GTK+ accelerator map code makes sure that the correct shortcut
is displayed next to the menu item.

# GtkActionGroup as GtkBuildable # {#GtkActionGroup-BUILDER-UI}

The #GtkActionGroup implementation of the #GtkBuildable interface accepts
#GtkAction objects as <child> elements in UI definitions.

Note that it is probably more common to define actions and action groups
in the code, since they are directly related to what the code can do.

The GtkActionGroup implementation of the GtkBuildable interface supports
a custom <accelerator> element, which has attributes named “key“ and
“modifiers“ and allows to specify accelerators. This is similar to the
<accelerator> element of #GtkWidget, the main difference is that
it doesn’t allow you to specify a signal.

## A #GtkDialog UI definition fragment. ##
|[
<object class="GtkActionGroup" id="actiongroup">
  <child>
      <object class="GtkAction" id="About">
          <property name="name">About</property>
          <property name="stock_id">gtk-about</property>
          <signal handler="about_activate" name="activate"/>
      </object>
      <accelerator key="F1" modifiers="GDK_CONTROL_MASK | GDK_SHIFT_MASK"/>
  </child>
</object>
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


  new val create(name_pony: String) =>
    widget = @gtk_action_group_new[GObjectREF](name_pony.cstring()) //


/* add_action unavailable due to typing issues
 {:doh, %{argctype: "GtkAction*", argname: "action", argtype: "Action", paramtype: :param, txo: "none"}}
*/

/* add_action_with_accel unavailable due to typing issues
 {:doh, %{argctype: "GtkAction*", argname: "action", argtype: "Action", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_actions unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* add_actions_full unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* add_radio_actions unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GCallback", argname: "on_change", argtype: "GObject.Callback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* add_radio_actions_full unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GCallback", argname: "on_change", argtype: "GObject.Callback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* add_toggle_actions unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* add_toggle_actions_full unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* get_accel_group unavailable due to return typing issues
{:argctype, "GtkAccelGroup*"}
{:argname, "rv"}
{:argtype, "AccelGroup"}
{:paramtype, :param}
{:txo, "none"} */

/* get_action unavailable due to return typing issues
{:argctype, "GtkAction*"}
{:argname, "rv"}
{:argtype, "Action"}
{:paramtype, :param}
{:txo, "none"} */

fun get_name(): String =>
"""
Gets the name of the action group.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_group_get_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_sensitive(): Bool =>
"""
Returns %TRUE if the group is sensitive.  The constituent actions
can only be logically sensitive (see gtk_action_is_sensitive()) if
they are sensitive (see gtk_action_get_sensitive()) and their group
is sensitive.
"""
  @gtk_action_group_get_sensitive[Bool](widget)

fun get_visible(): Bool =>
"""
Returns %TRUE if the group is visible.  The constituent actions
can only be logically visible (see gtk_action_is_visible()) if
they are visible (see gtk_action_get_visible()) and their group
is visible.
"""
  @gtk_action_group_get_visible[Bool](widget)

/* list_actions unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* remove_action unavailable due to typing issues
 {:doh, %{argctype: "GtkAction*", argname: "action", argtype: "Action", paramtype: :param, txo: "none"}}
*/

/* set_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

fun set_sensitive(sensitive_pony: Bool): None =>
"""
Changes the sensitivity of @action_group
"""
  @gtk_action_group_set_sensitive[None](widget, sensitive_pony)

/* set_translate_func unavailable due to typing issues
 {:doh, %{argctype: "GtkTranslateFunc", argname: "func", argtype: "TranslateFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "notify", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_translation_domain unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "domain", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_visible(visible_pony: Bool): None =>
"""
Changes the visible of @action_group.
"""
  @gtk_action_group_set_visible[None](widget, visible_pony)

/* translate_string unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "string", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````