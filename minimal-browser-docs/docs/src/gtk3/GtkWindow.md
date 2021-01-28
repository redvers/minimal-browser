```````pony-full-source
/*
   needs: ["Bool", "None", "U32", "GtkWidget val", "GObjectREF", "Pointer[U8 val] ref", "String", "I32", "GtkWindowType"]
provides: ["GtkWindow val"]
*/
use "../gobject"
class val GtkWindow is GtkContainer
"""
A GtkWindow is a toplevel window which can contain other widgets.
Windows normally have decorations that are under the control
of the windowing system and allow the user to manipulate the window
(resize it, move it, close it,...).

# GtkWindow as GtkBuildable

The GtkWindow implementation of the #GtkBuildable interface supports a
custom <accel-groups> element, which supports any number of <group>
elements representing the #GtkAccelGroup objects you want to add to
your window (synonymous with gtk_window_add_accel_group().

It also supports the <initial-focus> element, whose name property names
the widget to receive the focus when the window is mapped.

An example of a UI definition fragment with accel groups:
|[
<object class="GtkWindow">
  <accel-groups>
    <group name="accelgroup1"/>
  </accel-groups>
  <initial-focus name="thunderclap"/>
</object>

...

<object class="GtkAccelGroup" id="accelgroup1"/>
]|

The GtkWindow implementation of the #GtkBuildable interface supports
setting a child as the titlebar by specifying “titlebar” as the “type”
attribute of a <child> element.

# CSS nodes

|[<!-- language="plain" -->
window.background
├── decoration
├── <titlebar child>.titlebar [.default-decoration]
╰── <child>
]|

GtkWindow has a main CSS node with name window and style class .background,
and a subnode with name decoration.

Style classes that are typically used with the main CSS node are .csd (when
client-side decorations are in use), .solid-csd (for client-side decorations
without invisible borders), .ssd (used by mutter when rendering server-side
decorations). GtkWindow also represents window states with the following
style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
types of window often add their own discriminating style classes, such as
.popup or .tooltip.

GtkWindow adds the .titlebar and .default-decoration style classes to the
widget that is added as a titlebar child.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(gtype_pony: GtkWindowType) =>
    widget = @gtk_window_new[GObjectREF](gtype_pony.apply()) //


fun activate_default(): Bool =>
"""
Activates the default widget for the window, unless the current
focused widget has been configured to receive the default action
(see gtk_widget_set_receives_default()), in which case the
focused widget is activated.
"""
  @gtk_window_activate_default[Bool](widget)

fun activate_focus(): Bool =>
"""
Activates the current focused widget within the window.
"""
  @gtk_window_activate_focus[Bool](widget)

/* activate_key unavailable due to typing issues
 {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

/* add_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

fun add_mnemonic(keyval_pony: U32, target_pony: GtkWidget val): None =>
"""
Adds a mnemonic to this window.
"""
  @gtk_window_add_mnemonic[None](widget, keyval_pony, target_pony.gtkwidget())

/* begin_move_drag unavailable due to typing issues
 {:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

/* begin_resize_drag unavailable due to typing issues
 {:doh, %{argctype: "GdkWindowEdge", argname: "edge", argtype: "Gdk.WindowEdge", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

fun close(): None =>
"""
Requests that the window is closed, similar to what happens
when a window manager close button is clicked.

This function can be used with close buttons in custom
titlebars.
"""
  @gtk_window_close[None](widget)

fun deiconify(): None =>
"""
Asks to deiconify (i.e. unminimize) the specified @window. Note
that you shouldn’t assume the window is definitely deiconified
afterward, because other entities (e.g. the user or
[window manager][gtk-X11-arch])) could iconify it
again before your code which assumes deiconification gets to run.

You can track iconification via the “window-state-event” signal
on #GtkWidget.
"""
  @gtk_window_deiconify[None](widget)

fun fullscreen(): None =>
"""
Asks to place @window in the fullscreen state. Note that you
shouldn’t assume the window is definitely full screen afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could unfullscreen it
again, and not all window managers honor requests to fullscreen
windows. But normally the window will end up fullscreen. Just
don’t write code that crashes if not.

You can track the fullscreen state via the “window-state-event” signal
on #GtkWidget.
"""
  @gtk_window_fullscreen[None](widget)

/* fullscreen_on_monitor unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

fun get_accept_focus(): Bool =>
"""
Gets the value set by gtk_window_set_accept_focus().
"""
  @gtk_window_get_accept_focus[Bool](widget)

/* get_application unavailable due to return typing issues
{:argctype, "GtkApplication*"}
{:argname, "rv"}
{:argtype, "Application"}
{:paramtype, :param}
{:txo, "none"} */

/* Needs conversion code 
  fun get_attached_to(): GtkWidget val =>
    @gtk_window_get_attached_to[GObjectREF](widget)
*/

fun get_decorated(): Bool =>
"""
Returns whether the window has been set to have decorations
such as a title bar via gtk_window_set_decorated().
"""
  @gtk_window_get_decorated[Bool](widget)

/* get_default_size unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* Needs conversion code 
  fun get_default_widget(): GtkWidget val =>
    @gtk_window_get_default_widget[GObjectREF](widget)
*/

fun get_deletable(): Bool =>
"""
Returns whether the window has been set to have a close button
via gtk_window_set_deletable().
"""
  @gtk_window_get_deletable[Bool](widget)

fun get_destroy_with_parent(): Bool =>
"""
Returns whether the window will be destroyed with its transient parent. See
gtk_window_set_destroy_with_parent ().
"""
  @gtk_window_get_destroy_with_parent[Bool](widget)

/* Needs conversion code 
  fun get_focus(): GtkWidget val =>
    @gtk_window_get_focus[GObjectREF](widget)
*/

fun get_focus_on_map(): Bool =>
"""
Gets the value set by gtk_window_set_focus_on_map().
"""
  @gtk_window_get_focus_on_map[Bool](widget)

fun get_focus_visible(): Bool =>
"""
Gets the value of the #GtkWindow:focus-visible property.
"""
  @gtk_window_get_focus_visible[Bool](widget)

/* get_gravity unavailable due to return typing issues
{:argctype, "GdkGravity"}
{:argname, "rv"}
{:argtype, "Gdk.Gravity"}
{:paramtype, :param}
{:txo, "none"} */

/* get_group unavailable due to return typing issues
{:argctype, "GtkWindowGroup*"}
{:argname, "rv"}
{:argtype, "WindowGroup"}
{:paramtype, :param}
{:txo, "none"} */

fun get_has_resize_grip(): Bool =>
"""
Determines whether the window may have a resize grip.
"""
  @gtk_window_get_has_resize_grip[Bool](widget)

fun get_hide_titlebar_when_maximized(): Bool =>
"""
Returns whether the window has requested to have its titlebar hidden
when maximized. See gtk_window_set_hide_titlebar_when_maximized ().
"""
  @gtk_window_get_hide_titlebar_when_maximized[Bool](widget)

/* get_icon unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_list unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

fun get_icon_name(): String =>
"""
Returns the name of the themed icon for the window,
see gtk_window_set_icon_name().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_window_get_icon_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_mnemonic_modifier unavailable due to return typing issues
{:argctype, "GdkModifierType"}
{:argname, "rv"}
{:argtype, "Gdk.ModifierType"}
{:paramtype, :param}
{:txo, "none"} */

fun get_mnemonics_visible(): Bool =>
"""
Gets the value of the #GtkWindow:mnemonics-visible property.
"""
  @gtk_window_get_mnemonics_visible[Bool](widget)

fun get_modal(): Bool =>
"""
Returns whether the window is modal. See gtk_window_set_modal().
"""
  @gtk_window_get_modal[Bool](widget)

/* get_opacity unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_position unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "root_x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "root_y", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_resizable(): Bool =>
"""
Gets the value set by gtk_window_set_resizable().
"""
  @gtk_window_get_resizable[Bool](widget)

/* get_resize_grip_area unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

fun get_role(): String =>
"""
Returns the role of the window. See gtk_window_set_role() for
further explanation.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_window_get_role[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_screen unavailable due to return typing issues
{:argctype, "GdkScreen*"}
{:argname, "rv"}
{:argtype, "Gdk.Screen"}
{:paramtype, :param}
{:txo, "none"} */

/* get_size unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_skip_pager_hint(): Bool =>
"""
Gets the value set by gtk_window_set_skip_pager_hint().
"""
  @gtk_window_get_skip_pager_hint[Bool](widget)

fun get_skip_taskbar_hint(): Bool =>
"""
Gets the value set by gtk_window_set_skip_taskbar_hint()
"""
  @gtk_window_get_skip_taskbar_hint[Bool](widget)

fun get_title(): String =>
"""
Retrieves the title of the window. See gtk_window_set_title().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_window_get_title[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* Needs conversion code 
  fun get_titlebar(): GtkWidget val =>
    @gtk_window_get_titlebar[GObjectREF](widget)
*/

/* get_transient_for unavailable due to return typing issues
{:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_type_hint unavailable due to return typing issues
{:argctype, "GdkWindowTypeHint"}
{:argname, "rv"}
{:argtype, "Gdk.WindowTypeHint"}
{:paramtype, :param}
{:txo, "none"} */

fun get_urgency_hint(): Bool =>
"""
Gets the value set by gtk_window_set_urgency_hint()
"""
  @gtk_window_get_urgency_hint[Bool](widget)

/* get_window_type unavailable due to return typing issues
{:argctype, "GtkWindowType"}
{:argname, "rv"}
{:argtype, "WindowType"}
{:paramtype, :param}
{:txo, "none"} */

fun has_group(): Bool =>
"""
Returns whether @window has an explicit window group.
"""
  @gtk_window_has_group[Bool](widget)

fun has_toplevel_focus(): Bool =>
"""
Returns whether the input focus is within this GtkWindow.
For real toplevel windows, this is identical to gtk_window_is_active(),
but for embedded windows, like #GtkPlug, the results will differ.
"""
  @gtk_window_has_toplevel_focus[Bool](widget)

fun iconify(): None =>
"""
Asks to iconify (i.e. minimize) the specified @window. Note that
you shouldn’t assume the window is definitely iconified afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could deiconify it
again, or there may not be a window manager in which case
iconification isn’t possible, etc. But normally the window will end
up iconified. Just don’t write code that crashes if not.

It’s permitted to call this function before showing a window,
in which case the window will be iconified before it ever appears
onscreen.

You can track iconification via the “window-state-event” signal
on #GtkWidget.
"""
  @gtk_window_iconify[None](widget)

fun is_active(): Bool =>
"""
Returns whether the window is part of the current active toplevel.
(That is, the toplevel window receiving keystrokes.)
The return value is %TRUE if the window is active toplevel
itself, but also if it is, say, a #GtkPlug embedded in the active toplevel.
You might use this function if you wanted to draw a widget
differently in an active window from a widget in an inactive window.
See gtk_window_has_toplevel_focus()
"""
  @gtk_window_is_active[Bool](widget)

fun is_maximized(): Bool =>
"""
Retrieves the current maximized state of @window.

Note that since maximization is ultimately handled by the window
manager and happens asynchronously to an application request, you
shouldn’t assume the return value of this function changing
immediately (or at all), as an effect of calling
gtk_window_maximize() or gtk_window_unmaximize().
"""
  @gtk_window_is_maximized[Bool](widget)

fun maximize(): None =>
"""
Asks to maximize @window, so that it becomes full-screen. Note that
you shouldn’t assume the window is definitely maximized afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could unmaximize it
again, and not all window managers support maximization. But
normally the window will end up maximized. Just don’t write code
that crashes if not.

It’s permitted to call this function before showing a window,
in which case the window will be maximized when it appears onscreen
initially.

You can track maximization via the “window-state-event” signal
on #GtkWidget, or by listening to notifications on the
#GtkWindow:is-maximized property.
"""
  @gtk_window_maximize[None](widget)

/* mnemonic_activate unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "modifier", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

fun move(x_pony: I32, y_pony: I32): None =>
"""
Asks the [window manager][gtk-X11-arch] to move
@window to the given position.  Window managers are free to ignore
this; most window managers ignore requests for initial window
positions (instead using a user-defined placement algorithm) and
honor requests after the window has already been shown.

Note: the position is the position of the gravity-determined
reference point for the window. The gravity determines two things:
first, the location of the reference point in root window
coordinates; and second, which point on the window is positioned at
the reference point.

By default the gravity is #GDK_GRAVITY_NORTH_WEST, so the reference
point is simply the @x, @y supplied to gtk_window_move(). The
top-left corner of the window decorations (aka window frame or
border) will be placed at @x, @y.  Therefore, to position a window
at the top left of the screen, you want to use the default gravity
(which is #GDK_GRAVITY_NORTH_WEST) and move the window to 0,0.

To position a window at the bottom right corner of the screen, you
would set #GDK_GRAVITY_SOUTH_EAST, which means that the reference
point is at @x + the window width and @y + the window height, and
the bottom-right corner of the window border will be placed at that
reference point. So, to place a window in the bottom right corner
you would first set gravity to south east, then write:
`gtk_window_move (window, gdk_screen_width () - window_width,
gdk_screen_height () - window_height)` (note that this
example does not take multi-head scenarios into account).

The [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec)
has a nice table of gravities in the “implementation notes” section.

The gtk_window_get_position() documentation may also be relevant.
"""
  @gtk_window_move[None](widget, x_pony, y_pony)

/* parse_geometry unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "geometry", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun present(): None =>
"""
Presents a window to the user. This function should not be used
as when it is called, it is too late to gather a valid timestamp
to allow focus stealing prevention to work correctly.
"""
  @gtk_window_present[None](widget)

/* present_with_time unavailable due to typing issues
 {:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

/* propagate_key_event unavailable due to typing issues
 {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

/* remove_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

fun remove_mnemonic(keyval_pony: U32, target_pony: GtkWidget val): None =>
"""
Removes a mnemonic from this window.
"""
  @gtk_window_remove_mnemonic[None](widget, keyval_pony, target_pony.gtkwidget())

fun reshow_with_initial_size(): None =>
"""
Hides @window, then reshows it, resetting the
default size and position of the window. Used
by GUI builders only.
"""
  @gtk_window_reshow_with_initial_size[None](widget)

fun resize(width_pony: I32, height_pony: I32): None =>
"""
Resizes the window as if the user had done so, obeying geometry
constraints. The default geometry constraint is that windows may
not be smaller than their size request; to override this
constraint, call gtk_widget_set_size_request() to set the window's
request to a smaller value.

If gtk_window_resize() is called before showing a window for the
first time, it overrides any default size set with
gtk_window_set_default_size().

Windows may not be resized smaller than 1 by 1 pixels.

When using client side decorations, GTK+ will do its best to adjust
the given size so that the resulting window size matches the
requested size without the title bar, borders and shadows added for
the client side decorations, but there is no guarantee that the
result will be totally accurate because these widgets added for
client side decorations depend on the theme and may not be realized
or visible at the time gtk_window_resize() is issued.

If the GtkWindow has a titlebar widget (see gtk_window_set_titlebar()), then
typically, gtk_window_resize() will compensate for the height of the titlebar
widget only if the height is known when the resulting GtkWindow configuration
is issued.
For example, if new widgets are added after the GtkWindow configuration
and cause the titlebar widget to grow in height, this will result in a
window content smaller that specified by gtk_window_resize() and not
a larger window.
"""
  @gtk_window_resize[None](widget, width_pony, height_pony)

fun resize_grip_is_visible(): Bool =>
"""
Determines whether a resize grip is visible for the specified window.
"""
  @gtk_window_resize_grip_is_visible[Bool](widget)

fun resize_to_geometry(width_pony: I32, height_pony: I32): None =>
"""
Like gtk_window_resize(), but @width and @height are interpreted
in terms of the base size and increment set with
gtk_window_set_geometry_hints.
"""
  @gtk_window_resize_to_geometry[None](widget, width_pony, height_pony)

fun set_accept_focus(setting_pony: Bool): None =>
"""
Windows may set a hint asking the desktop environment not to receive
the input focus. This function sets this hint.
"""
  @gtk_window_set_accept_focus[None](widget, setting_pony)

/* set_application unavailable due to typing issues
 {:doh, %{argctype: "GtkApplication*", argname: "application", argtype: "Application", paramtype: :param, txo: "none"}}
*/

fun set_attached_to(attach_widget_pony: GtkWidget val): None =>
"""
Marks @window as attached to @attach_widget. This creates a logical binding
between the window and the widget it belongs to, which is used by GTK+ to
propagate information such as styling or accessibility to @window as if it
was a children of @attach_widget.

Examples of places where specifying this relation is useful are for instance
a #GtkMenu created by a #GtkComboBox, a completion popup window
created by #GtkEntry or a typeahead search entry created by #GtkTreeView.

Note that this function should not be confused with
gtk_window_set_transient_for(), which specifies a window manager relation
between two toplevels instead.

Passing %NULL for @attach_widget detaches the window.
"""
  @gtk_window_set_attached_to[None](widget, attach_widget_pony.gtkwidget())

fun set_decorated(setting_pony: Bool): None =>
"""
By default, windows are decorated with a title bar, resize
controls, etc.  Some [window managers][gtk-X11-arch]
allow GTK+ to disable these decorations, creating a
borderless window. If you set the decorated property to %FALSE
using this function, GTK+ will do its best to convince the window
manager not to decorate the window. Depending on the system, this
function may not have any effect when called on a window that is
already visible, so you should call it before calling gtk_widget_show().

On Windows, this function always works, since there’s no window manager
policy involved.
"""
  @gtk_window_set_decorated[None](widget, setting_pony)

fun set_default(default_widget_pony: GtkWidget val): None =>
"""
The default widget is the widget that’s activated when the user
presses Enter in a dialog (for example). This function sets or
unsets the default widget for a #GtkWindow. When setting (rather
than unsetting) the default widget it’s generally easier to call
gtk_widget_grab_default() on the widget. Before making a widget
the default widget, you must call gtk_widget_set_can_default() on
the widget you’d like to make the default.
"""
  @gtk_window_set_default[None](widget, default_widget_pony.gtkwidget())

fun set_default_geometry(width_pony: I32, height_pony: I32): None =>
"""
Like gtk_window_set_default_size(), but @width and @height are interpreted
in terms of the base size and increment set with
gtk_window_set_geometry_hints.
"""
  @gtk_window_set_default_geometry[None](widget, width_pony, height_pony)

fun set_default_size(width_pony: I32, height_pony: I32): None =>
"""
Sets the default size of a window. If the window’s “natural” size
(its size request) is larger than the default, the default will be
ignored. More generally, if the default size does not obey the
geometry hints for the window (gtk_window_set_geometry_hints() can
be used to set these explicitly), the default size will be clamped
to the nearest permitted size.

Unlike gtk_widget_set_size_request(), which sets a size request for
a widget and thus would keep users from shrinking the window, this
function only sets the initial size, just as if the user had
resized the window themselves. Users can still shrink the window
again as they normally would. Setting a default size of -1 means to
use the “natural” default size (the size request of the window).

For more control over a window’s initial size and how resizing works,
investigate gtk_window_set_geometry_hints().

For some uses, gtk_window_resize() is a more appropriate function.
gtk_window_resize() changes the current size of the window, rather
than the size to be used on initial display. gtk_window_resize() always
affects the window itself, not the geometry widget.

The default size of a window only affects the first time a window is
shown; if a window is hidden and re-shown, it will remember the size
it had prior to hiding, rather than using the default size.

Windows can’t actually be 0x0 in size, they must be at least 1x1, but
passing 0 for @width and @height is OK, resulting in a 1x1 default size.

If you use this function to reestablish a previously saved window size,
note that the appropriate size to save is the one returned by
gtk_window_get_size(). Using the window allocation directly will not
work in all circumstances and can lead to growing or shrinking windows.
"""
  @gtk_window_set_default_size[None](widget, width_pony, height_pony)

fun set_deletable(setting_pony: Bool): None =>
"""
By default, windows have a close button in the window frame. Some
[window managers][gtk-X11-arch] allow GTK+ to
disable this button. If you set the deletable property to %FALSE
using this function, GTK+ will do its best to convince the window
manager not to show a close button. Depending on the system, this
function may not have any effect when called on a window that is
already visible, so you should call it before calling gtk_widget_show().

On Windows, this function always works, since there’s no window manager
policy involved.
"""
  @gtk_window_set_deletable[None](widget, setting_pony)

fun set_destroy_with_parent(setting_pony: Bool): None =>
"""
If @setting is %TRUE, then destroying the transient parent of @window
will also destroy @window itself. This is useful for dialogs that
shouldn’t persist beyond the lifetime of the main window they're
associated with, for example.
"""
  @gtk_window_set_destroy_with_parent[None](widget, setting_pony)

fun set_focus(focus_pony: GtkWidget val): None =>
"""
If @focus is not the current focus widget, and is focusable, sets
it as the focus widget for the window. If @focus is %NULL, unsets
the focus widget for this window. To set the focus to a particular
widget in the toplevel, it is usually more convenient to use
gtk_widget_grab_focus() instead of this function.
"""
  @gtk_window_set_focus[None](widget, focus_pony.gtkwidget())

fun set_focus_on_map(setting_pony: Bool): None =>
"""
Windows may set a hint asking the desktop environment not to receive
the input focus when the window is mapped.  This function sets this
hint.
"""
  @gtk_window_set_focus_on_map[None](widget, setting_pony)

fun set_focus_visible(setting_pony: Bool): None =>
"""
Sets the #GtkWindow:focus-visible property.
"""
  @gtk_window_set_focus_visible[None](widget, setting_pony)

/* set_geometry_hints unavailable due to typing issues
 {:doh, %{argctype: "GdkGeometry*", argname: "geometry", argtype: "Gdk.Geometry", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindowHints", argname: "geom_mask", argtype: "Gdk.WindowHints", paramtype: :param, txo: "none"}}
*/

/* set_gravity unavailable due to typing issues
 {:doh, %{argctype: "GdkGravity", argname: "gravity", argtype: "Gdk.Gravity", paramtype: :param, txo: "none"}}
*/

fun set_has_resize_grip(value_pony: Bool): None =>
"""
Sets whether @window has a corner resize grip.

Note that the resize grip is only shown if the window
is actually resizable and not maximized. Use
gtk_window_resize_grip_is_visible() to find out if the
resize grip is currently shown.
"""
  @gtk_window_set_has_resize_grip[None](widget, value_pony)

fun set_has_user_ref_count(setting_pony: Bool): None =>
"""
Tells GTK+ whether to drop its extra reference to the window
when gtk_widget_destroy() is called.

This function is only exported for the benefit of language
bindings which may need to keep the window alive until their
wrapper object is garbage collected. There is no justification
for ever calling this function in an application.
"""
  @gtk_window_set_has_user_ref_count[None](widget, setting_pony)

fun set_hide_titlebar_when_maximized(setting_pony: Bool): None =>
"""
If @setting is %TRUE, then @window will request that it’s titlebar
should be hidden when maximized.
This is useful for windows that don’t convey any information other
than the application name in the titlebar, to put the available
screen space to better use. If the underlying window system does not
support the request, the setting will not have any effect.

Note that custom titlebars set with gtk_window_set_titlebar() are
not affected by this. The application is in full control of their
content and visibility anyway.
"""
  @gtk_window_set_hide_titlebar_when_maximized[None](widget, setting_pony)

/* set_icon unavailable due to typing issues
 {:doh, %{argctype: "GdkPixbuf*", argname: "icon", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_file unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "filename", paramtype: :param, txo: "none"}}
*/

/* set_icon_list unavailable due to typing issues
 {:doh, %{argctype: "GList*", argname: "list", argtype: "GLib.List", paramtype: :param, txo: "none"}}
*/

/* set_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_keep_above(setting_pony: Bool): None =>
"""
Asks to keep @window above, so that it stays on top. Note that
you shouldn’t assume the window is definitely above afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could not keep it above,
and not all window managers support keeping windows above. But
normally the window will end kept above. Just don’t write code
that crashes if not.

It’s permitted to call this function before showing a window,
in which case the window will be kept above when it appears onscreen
initially.

You can track the above state via the “window-state-event” signal
on #GtkWidget.

Note that, according to the
[Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
the above state is mainly meant for user preferences and should not
be used by applications e.g. for drawing attention to their
dialogs.
"""
  @gtk_window_set_keep_above[None](widget, setting_pony)

fun set_keep_below(setting_pony: Bool): None =>
"""
Asks to keep @window below, so that it stays in bottom. Note that
you shouldn’t assume the window is definitely below afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could not keep it below,
and not all window managers support putting windows below. But
normally the window will be kept below. Just don’t write code
that crashes if not.

It’s permitted to call this function before showing a window,
in which case the window will be kept below when it appears onscreen
initially.

You can track the below state via the “window-state-event” signal
on #GtkWidget.

Note that, according to the
[Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
the above state is mainly meant for user preferences and should not
be used by applications e.g. for drawing attention to their
dialogs.
"""
  @gtk_window_set_keep_below[None](widget, setting_pony)

/* set_mnemonic_modifier unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "modifier", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

fun set_mnemonics_visible(setting_pony: Bool): None =>
"""
Sets the #GtkWindow:mnemonics-visible property.
"""
  @gtk_window_set_mnemonics_visible[None](widget, setting_pony)

fun set_modal(modal_pony: Bool): None =>
"""
Sets a window modal or non-modal. Modal windows prevent interaction
with other windows in the same application. To keep modal dialogs
on top of main application windows, use
gtk_window_set_transient_for() to make the dialog transient for the
parent; most [window managers][gtk-X11-arch]
will then disallow lowering the dialog below the parent.
"""
  @gtk_window_set_modal[None](widget, modal_pony)

/* set_opacity unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "opacity", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_position unavailable due to typing issues
 {:doh, %{argctype: "GtkWindowPosition", argname: "position", argtype: "WindowPosition", paramtype: :param, txo: "none"}}
*/

fun set_resizable(resizable_pony: Bool): None =>
"""
Sets whether the user can resize a window. Windows are user resizable
by default.
"""
  @gtk_window_set_resizable[None](widget, resizable_pony)

/* set_role unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "role", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_screen unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

fun set_skip_pager_hint(setting_pony: Bool): None =>
"""
Windows may set a hint asking the desktop environment not to display
the window in the pager. This function sets this hint.
(A "pager" is any desktop navigation tool such as a workspace
switcher that displays a thumbnail representation of the windows
on the screen.)
"""
  @gtk_window_set_skip_pager_hint[None](widget, setting_pony)

fun set_skip_taskbar_hint(setting_pony: Bool): None =>
"""
Windows may set a hint asking the desktop environment not to display
the window in the task bar. This function sets this hint.
"""
  @gtk_window_set_skip_taskbar_hint[None](widget, setting_pony)

/* set_startup_id unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "startup_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_title unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_titlebar(titlebar_pony: GtkWidget val): None =>
"""
Sets a custom titlebar for @window.

A typical widget used here is #GtkHeaderBar, as it provides various features
expected of a titlebar while allowing the addition of child widgets to it.

If you set a custom titlebar, GTK+ will do its best to convince
the window manager not to put its own titlebar on the window.
Depending on the system, this function may not work for a window
that is already visible, so you set the titlebar before calling
gtk_widget_show().
"""
  @gtk_window_set_titlebar[None](widget, titlebar_pony.gtkwidget())

/* set_transient_for unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
*/

/* set_type_hint unavailable due to typing issues
 {:doh, %{argctype: "GdkWindowTypeHint", argname: "hint", argtype: "Gdk.WindowTypeHint", paramtype: :param, txo: "none"}}
*/

fun set_urgency_hint(setting_pony: Bool): None =>
"""
Windows may set a hint asking the desktop environment to draw
the users attention to the window. This function sets this hint.
"""
  @gtk_window_set_urgency_hint[None](widget, setting_pony)

/* set_wmclass unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "wmclass_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "wmclass_class", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun stick(): None =>
"""
Asks to stick @window, which means that it will appear on all user
desktops. Note that you shouldn’t assume the window is definitely
stuck afterward, because other entities (e.g. the user or
[window manager][gtk-X11-arch] could unstick it
again, and some window managers do not support sticking
windows. But normally the window will end up stuck. Just don't
write code that crashes if not.

It’s permitted to call this function before showing a window.

You can track stickiness via the “window-state-event” signal
on #GtkWidget.
"""
  @gtk_window_stick[None](widget)

fun unfullscreen(): None =>
"""
Asks to toggle off the fullscreen state for @window. Note that you
shouldn’t assume the window is definitely not full screen
afterward, because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could fullscreen it
again, and not all window managers honor requests to unfullscreen
windows. But normally the window will end up restored to its normal
state. Just don’t write code that crashes if not.

You can track the fullscreen state via the “window-state-event” signal
on #GtkWidget.
"""
  @gtk_window_unfullscreen[None](widget)

fun unmaximize(): None =>
"""
Asks to unmaximize @window. Note that you shouldn’t assume the
window is definitely unmaximized afterward, because other entities
(e.g. the user or [window manager][gtk-X11-arch])
could maximize it again, and not all window
managers honor requests to unmaximize. But normally the window will
end up unmaximized. Just don’t write code that crashes if not.

You can track maximization via the “window-state-event” signal
on #GtkWidget.
"""
  @gtk_window_unmaximize[None](widget)

fun unstick(): None =>
"""
Asks to unstick @window, which means that it will appear on only
one of the user’s desktops. Note that you shouldn’t assume the
window is definitely unstuck afterward, because other entities
(e.g. the user or [window manager][gtk-X11-arch]) could
stick it again. But normally the window will
end up stuck. Just don’t write code that crashes if not.

You can track stickiness via the “window-state-event” signal
on #GtkWidget.
"""
  @gtk_window_unstick[None](widget)


```````