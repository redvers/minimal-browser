# GtkTextTag
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L6)</span>

You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and
data types related to the text widget and how they work together.

Tags should be in the #GtkTextTagTable for a given #GtkTextBuffer
before using them with that buffer.

gtk_text_buffer_create_tag() is the best way to create tags.
See “gtk3-demo” for numerous examples.

For each property of #GtkTextTag, there is a “set” property, e.g.
“font-set” corresponds to “font”. These “set” properties reflect
whether a property has been set or not.
They are maintained by GTK+ and you should not set them independently.


```pony
class val GtkTextTag is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L28)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTextTag val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTextTag](gtk3-GtkTextTag.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L31)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextTag val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextTag](gtk3-GtkTextTag.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L34)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTextTag val^
```

#### Returns

* [GtkTextTag](gtk3-GtkTextTag.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L38)</span>


```pony
new val create(
  name_pony: String val)
: GtkTextTag val^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val

#### Returns

* [GtkTextTag](gtk3-GtkTextTag.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L24)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L26)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### changed
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L42)</span>


Emits the #GtkTextTagTable::tag-changed signal on the #GtkTextTagTable where
the tag is included.

The signal is already emitted when setting a #GtkTextTag property. This
function is useful for a #GtkTextTag subclass.


```pony
fun box changed(
  size_changed_pony: Bool val)
: None val
```
#### Parameters

*   size_changed_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### get_priority
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L58)</span>


Get the tag priority.


```pony
fun box get_priority()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### set_priority
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L64)</span>


Sets the priority of a #GtkTextTag. Valid priorities
start at 0 and go to one less than gtk_text_tag_table_get_size().
Each tag in a table has a unique priority; setting the priority
of one tag shifts the priorities of all the other tags in the
table to maintain a unique priority for each tag. Higher priority
tags “win” if two tags both set the same text attribute. When adding
a tag to a tag table, it will be assigned the highest priority in
the table by default; so normally the precedence of a set of tags
is the order in which they were added to the table, or created with
gtk_text_buffer_create_tag(), which adds the tag to the buffer’s table
automatically.


```pony
fun box set_priority(
  priority_pony: I32 val)
: None val
```
#### Parameters

*   priority_pony: [I32](builtin-I32.md) val

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

