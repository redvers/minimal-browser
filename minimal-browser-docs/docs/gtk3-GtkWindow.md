# GtkWindow
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L6)</span>

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


```pony
class val GtkWindow is
  GtkContainer ref
```

#### Implements

* [GtkContainer](gtk3-GtkContainer.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L68)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkWindow val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L71)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkWindow val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L74)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkWindow val^
```

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L78)</span>


```pony
new val create(
  gtype_pony: (GtkWindowToplevel val | GtkWindowPopup val))
: GtkWindow val^
```
#### Parameters

*   gtype_pony: ([GtkWindowToplevel](gtk3-GtkWindowToplevel.md) val | [GtkWindowPopup](gtk3-GtkWindowPopup.md) val)

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L64)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L66)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### activate_default
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L82)</span>


Activates the default widget for the window, unless the current
focused widget has been configured to receive the default action
(see gtk_widget_set_receives_default()), in which case the
focused widget is activated.


```pony
fun box activate_default()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### activate_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L91)</span>


Activates the current focused widget within the window.


```pony
fun box activate_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### add_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L105)</span>


Adds a mnemonic to this window.


```pony
fun box add_mnemonic(
  keyval_pony: U32 val,
  target_pony: GtkWidget val)
: None val
```
#### Parameters

*   keyval_pony: [U32](builtin-U32.md) val
*   target_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### close
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L120)</span>


Requests that the window is closed, similar to what happens
when a window manager close button is clicked.

This function can be used with close buttons in custom
titlebars.


```pony
fun box close()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deiconify
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L130)</span>


Asks to deiconify (i.e. unminimize) the specified @window. Note
that you shouldn’t assume the window is definitely deiconified
afterward, because other entities (e.g. the user or
[window manager][gtk-X11-arch])) could iconify it
again before your code which assumes deiconification gets to run.

You can track iconification via the “window-state-event” signal
on #GtkWidget.


```pony
fun box deiconify()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### fullscreen
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L143)</span>


Asks to place @window in the fullscreen state. Note that you
shouldn’t assume the window is definitely full screen afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could unfullscreen it
again, and not all window managers honor requests to fullscreen
windows. But normally the window will end up fullscreen. Just
don’t write code that crashes if not.

You can track the fullscreen state via the “window-state-event” signal
on #GtkWidget.


```pony
fun box fullscreen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_accept_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L162)</span>


Gets the value set by gtk_window_set_accept_focus().


```pony
fun box get_accept_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_decorated
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L180)</span>


Returns whether the window has been set to have decorations
such as a title bar via gtk_window_set_decorated().


```pony
fun box get_decorated()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_deletable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L197)</span>


Returns whether the window has been set to have a close button
via gtk_window_set_deletable().


```pony
fun box get_deletable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_destroy_with_parent
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L204)</span>


Returns whether the window will be destroyed with its transient parent. See
gtk_window_set_destroy_with_parent ().


```pony
fun box get_destroy_with_parent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_focus_on_map
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L216)</span>


Gets the value set by gtk_window_set_focus_on_map().


```pony
fun box get_focus_on_map()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_focus_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L222)</span>


Gets the value of the #GtkWindow:focus-visible property.


```pony
fun box get_focus_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_resize_grip
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L242)</span>


Determines whether the window may have a resize grip.


```pony
fun box get_has_resize_grip()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_hide_titlebar_when_maximized
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L248)</span>


Returns whether the window has requested to have its titlebar hidden
when maximized. See gtk_window_set_hide_titlebar_when_maximized ().


```pony
fun box get_hide_titlebar_when_maximized()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L269)</span>


Returns the name of the themed icon for the window,
see gtk_window_set_icon_name().


```pony
fun box get_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_mnemonics_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L285)</span>


Gets the value of the #GtkWindow:mnemonics-visible property.


```pony
fun box get_mnemonics_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_modal
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L291)</span>


Returns whether the window is modal. See gtk_window_set_modal().


```pony
fun box get_modal()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_resizable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L309)</span>


Gets the value set by gtk_window_set_resizable().


```pony
fun box get_resizable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_role
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L319)</span>


Returns the role of the window. See gtk_window_set_role() for
further explanation.


```pony
fun box get_role()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_skip_pager_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L340)</span>


Gets the value set by gtk_window_set_skip_pager_hint().


```pony
fun box get_skip_pager_hint()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_skip_taskbar_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L346)</span>


Gets the value set by gtk_window_set_skip_taskbar_hint()


```pony
fun box get_skip_taskbar_hint()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_title
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L352)</span>


Retrieves the title of the window. See gtk_window_set_title().


```pony
fun box get_title()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_urgency_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L379)</span>


Gets the value set by gtk_window_set_urgency_hint()


```pony
fun box get_urgency_hint()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### has_group
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L392)</span>


Returns whether @window has an explicit window group.


```pony
fun box has_group()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### has_toplevel_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L398)</span>


Returns whether the input focus is within this GtkWindow.
For real toplevel windows, this is identical to gtk_window_is_active(),
but for embedded windows, like #GtkPlug, the results will differ.


