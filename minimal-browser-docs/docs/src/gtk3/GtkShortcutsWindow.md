```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkShortcutsWindow val"]
*/
use "../gobject"
class val GtkShortcutsWindow is GtkWidget
"""
A GtkShortcutsWindow shows brief information about the keyboard shortcuts
and gestures of an application. The shortcuts can be grouped, and you can
have multiple sections in this window, corresponding to the major modes of
your application.

Additionally, the shortcuts can be filtered by the current view, to avoid
showing information that is not relevant in the current application context.

The recommended way to construct a GtkShortcutsWindow is with GtkBuilder,
by populating a #GtkShortcutsWindow with one or more #GtkShortcutsSection
objects, which contain #GtkShortcutsGroups that in turn contain objects of
class #GtkShortcutsShortcut.

# A simple example:

![](gedit-shortcuts.png)

This example has as single section. As you can see, the shortcut groups
are arranged in columns, and spread across several pages if there are too
many to find on a single page.

The .ui file for this example can be found [here](https://git.gnome.org/browse/gtk+/tree/demos/gtk-demo/shortcuts-gedit.ui).

# An example with multiple views:

![](clocks-shortcuts.png)

This example shows a #GtkShortcutsWindow that has been configured to show only
the shortcuts relevant to the "stopwatch" view.

The .ui file for this example can be found [here](https://git.gnome.org/browse/gtk+/tree/demos/gtk-demo/shortcuts-clocks.ui).

# An example with multiple sections:

![](builder-shortcuts.png)

This example shows a #GtkShortcutsWindow with two sections, "Editor Shortcuts"
and "Terminal Shortcuts".

The .ui file for this example can be found [here](https://git.gnome.org/browse/gtk+/tree/demos/gtk-demo/shortcuts-builder.ui).
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF






```````