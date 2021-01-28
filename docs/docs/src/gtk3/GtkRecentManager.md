```````pony-full-source
/*
   needs: ["I32", "GObjectREF"]
provides: ["GtkRecentManager val"]
*/
use "../gobject"
class val GtkRecentManager is GtkWidget
"""
#GtkRecentManager provides a facility for adding, removing and
looking up recently used files. Each recently used file is
identified by its URI, and has meta-data associated to it, like
the names and command lines of the applications that have
registered it, the number of time each application has registered
the same file, the mime type of the file and whether the file
should be displayed only by the applications that have
registered it.

The recently used files list is per user.

The #GtkRecentManager acts like a database of all the recently
used files. You can create new #GtkRecentManager objects, but
it is more efficient to use the default manager created by GTK+.

Adding a new recently used file is as simple as:

|[<!-- language="C" -->
GtkRecentManager *manager;

manager = gtk_recent_manager_get_default ();
gtk_recent_manager_add_item (manager, file_uri);
]|

The #GtkRecentManager will try to gather all the needed information
from the file itself through GIO.

Looking up the meta-data associated with a recently used file
given its URI requires calling gtk_recent_manager_lookup_item():

|[<!-- language="C" -->
GtkRecentManager *manager;
GtkRecentInfo *info;
GError *error = NULL;

manager = gtk_recent_manager_get_default ();
info = gtk_recent_manager_lookup_item (manager, file_uri, &error);
if (error)
  {
    g_warning ("Could not find the file: %s", error->message);
    g_error_free (error);
  }
else
 {
   // Use the info object
   gtk_recent_info_unref (info);
 }
]|

In order to retrieve the list of recently used files, you can use
gtk_recent_manager_get_items(), which returns a list of #GtkRecentInfo-structs.

A #GtkRecentManager is the model used to populate the contents of
one, or more #GtkRecentChooser implementations.

Note that the maximum age of the recently used files list is
controllable through the #GtkSettings:gtk-recent-files-max-age
property.

Recently used files are supported since GTK+ 2.10.
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
    widget = @gtk_recent_manager_new[GObjectREF]() //


/* add_full unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkRecentData*", argname: "recent_data", argtype: "RecentData", paramtype: :param, txo: "none"}}
*/

/* add_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* get_items unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"} */

/* has_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* lookup_item unavailable due to return typing issues
{:argctype, "GtkRecentInfo*"}
{:argname, "rv"}
{:argtype, "RecentInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* move_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "new_uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun purge_items(): I32 =>
"""
Purges every item from the recently used resources list.
"""
  @gtk_recent_manager_purge_items[I32](widget)

/* remove_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````