```pony
fun box has_toplevel_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### iconify
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L406)</span>


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


```pony
fun box iconify()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### is_active
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L425)</span>


Returns whether the window is part of the current active toplevel.
(That is, the toplevel window receiving keystrokes.)
The return value is %TRUE if the window is active toplevel
itself, but also if it is, say, a #GtkPlug embedded in the active toplevel.
You might use this function if you wanted to draw a widget
differently in an active window from a widget in an inactive window.
See gtk_window_has_toplevel_focus()


```pony
fun box is_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_maximized
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L437)</span>


Retrieves the current maximized state of @window.

Note that since maximization is ultimately handled by the window
manager and happens asynchronously to an application request, you
shouldn’t assume the return value of this function changing
immediately (or at all), as an effect of calling
gtk_window_maximize() or gtk_window_unmaximize().


```pony
fun box is_maximized()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### maximize
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L449)</span>


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


```pony
fun box maximize()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### move
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L473)</span>


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


```pony
fun box move(
  x_pony: I32 val,
  y_pony: I32 val)
: None val
```
#### Parameters

*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### present
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L515)</span>


Presents a window to the user. This function should not be used
as when it is called, it is too late to gather a valid timestamp
to allow focus stealing prevention to work correctly.


```pony
fun box present()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L535)</span>


Removes a mnemonic from this window.


```pony
fun box remove_mnemonic(
  keyval_pony: U32 val,
  target_pony: GtkWidget val)
: None val
```
#### Parameters

*   keyval_pony: [U32](builtin-U32.md) val
*   target_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### reshow_with_initial_size
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L541)</span>


Hides @window, then reshows it, resetting the
default size and position of the window. Used
by GUI builders only.


```pony
fun box reshow_with_initial_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### resize
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L549)</span>


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


```pony
fun box resize(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### resize_grip_is_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L582)</span>


Determines whether a resize grip is visible for the specified window.


```pony
fun box resize_grip_is_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### resize_to_geometry
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L588)</span>


Like gtk_window_resize(), but @width and @height are interpreted
in terms of the base size and increment set with
gtk_window_set_geometry_hints.


```pony
fun box resize_to_geometry(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_accept_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L596)</span>


Windows may set a hint asking the desktop environment not to receive
the input focus. This function sets this hint.


```pony
fun box set_accept_focus(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_attached_to
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L607)</span>


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


```pony
fun box set_attached_to(
  attach_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   attach_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_decorated
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L626)</span>


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


```pony
fun box set_decorated(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_default
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L642)</span>


The default widget is the widget that’s activated when the user
presses Enter in a dialog (for example). This function sets or
unsets the default widget for a #GtkWindow. When setting (rather
than unsetting) the default widget it’s generally easier to call
gtk_widget_grab_default() on the widget. Before making a widget
the default widget, you must call gtk_widget_set_can_default() on
the widget you’d like to make the default.


```pony
fun box set_default(
  default_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   default_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_default_geometry
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L654)</span>


Like gtk_window_set_default_size(), but @width and @height are interpreted
in terms of the base size and increment set with
gtk_window_set_geometry_hints.


```pony
fun box set_default_geometry(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_default_size
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L662)</span>


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


```pony
fun box set_default_size(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_deletable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L700)</span>


By default, windows have a close button in the window frame. Some
[window managers][gtk-X11-arch] allow GTK+ to
disable this button. If you set the deletable property to %FALSE
using this function, GTK+ will do its best to convince the window
manager not to show a close button. Depending on the system, this
function may not have any effect when called on a window that is
already visible, so you should call it before calling gtk_widget_show().

On Windows, this function always works, since there’s no window manager
policy involved.


```pony
fun box set_deletable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_destroy_with_parent
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L715)</span>


If @setting is %TRUE, then destroying the transient parent of @window
will also destroy @window itself. This is useful for dialogs that
shouldn’t persist beyond the lifetime of the main window they're
associated with, for example.


```pony
fun box set_destroy_with_parent(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L724)</span>


If @focus is not the current focus widget, and is focusable, sets
it as the focus widget for the window. If @focus is %NULL, unsets
the focus widget for this window. To set the focus to a particular
widget in the toplevel, it is usually more convenient to use
gtk_widget_grab_focus() instead of this function.


```pony
fun box set_focus(
  focus_pony: GtkWidget val)
: None val
```
#### Parameters

*   focus_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_focus_on_map
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L734)</span>


Windows may set a hint asking the desktop environment not to receive
the input focus when the window is mapped.  This function sets this
hint.


```pony
fun box set_focus_on_map(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_focus_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L742)</span>


Sets the #GtkWindow:focus-visible property.


```pony
fun box set_focus_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_resize_grip
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L757)</span>


Sets whether @window has a corner resize grip.

Note that the resize grip is only shown if the window
is actually resizable and not maximized. Use
gtk_window_resize_grip_is_visible() to find out if the
resize grip is currently shown.


