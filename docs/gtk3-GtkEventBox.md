# GtkEventBox
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L6)</span>

The #GtkEventBox widget is a subclass of #GtkBin which also has its
own window. It is useful since it allows you to catch events for widgets
which do not have their own window.


```pony
class val GtkEventBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L16)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkEventBox val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkEventBox](gtk3-GtkEventBox.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L19)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEventBox val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEventBox](gtk3-GtkEventBox.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L22)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkEventBox val^
```

#### Returns

* [GtkEventBox](gtk3-GtkEventBox.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L26)</span>


```pony
new val create()
: GtkEventBox val^
```

#### Returns

* [GtkEventBox](gtk3-GtkEventBox.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L12)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L14)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_above_child
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L30)</span>


Returns whether the event box window is above or below the
windows of its child. See gtk_event_box_set_above_child()
for details.


```pony
fun box get_above_child()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_window
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L38)</span>


Returns whether the event box has a visible window.
See gtk_event_box_set_visible_window() for details.


```pony
fun box get_visible_window()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_above_child
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L45)</span>


Set whether the event box window is positioned above the windows
of its child, as opposed to below it. If the window is above, all
events inside the event box will go to the event box. If the window
is below, events in windows of child widgets will first got to that
widget, and then to its parents.

The default is to keep the window below the child.


```pony
fun box set_above_child(
  above_child_pony: Bool val)
: None val
```
#### Parameters

*   above_child_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible_window
<span class="source-link">[[Source]](src/gtk3/GtkEventBox.md#L57)</span>


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


```pony
fun box set_visible_window(
  visible_window_pony: Bool val)
: None val
```
#### Parameters

*   visible_window_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### show_all
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L4)</span>


```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L7)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


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

