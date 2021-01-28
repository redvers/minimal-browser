# GtkOffscreenWindow
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L6)</span>

GtkOffscreenWindow is strictly intended to be used for obtaining
snapshots of widgets that are not part of a normal widget hierarchy.
Since #GtkOffscreenWindow is a toplevel widget you cannot obtain
snapshots of a full window with it since you cannot pack a toplevel
widget in another toplevel.

The idea is to take a widget and manually set the state of it,
add it to a GtkOffscreenWindow and then retrieve the snapshot
as a #cairo_surface_t or #GdkPixbuf.

GtkOffscreenWindow derives from #GtkWindow only as an implementation
detail.  Applications should not use any API specific to #GtkWindow
to operate on this object.  It should be treated as a #GtkBin that
has no parent widget.

When contained offscreen widgets are redrawn, GtkOffscreenWindow
will emit a #GtkWidget::damage-event signal.


```pony
class val GtkOffscreenWindow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L30)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkOffscreenWindow val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkOffscreenWindow](gtk3-GtkOffscreenWindow.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L33)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkOffscreenWindow val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkOffscreenWindow](gtk3-GtkOffscreenWindow.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L36)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkOffscreenWindow val^
```

#### Returns

* [GtkOffscreenWindow](gtk3-GtkOffscreenWindow.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L40)</span>


```pony
new val create()
: GtkOffscreenWindow val^
```

#### Returns

* [GtkOffscreenWindow](gtk3-GtkOffscreenWindow.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L26)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L28)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

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