```pony
fun box set_has_resize_grip(
  value_pony: Bool val)
: None val
```
#### Parameters

*   value_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_user_ref_count
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L768)</span>


Tells GTK+ whether to drop its extra reference to the window
when gtk_widget_destroy() is called.

This function is only exported for the benefit of language
bindings which may need to keep the window alive until their
wrapper object is garbage collected. There is no justification
for ever calling this function in an application.


```pony
fun box set_has_user_ref_count(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_hide_titlebar_when_maximized
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L780)</span>


If @setting is %TRUE, then @window will request that it’s titlebar
should be hidden when maximized.
This is useful for windows that don’t convey any information other
than the application name in the titlebar, to put the available
screen space to better use. If the underlying window system does not
support the request, the setting will not have any effect.

Note that custom titlebars set with gtk_window_set_titlebar() are
not affected by this. The application is in full control of their
content and visibility anyway.


```pony
fun box set_hide_titlebar_when_maximized(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_keep_above
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L811)</span>


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


```pony
fun box set_keep_above(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_keep_below
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L836)</span>


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


```pony
fun box set_keep_below(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_mnemonics_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L865)</span>


Sets the #GtkWindow:mnemonics-visible property.


```pony
fun box set_mnemonics_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_modal
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L871)</span>


Sets a window modal or non-modal. Modal windows prevent interaction
with other windows in the same application. To keep modal dialogs
on top of main application windows, use
gtk_window_set_transient_for() to make the dialog transient for the
parent; most [window managers][gtk-X11-arch]
will then disallow lowering the dialog below the parent.


```pony
fun box set_modal(
  modal_pony: Bool val)
: None val
```
#### Parameters

*   modal_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_resizable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L890)</span>


Sets whether the user can resize a window. Windows are user resizable
by default.


```pony
fun box set_resizable(
  resizable_pony: Bool val)
: None val
```
#### Parameters

*   resizable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_skip_pager_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L905)</span>


Windows may set a hint asking the desktop environment not to display
the window in the pager. This function sets this hint.
(A "pager" is any desktop navigation tool such as a workspace
switcher that displays a thumbnail representation of the windows
on the screen.)


```pony
fun box set_skip_pager_hint(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_skip_taskbar_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L915)</span>


Windows may set a hint asking the desktop environment not to display
the window in the task bar. This function sets this hint.


```pony
fun box set_skip_taskbar_hint(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_titlebar
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L930)</span>


Sets a custom titlebar for @window.

A typical widget used here is #GtkHeaderBar, as it provides various features
expected of a titlebar while allowing the addition of child widgets to it.

If you set a custom titlebar, GTK+ will do its best to convince
the window manager not to put its own titlebar on the window.
Depending on the system, this function may not work for a window
that is already visible, so you set the titlebar before calling
gtk_widget_show().


```pony
fun box set_titlebar(
  titlebar_pony: GtkWidget val)
: None val
```
#### Parameters

*   titlebar_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_urgency_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L953)</span>


Windows may set a hint asking the desktop environment to draw
the users attention to the window. This function sets this hint.


```pony
fun box set_urgency_hint(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### stick
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L965)</span>


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


```pony
fun box stick()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unfullscreen
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L982)</span>


Asks to toggle off the fullscreen state for @window. Note that you
shouldn’t assume the window is definitely not full screen
afterward, because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could fullscreen it
again, and not all window managers honor requests to unfullscreen
windows. But normally the window will end up restored to its normal
state. Just don’t write code that crashes if not.

You can track the fullscreen state via the “window-state-event” signal
on #GtkWidget.


```pony
fun box unfullscreen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unmaximize
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L997)</span>


Asks to unmaximize @window. Note that you shouldn’t assume the
window is definitely unmaximized afterward, because other entities
(e.g. the user or [window manager][gtk-X11-arch])
could maximize it again, and not all window
managers honor requests to unmaximize. But normally the window will
end up unmaximized. Just don’t write code that crashes if not.

You can track maximization via the “window-state-event” signal
on #GtkWidget.


```pony
fun box unmaximize()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unstick
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1011)</span>


Asks to unstick @window, which means that it will appear on only
one of the user’s desktops. Note that you shouldn’t assume the
window is definitely unstuck afterward, because other entities
(e.g. the user or [window manager][gtk-X11-arch]) could
stick it again. But normally the window will
end up stuck. Just don’t write code that crashes if not.

You can track stickiness via the “window-state-event” signal
on #GtkWidget.


```pony
fun box unstick()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### add



```pony
fun box add(
  childwidget: GtkWidget val)
: None val
```
#### Parameters

*   childwidget: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### show_all



```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy



```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]



```pony
fun box signal_connect[V: Any #share](
  detailed_signal: String val,
  c_handler: @{(GObjectREF, V)}[V] val,
  data: V)
: U64 val
```
#### Parameters

*   detailed_signal: [String](builtin-String.md) val
*   c_handler: @{(GObjectREF, V)}[V] val
*   data: V

#### Returns

* [U64](builtin-U64.md) val

---

