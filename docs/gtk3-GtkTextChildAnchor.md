# GtkTextChildAnchor
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L6)</span>

A #GtkTextChildAnchor is a spot in the buffer where child widgets can
be “anchored” (inserted inline, as if they were characters). The anchor
can have multiple widgets anchored, to allow for multiple views.


```pony
class val GtkTextChildAnchor is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L16)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTextChildAnchor val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTextChildAnchor](gtk3-GtkTextChildAnchor.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L19)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextChildAnchor val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextChildAnchor](gtk3-GtkTextChildAnchor.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L22)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTextChildAnchor val^
```

#### Returns

* [GtkTextChildAnchor](gtk3-GtkTextChildAnchor.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L26)</span>


```pony
new val create()
: GtkTextChildAnchor val^
```

#### Returns

* [GtkTextChildAnchor](gtk3-GtkTextChildAnchor.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L12)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L14)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_deleted
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L30)</span>


Determines whether a child anchor has been deleted from
the buffer. Keep in mind that the child anchor will be
unreferenced when removed from the buffer, so you need to
hold your own reference (with g_object_ref()) if you plan
to use this function — otherwise all deleted child anchors
will also be finalized.


```pony
fun box get_deleted()
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

