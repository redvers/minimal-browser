```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkEventBox val"]
*/
use "../gobject"
class val GtkEventBox is GtkWidget
"""
The #GtkEventBox widget is a subclass of #GtkBin which also has its
own window. It is useful since it allows you to catch events for widgets
which do not have their own window.
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
    widget = @gtk_event_box_new[GObjectREF]() //


fun get_above_child(): Bool =>
"""
Returns whether the event box window is above or below the
windows of its child. See gtk_event_box_set_above_child()
for details.
"""
  @gtk_event_box_get_above_child[Bool](widget)

fun get_visible_window(): Bool =>
"""
Returns whether the event box has a visible window.
See gtk_event_box_set_visible_window() for details.
"""
  @gtk_event_box_get_visible_window[Bool](widget)

fun set_above_child(above_child_pony: Bool): None =>
"""
Set whether the event box window is positioned above the windows
of its child, as opposed to below it. If the window is above, all
events inside the event box will go to the event box. If the window
is below, events in windows of child widgets will first got to that
widget, and then to its parents.

The default is to keep the window below the child.
"""
  @gtk_event_box_set_above_child[None](widget, above_child_pony)

fun set_visible_window(visible_window_pony: Bool): None =>
"""
Set whether the event box uses a visible or invisible child
window. The default is to use visible windows.

In an invisible window event box, the window that the
event box creates is a %GDK_INPUT_ONLY window, which
means that it is invisible and only serves to receive
events.

A visible window event box creates a visible (%GDK_INPUT_OUTPUT)
window that acts as the parent window for all the widgets
contained in the event box.

You should generally make your event box invisible if
you just want to trap events. Creating a visible window
may cause artifacts that are visible to the user, especially
if the user is using a theme with gradients or pixmaps.

The main reason to create a non input-only event box is if
you want to set the background to a different color or
draw on it.

There is one unexpected issue for an invisible event box that has its
window below the child. (See gtk_event_box_set_above_child().)
Since the input-only window is not an ancestor window of any windows
that descendent widgets of the event box create, events on these
windows aren’t propagated up by the windowing system, but only by GTK+.
The practical effect of this is if an event isn’t in the event
mask for the descendant window (see gtk_widget_add_events()),
it won’t be received by the event box.

This problem doesn’t occur for visible event boxes, because in
that case, the event box window is actually the ancestor of the
descendant windows, not just at the same place on the screen.
"""
  @gtk_event_box_set_visible_window[None](widget, visible_window_pony)


```````