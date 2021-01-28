# GtkCellRendererPixbuf
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererPixbuf.md#L6)</span>

A #GtkCellRendererPixbuf can be used to render an image in a cell. It allows
to render either a given #GdkPixbuf (set via the
#GtkCellRendererPixbuf:pixbuf property) or a named icon (set via the
#GtkCellRendererPixbuf:icon-name property).

To support the tree view, #GtkCellRendererPixbuf also supports rendering two
alternative pixbufs, when the #GtkCellRenderer:is-expander property is %TRUE.
If the #GtkCellRenderer:is-expanded property is %TRUE and the
#GtkCellRendererPixbuf:pixbuf-expander-open property is set to a pixbuf, it
renders that pixbuf, if the #GtkCellRenderer:is-expanded property is %FALSE
and the #GtkCellRendererPixbuf:pixbuf-expander-closed property is set to a
pixbuf, it renders that one.


```pony
class val GtkCellRendererPixbuf is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererPixbuf.md#L25)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCellRendererPixbuf val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCellRendererPixbuf](gtk3-GtkCellRendererPixbuf.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererPixbuf.md#L28)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRendererPixbuf val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRendererPixbuf](gtk3-GtkCellRendererPixbuf.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererPixbuf.md#L31)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCellRendererPixbuf val^
```

#### Returns

* [GtkCellRendererPixbuf](gtk3-GtkCellRendererPixbuf.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererPixbuf.md#L35)</span>


```pony
new val create()
: GtkCellRendererPixbuf val^
```

#### Returns

* [GtkCellRendererPixbuf](gtk3-GtkCellRendererPixbuf.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererPixbuf.md#L21)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererPixbuf.md#L23)</span>


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

