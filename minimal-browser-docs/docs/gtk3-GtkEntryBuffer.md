# GtkEntryBuffer
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L6)</span>

The #GtkEntryBuffer class contains the actual text displayed in a
#GtkEntry widget.

A single #GtkEntryBuffer object can be shared by multiple #GtkEntry
widgets which will then share the same text content, but not the cursor
position, visibility attributes, icon etc.

#GtkEntryBuffer may be derived from. Such a derived class might allow
text to be stored in an alternate location, such as non-pageable memory,
useful in the case of important passwords. Or a derived class could
integrate with an application’s concept of undo/redo.


```pony
class val GtkEntryBuffer is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L24)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkEntryBuffer val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L27)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEntryBuffer val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L30)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkEntryBuffer val^
```

#### Returns

* [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L34)</span>


```pony
new val create(
  initial_chars_pony: String val,
  n_initial_chars_pony: I32 val)
: GtkEntryBuffer val^
```
#### Parameters

*   initial_chars_pony: [String](builtin-String.md) val
*   n_initial_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L20)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L22)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### delete_text
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L38)</span>


Deletes a sequence of characters from the buffer. @n_chars characters are
deleted starting at @position. If @n_chars is negative, then all characters
until the end of the text are deleted.

If @position or @n_chars are out of bounds, then they are coerced to sane
values.

Note that the positions are specified in characters, not bytes.


```pony
fun box delete_text(
  position_pony: U32 val,
  n_chars_pony: I32 val)
: U32 val
```
#### Parameters

*   position_pony: [U32](builtin-U32.md) val
*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [U32](builtin-U32.md) val

---

### emit_deleted_text
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L51)</span>


Used when subclassing #GtkEntryBuffer


```pony
fun box emit_deleted_text(
  position_pony: U32 val,
  n_chars_pony: U32 val)
: None val
```
#### Parameters

*   position_pony: [U32](builtin-U32.md) val
*   n_chars_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### get_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L68)</span>


Retrieves the length in characters of the buffer.


```pony
fun box get_length()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L74)</span>


Retrieves the maximum allowed length of the text in
@buffer. See gtk_entry_buffer_set_max_length().


```pony
fun box get_max_length()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L81)</span>


Retrieves the contents of the buffer.

The memory pointer returned by this call will not change
unless this object emits a signal, or is finalized.


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### set_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L96)</span>


Sets the maximum allowed length of the contents of the buffer. If
the current contents are longer than the given length, then they
will be truncated to fit.


```pony
fun box set_max_length(
  max_length_pony: I32 val)
: None val
```
#### Parameters

*   max_length_pony: [I32](builtin-I32.md) val

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

