# GtkScrolledWindow
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L6)</span>

GtkScrolledWindow is a container that accepts a single child widget, makes
that child scrollable using either internally added scrollbars or externally
associated adjustments, and optionally draws a frame around the child.

Widgets with native scrolling support, i.e. those whose classes implement the
#GtkScrollable interface, are added directly. For other types of widget, the
class #GtkViewport acts as an adaptor, giving scrollability to other widgets.
GtkScrolledWindow’s implementation of gtk_container_add() intelligently
accounts for whether or not the added child is a #GtkScrollable. If it isn’t,
#GtkScrolledWindow wraps the child in a #GtkViewport and adds that for you.
Therefore, you can just add any child widget and not worry about the details.

If gtk_container_add() has added a #GtkViewport for you, you can remove
both your added child widget from the #GtkViewport, and the #GtkViewport
from the GtkScrolledWindow, like this:

|[<!-- language="C" -->
GtkWidget *scrolled_window = gtk_scrolled_window_new (NULL, NULL);
GtkWidget *child_widget = gtk_button_new ();

// GtkButton is not a GtkScrollable, so GtkScrolledWindow will automatically
// add a GtkViewport.
gtk_container_add (GTK_CONTAINER (scrolled_window),
                   child_widget);

// Either of these will result in child_widget being unparented:
gtk_container_remove (GTK_CONTAINER (scrolled_window),
                      child_widget);
// or
gtk_container_remove (GTK_CONTAINER (scrolled_window),
                      gtk_bin_get_child (GTK_BIN (scrolled_window)));
]|

Unless #GtkScrolledWindow:policy is GTK_POLICY_NEVER or GTK_POLICY_EXTERNAL,
GtkScrolledWindow adds internal #GtkScrollbar widgets around its child. The
scroll position of the child, and if applicable the scrollbars, is controlled
by the #GtkScrolledWindow:hadjustment and #GtkScrolledWindow:vadjustment
that are associated with the GtkScrolledWindow. See the docs on #GtkScrollbar
for the details, but note that the “step_increment” and “page_increment”
fields are only effective if the policy causes scrollbars to be present.

If a GtkScrolledWindow doesn’t behave quite as you would like, or
doesn’t have exactly the right layout, it’s very possible to set up
your own scrolling with #GtkScrollbar and for example a #GtkGrid.

# Touch support

GtkScrolledWindow has built-in support for touch devices. When a
touchscreen is used, swiping will move the scrolled window, and will
expose 'kinetic' behavior. This can be turned off with the
#GtkScrolledWindow:kinetic-scrolling property if it is undesired.

GtkScrolledWindow also displays visual 'overshoot' indication when
the content is pulled beyond the end, and this situation can be
captured with the #GtkScrolledWindow::edge-overshot signal.

If no mouse device is present, the scrollbars will overlayed as
narrow, auto-hiding indicators over the content. If traditional
scrollbars are desired although no mouse is present, this behaviour
can be turned off with the #GtkScrolledWindow:overlay-scrolling
property.

# CSS nodes

GtkScrolledWindow has a main CSS node with name scrolledwindow.

It uses subnodes with names overshoot and undershoot to
draw the overflow and underflow indications. These nodes get
the .left, .right, .top or .bottom style class added depending
on where the indication is drawn.

GtkScrolledWindow also sets the positional style classes (.left,
.right, .top, .bottom) and style classes related to overlay
scrolling (.overlay-indicator, .dragging, .hovering) on its scrollbars.

If both scrollbars are visible, the area where they meet is drawn
with a subnode named junction.


```pony
class val GtkScrolledWindow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L90)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkScrolledWindow val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L93)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkScrolledWindow val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L96)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkScrolledWindow val^
```

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L100)</span>


```pony
new val create(
  hadjustment_pony: GtkAdjustment val,
  vadjustment_pony: GtkAdjustment val)
: GtkScrolledWindow val^
```
#### Parameters

*   hadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) val
*   vadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) val

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L86)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L88)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### add_with_viewport
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L104)</span>


Used to add children without native scrolling capabilities. This
is simply a convenience function; it is equivalent to adding the
unscrollable child to a viewport, then adding the viewport to the
scrolled window. If a child has native scrolling, use
gtk_container_add() instead of this function.

The viewport scrolls the child by moving its #GdkWindow, and takes
the size of the child to be the size of its toplevel #GdkWindow.
This will be very wrong for most widgets that support native scrolling;
for example, if you add a widget such as #GtkTreeView with a viewport,
the whole widget will scroll, including the column headings. Thus,
widgets with native scrolling support should not be used with the
#GtkViewport proxy.

A widget supports scrolling natively if it implements the
#GtkScrollable interface.


