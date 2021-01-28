# GtkHScrollbar
<span class="source-link">[[Source]](src/gtk3/GtkHScrollbar.md#L6)</span>

The #GtkHScrollbar widget is a widget arranged horizontally creating a
scrollbar. See #GtkScrollbar for details on
scrollbars. #GtkAdjustment pointers may be added to handle the
adjustment of the scrollbar or it may be left %NULL in which case one
will be created for you. See #GtkScrollbar for a description of what the
fields in an adjustment represent for a scrollbar.

GtkHScrollbar has been deprecated, use #GtkScrollbar instead.


```pony
class val GtkHScrollbar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkHScrollbar.md#L21)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkHScrollbar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkHScrollbar](gtk3-GtkHScrollbar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHScrollbar.md#L24)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHScrollbar val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHScrollbar](gtk3-GtkHScrollbar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHScrollbar.md#L27)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkHScrollbar val^
```

#### Returns

* [GtkHScrollbar](gtk3-GtkHScrollbar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHScrollbar.md#L31)</span>


```pony
new val create(
  adjustment_pony: GtkAdjustment val)
: GtkHScrollbar val^
```
#### Parameters

*   adjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) val

#### Returns

* [GtkHScrollbar](gtk3-GtkHScrollbar.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHScrollbar.md#L17)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHScrollbar.md#L19)</span>


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

