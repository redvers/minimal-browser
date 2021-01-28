# GtkRecentFilter
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L6)</span>

A #GtkRecentFilter can be used to restrict the files being shown
in a #GtkRecentChooser.  Files can be filtered based on their name
(with gtk_recent_filter_add_pattern()), on their mime type (with
gtk_file_filter_add_mime_type()), on the application that has
registered them (with gtk_recent_filter_add_application()), or by
a custom filter function (with gtk_recent_filter_add_custom()).

Filtering by mime type handles aliasing and subclassing of mime
types; e.g. a filter for text/plain also matches a file with mime
type application/rtf, since application/rtf is a subclass of text/plain.
Note that #GtkRecentFilter allows wildcards for the subtype of a
mime type, so you can e.g. filter for image/\*.

Normally, filters are used by adding them to a #GtkRecentChooser,
see gtk_recent_chooser_add_filter(), but it is also possible to
manually use a filter on a file with gtk_recent_filter_filter().

Recently used files are supported since GTK+ 2.10.

## GtkRecentFilter as GtkBuildable

The GtkRecentFilter implementation of the GtkBuildable interface
supports adding rules using the <mime-types>, <patterns> and
<applications> elements and listing the rules within. Specifying
a <mime-type>, <pattern> or <application> has the same effect as
calling gtk_recent_filter_add_mime_type(),
gtk_recent_filter_add_pattern() or gtk_recent_filter_add_application().

An example of a UI definition fragment specifying GtkRecentFilter rules:
|[
<object class="GtkRecentFilter">
  <mime-types>
    <mime-type>text/plain</mime-type>
    <mime-type>image/png</mime-type>
  </mime-types>
  <patterns>
    <pattern>*.txt</pattern>
    <pattern>*.png</pattern>
  </patterns>
  <applications>
    <application>gimp</application>
    <application>gedit</application>
    <application>glade</application>
  </applications>
</object>
]|


```pony
class val GtkRecentFilter is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L59)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRecentFilter val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L62)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRecentFilter val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L65)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRecentFilter val^
```

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L69)</span>


```pony
new val create()
: GtkRecentFilter val^
```

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L55)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L57)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### add_age
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L73)</span>


Adds a rule that allows resources based on their age - that is, the number
of days elapsed since they were last modified.


```pony
fun box add_age(
  days_pony: I32 val)
: None val
```
#### Parameters

*   days_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### add_pixbuf_formats
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L103)</span>


Adds a rule allowing image files in the formats supported
by GdkPixbuf.


```pony
fun box add_pixbuf_formats()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L114)</span>


Gets the human-readable name for the filter.
See gtk_recent_filter_set_name().


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

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