```pony
fun box add_with_viewport(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### get_capture_button_press
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L125)</span>


Return whether button presses are captured during kinetic
scrolling. See gtk_scrolled_window_set_capture_button_press().


```pony
fun box get_capture_button_press()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_kinetic_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L144)</span>


Returns the specified kinetic scrolling behavior.


```pony
fun box get_kinetic_scrolling()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_max_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L150)</span>


Returns the maximum content height set.


```pony
fun box get_max_content_height()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L156)</span>


Returns the maximum content width set.


```pony
fun box get_max_content_width()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_min_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L162)</span>


Gets the minimal content height of @scrolled_window, or -1 if not set.


```pony
fun box get_min_content_height()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_min_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L168)</span>


Gets the minimum content width of @scrolled_window, or -1 if not set.


```pony
fun box get_min_content_width()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_overlay_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L174)</span>


Returns whether overlay scrolling is enabled for this scrolled window.


```pony
fun box get_overlay_scrolling()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_propagate_natural_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L192)</span>


Reports whether the natural height of the child will be calculated and propagated
through the scrolled window’s requested natural height.


```pony
fun box get_propagate_natural_height()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_propagate_natural_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L199)</span>


Reports whether the natural width of the child will be calculated and propagated
through the scrolled window’s requested natural width.


```pony
fun box get_propagate_natural_width()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_capture_button_press
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L225)</span>


Changes the behaviour of @scrolled_window with regard to the initial
event that possibly starts kinetic scrolling. When @capture_button_press
is set to %TRUE, the event is captured by the scrolled window, and
then later replayed if it is meant to go to the child widget.

This should be enabled if any child widgets perform non-reversible
actions on #GtkWidget::button-press-event. If they don't, and handle
additionally handle #GtkWidget::grab-broken-event, it might be better
to set @capture_button_press to %FALSE.

This setting only has an effect if kinetic scrolling is enabled.


```pony
fun box set_capture_button_press(
  capture_button_press_pony: Bool val)
: None val
```
#### Parameters

*   capture_button_press_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_kinetic_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L245)</span>


Turns kinetic scrolling on or off.
Kinetic scrolling only applies to devices with source
%GDK_SOURCE_TOUCHSCREEN.


```pony
fun box set_kinetic_scrolling(
  kinetic_scrolling_pony: Bool val)
: None val
```
#### Parameters

*   kinetic_scrolling_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L253)</span>


Sets the maximum height that @scrolled_window should keep visible. The
@scrolled_window will grow up to this height before it starts scrolling
the content.

It is a programming error to set the maximum content height to a value
smaller than #GtkScrolledWindow:min-content-height.


```pony
fun box set_max_content_height(
  height_pony: I32 val)
: None val
```
#### Parameters

*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L264)</span>


Sets the maximum width that @scrolled_window should keep visible. The
@scrolled_window will grow up to this width before it starts scrolling
the content.

It is a programming error to set the maximum content width to a value
smaller than #GtkScrolledWindow:min-content-width.


```pony
fun box set_max_content_width(
  width_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L275)</span>


Sets the minimum height that @scrolled_window should keep visible.
Note that this can and (usually will) be smaller than the minimum
size of the content.

It is a programming error to set the minimum content height to a
value greater than #GtkScrolledWindow:max-content-height.


```pony
fun box set_min_content_height(
  height_pony: I32 val)
: None val
```
#### Parameters

*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L286)</span>


Sets the minimum width that @scrolled_window should keep visible.
Note that this can and (usually will) be smaller than the minimum
size of the content.

It is a programming error to set the minimum content width to a
value greater than #GtkScrolledWindow:max-content-width.


```pony
fun box set_min_content_width(
  width_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_overlay_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L297)</span>


Enables or disables overlay scrolling for this scrolled window.


```pony
fun box set_overlay_scrolling(
  overlay_scrolling_pony: Bool val)
: None val
```
#### Parameters

*   overlay_scrolling_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_propagate_natural_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L312)</span>


Sets whether the natural height of the child should be calculated and propagated
through the scrolled window’s requested natural height.


```pony
fun box set_propagate_natural_height(
  propagate_pony: Bool val)
: None val
```
#### Parameters

*   propagate_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_propagate_natural_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L319)</span>


Sets whether the natural width of the child should be calculated and propagated
through the scrolled window’s requested natural width.


```pony
fun box set_propagate_natural_width(
  propagate_pony: Bool val)
: None val
```
#### Parameters

*   propagate_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### unset_placement
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L334)</span>


Unsets the placement of the contents with respect to the scrollbars
for the scrolled window. If no window placement is set for a scrolled
window, it defaults to %GTK_CORNER_TOP_LEFT.

See also gtk_scrolled_window_set_placement() and
gtk_scrolled_window_get_placement().


```pony
fun box unset_placement()
: None val
```

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

