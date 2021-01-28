# GtkTooltip
<span class="source-link">[[Source]](src/gtk3/GtkTooltip.md#L6)</span>

Basic tooltips can be realized simply by using gtk_widget_set_tooltip_text()
or gtk_widget_set_tooltip_markup() without any explicit tooltip object.

When you need a tooltip with a little more fancy contents, like adding an
image, or you want the tooltip to have different contents per #GtkTreeView
row or cell, you will have to do a little more work:

- Set the #GtkWidget:has-tooltip property to %TRUE, this will make GTK+
  monitor the widget for motion and related events which are needed to
  determine when and where to show a tooltip.

- Connect to the #GtkWidget::query-tooltip signal.  This signal will be
  emitted when a tooltip is supposed to be shown. One of the arguments passed
  to the signal handler is a GtkTooltip object. This is the object that we
  are about to display as a tooltip, and can be manipulated in your callback
  using functions like gtk_tooltip_set_icon(). There are functions for setting
  the tooltip’s markup, setting an image from a named icon, or even putting in
  a custom widget.

  Return %TRUE from your query-tooltip handler. This causes the tooltip to be
  show. If you return %FALSE, it will not be shown.

In the probably rare case where you want to have even more control over the
tooltip that is about to be shown, you can set your own #GtkWindow which
will be used as tooltip window.  This works as follows:

- Set #GtkWidget:has-tooltip and connect to #GtkWidget::query-tooltip as before.
  Use gtk_widget_set_tooltip_window() to set a #GtkWindow created by you as
  tooltip window.

- In the #GtkWidget::query-tooltip callback you can access your window using
  gtk_widget_get_tooltip_window() and manipulate as you wish. The semantics of
  the return value are exactly as before, return %TRUE to show the window,
  %FALSE to not show it.


```pony
class val GtkTooltip is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTooltip.md#L47)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTooltip val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTooltip](gtk3-GtkTooltip.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTooltip.md#L50)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTooltip val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTooltip](gtk3-GtkTooltip.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTooltip.md#L53)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTooltip val^
```

#### Returns

* [GtkTooltip](gtk3-GtkTooltip.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTooltip.md#L43)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTooltip.md#L45)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### set_custom
<span class="source-link">[[Source]](src/gtk3/GtkTooltip.md#L59)</span>


Replaces the widget packed into the tooltip with
@custom_widget. @custom_widget does not get destroyed when the tooltip goes
away.
By default a box with a #GtkImage and #GtkLabel is embedded in
the tooltip, which can be configured using gtk_tooltip_set_markup()
and gtk_tooltip_set_icon().


```pony
fun box set_custom(
  custom_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   custom_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

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

