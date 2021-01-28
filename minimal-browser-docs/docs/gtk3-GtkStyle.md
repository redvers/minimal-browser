# GtkStyle
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L6)</span>

A #GtkStyle object encapsulates the information that provides the look and
feel for a widget.

> In GTK+ 3.0, GtkStyle has been deprecated and replaced by
> #GtkStyleContext.

Each #GtkWidget has an associated #GtkStyle object that is used when
rendering that widget. Also, a #GtkStyle holds information for the five
possible widget states though not every widget supports all five
states; see #GtkStateType.

Usually the #GtkStyle for a widget is the same as the default style that
is set by GTK+ and modified the theme engine.

Usually applications should not need to use or modify the #GtkStyle of
their widgets.


```pony
class val GtkStyle is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L29)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkStyle val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L32)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStyle val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L35)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkStyle val^
```

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L39)</span>


```pony
new val create()
: GtkStyle val^
```

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L25)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L27)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### detach
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L63)</span>


Detaches a style from a window. If the style is not attached
to any windows anymore, it is unrealized. See gtk_style_attach().


```pony
fun box detach()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### has_context
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L88)</span>


Returns whether @style has an associated #GtkStyleContext.


```pony
fun box has_context()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

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

