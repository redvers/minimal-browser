```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkSearchBar val"]
*/
use "../gobject"
class val GtkSearchBar is GtkWidget
"""
#GtkSearchBar is a container made to have a search entry (possibly
with additional connex widgets, such as drop-down menus, or buttons)
built-in. The search bar would appear when a search is started through
typing on the keyboard, or the application’s search mode is toggled on.

For keyboard presses to start a search, events will need to be
forwarded from the top-level window that contains the search bar.
See gtk_search_bar_handle_event() for example code. Common shortcuts
such as Ctrl+F should be handled as an application action, or through
the menu items.

You will also need to tell the search bar about which entry you
are using as your search entry using gtk_search_bar_connect_entry().
The following example shows you how to create a more complex search
entry.

# CSS nodes

GtkSearchBar has a single CSS node with name searchbar.

## Creating a search bar

[A simple example](https://gitlab.gnome.org/GNOME/gtk/blob/gtk-3-24/examples/search-bar.c)
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
    widget = @gtk_search_bar_new[GObjectREF]() //


/* connect_entry unavailable due to typing issues
 {:doh, %{argctype: "GtkEntry*", argname: "entry", argtype: "Entry", paramtype: :param, txo: "none"}}
*/

fun get_search_mode(): Bool =>
"""
Returns whether the search mode is on or off.
"""
  @gtk_search_bar_get_search_mode[Bool](widget)

fun get_show_close_button(): Bool =>
"""
Returns whether the close button is shown.
"""
  @gtk_search_bar_get_show_close_button[Bool](widget)

/* handle_event unavailable due to typing issues
 {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/

fun set_search_mode(search_mode_pony: Bool): None =>
"""
Switches the search mode on or off.
"""
  @gtk_search_bar_set_search_mode[None](widget, search_mode_pony)

fun set_show_close_button(visible_pony: Bool): None =>
"""
Shows or hides the close button. Applications that
already have a “search” toggle button should not show a close
button in their search bar, as it duplicates the role of the
toggle button.
"""
  @gtk_search_bar_set_show_close_button[None](widget, visible_pony)


```````