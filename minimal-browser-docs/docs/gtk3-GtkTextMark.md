# GtkTextMark
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L6)</span>

You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and data
types related to the text widget and how they work together.

A #GtkTextMark is like a bookmark in a text buffer; it preserves a position in
the text. You can convert the mark to an iterator using
gtk_text_buffer_get_iter_at_mark(). Unlike iterators, marks remain valid across
buffer mutations, because their behavior is defined when text is inserted or
deleted. When text containing a mark is deleted, the mark remains in the
position originally occupied by the deleted text. When text is inserted at a
mark, a mark with “left gravity” will be moved to the
beginning of the newly-inserted text, and a mark with “right
gravity” will be moved to the end.

Note that “left” and “right” here refer to logical direction (left
is the toward the start of the buffer); in some languages such as
Hebrew the logically-leftmost text is not actually on the left when
displayed.

Marks are reference counted, but the reference count only controls the validity
of the memory; marks can be deleted from the buffer at any time with
gtk_text_buffer_delete_mark(). Once deleted from the buffer, a mark is
essentially useless.

Marks optionally have names; these can be convenient to avoid passing the
#GtkTextMark object around.

Marks are typically created using the gtk_text_buffer_create_mark() function.


```pony
class val GtkTextMark is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L42)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTextMark val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTextMark](gtk3-GtkTextMark.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L45)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextMark val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextMark](gtk3-GtkTextMark.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L48)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTextMark val^
```

#### Returns

* [GtkTextMark](gtk3-GtkTextMark.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L52)</span>


```pony
new val create(
  name_pony: String val,
  left_gravity_pony: Bool val)
: GtkTextMark val^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val
*   left_gravity_pony: [Bool](builtin-Bool.md) val

#### Returns

* [GtkTextMark](gtk3-GtkTextMark.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L38)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L40)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_deleted
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L63)</span>


Returns %TRUE if the mark has been removed from its buffer
with gtk_text_buffer_delete_mark(). See gtk_text_buffer_add_mark()
for a way to add it to a buffer again.


```pony
fun box get_deleted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_left_gravity
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L71)</span>


Determines whether the mark has left gravity.


```pony
fun box get_left_gravity()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L77)</span>


Returns the mark name; returns NULL for anonymous marks.


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L85)</span>


Returns %TRUE if the mark is visible (i.e. a cursor is displayed
for it).


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L92)</span>


Sets the visibility of @mark; the insertion point is normally
visible, i.e. you can see it as a vertical bar. Also, the text
widget uses a visible mark to indicate where a drop will occur when
dragging-and-dropping text. Most other marks are not visible.
Marks are not visible by default.


```pony
fun box set_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

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

