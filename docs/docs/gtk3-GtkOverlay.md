# GtkOverlay
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L6)</span>

GtkOverlay is a container which contains a single main child, on top
of which it can place “overlay” widgets. The position of each overlay
widget is determined by its #GtkWidget:halign and #GtkWidget:valign
properties. E.g. a widget with both alignments set to %GTK_ALIGN_START
will be placed at the top left corner of the GtkOverlay container,
whereas an overlay with halign set to %GTK_ALIGN_CENTER and valign set
to %GTK_ALIGN_END will be placed a the bottom edge of the GtkOverlay,
horizontally centered. The position can be adjusted by setting the margin
properties of the child to non-zero values.

More complicated placement of overlays is possible by connecting
to the #GtkOverlay::get-child-position signal.

An overlay’s minimum and natural sizes are those of its main child. The sizes
of overlay children are not considered when measuring these preferred sizes.

# GtkOverlay as GtkBuildable

The GtkOverlay implementation of the GtkBuildable interface
supports placing a child as an overlay by specifying “overlay” as
the “type” attribute of a `<child>` element.

# CSS nodes

GtkOverlay has a single CSS node with the name “overlay”. Overlay children
whose alignments cause them to be positioned at an edge get the style classes
“.left”, “.right”, “.top”, and/or “.bottom” according to their position.


```pony
class val GtkOverlay is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L40)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkOverlay val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkOverlay](gtk3-GtkOverlay.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L43)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkOverlay val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkOverlay](gtk3-GtkOverlay.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L46)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkOverlay val^
```

#### Returns

* [GtkOverlay](gtk3-GtkOverlay.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L50)</span>


```pony
new val create()
: GtkOverlay val^
```

#### Returns

* [GtkOverlay](gtk3-GtkOverlay.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L36)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L38)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### add_overlay
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L54)</span>


Adds @widget to @overlay.

The widget will be stacked on top of the main widget
added with gtk_container_add().

The position at which @widget is placed is determined
from its #GtkWidget:halign and #GtkWidget:valign properties.


```pony
fun box add_overlay(
  widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### get_overlay_pass_through
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L66)</span>


Convenience function to get the value of the #GtkOverlay:pass-through
child property for @widget.


```pony
fun box get_overlay_pass_through(
  widget_pony: GtkWidget val)
: Bool val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_overlay_pass_through
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L77)</span>


Convenience function to set the value of the #GtkOverlay:pass-through
child property for @widget.


```pony
fun box set_overlay_pass_through(
  widget_pony: GtkWidget val,
  pass_through_pony: Bool val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   pass_through_pony: [Bool](builtin-Bool.md) val

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

