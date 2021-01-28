# GtkTextBuffer
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L6)</span>

You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and data
types related to the text widget and how they work together.


```pony
class val GtkTextBuffer is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L17)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTextBuffer val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTextBuffer](gtk3-GtkTextBuffer.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L20)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextBuffer val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextBuffer](gtk3-GtkTextBuffer.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L23)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTextBuffer val^
```

#### Returns

* [GtkTextBuffer](gtk3-GtkTextBuffer.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L27)</span>


```pony
new val create(
  table_pony: GtkTextTagTable val)
: GtkTextBuffer val^
```
#### Parameters

*   table_pony: [GtkTextTagTable](gtk3-GtkTextTagTable.md) val

#### Returns

* [GtkTextBuffer](gtk3-GtkTextBuffer.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L13)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L15)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### begin_user_action
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L56)</span>


Called to indicate that the buffer operations between here and a
call to gtk_text_buffer_end_user_action() are part of a single
user-visible operation. The operations between
gtk_text_buffer_begin_user_action() and
gtk_text_buffer_end_user_action() can then be grouped when creating
an undo stack. #GtkTextBuffer maintains a count of calls to
gtk_text_buffer_begin_user_action() that have not been closed with
a call to gtk_text_buffer_end_user_action(), and emits the
“begin-user-action” and “end-user-action” signals only for the
outermost pair of calls. This allows you to build user actions
from other user actions.

The “interactive” buffer mutation functions, such as
gtk_text_buffer_insert_interactive(), automatically call begin/end
user action around the buffer operations they perform, so there's
no need to add extra calls if you user action consists solely of a
single call to one of those functions.


```pony
fun box begin_user_action()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### delete_selection
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L125)</span>


Deletes the range between the “insert” and “selection_bound” marks,
that is, the currently-selected text. If @interactive is %TRUE,
the editability of the selection will be considered (users can’t delete
uneditable text).


```pony
fun box delete_selection(
  interactive_pony: Bool val,
  default_editable_pony: Bool val)
: Bool val
```
#### Parameters

*   interactive_pony: [Bool](builtin-Bool.md) val
*   default_editable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### end_user_action
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L150)</span>


Should be paired with a call to gtk_text_buffer_begin_user_action().
See that function for a full explanation.


```pony
fun box end_user_action()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_char_count
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L162)</span>


Gets the number of characters in the buffer; note that characters
and bytes are not the same, you can’t e.g. expect the contents of
the buffer in string form to be this many bytes long. The character
count is cached, so this function is very fast.


```pony
fun box get_char_count()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_has_selection
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L189)</span>


Indicates whether the buffer has some text currently selected.


```pony
fun box get_has_selection()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_line_count
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L228)</span>


Obtains the number of lines in the buffer. This value is cached, so
the function is very fast.


```pony
fun box get_line_count()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_modified
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L242)</span>


Indicates whether the buffer has been modified since the last call
to gtk_text_buffer_set_modified() set the modification flag to
%FALSE. Used for example to enable a “save” function in a text
editor.


```pony
fun box get_modified()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_modified
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L441)</span>


Used to keep track of whether the buffer has been modified since the
last time it was saved. Whenever the buffer is saved to disk, call
gtk_text_buffer_set_modified (@buffer, FALSE). When the buffer is modified,
it will automatically toggled on the modified bit again. When the modified
bit flips, the buffer emits the #GtkTextBuffer::modified-changed signal.


```pony
fun box set_modified(
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

