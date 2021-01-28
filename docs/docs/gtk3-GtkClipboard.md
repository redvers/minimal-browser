# GtkClipboard
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L6)</span>

The #GtkClipboard object represents a clipboard of data shared
between different processes or between different widgets in
the same process. Each clipboard is identified by a name encoded as a
#GdkAtom. (Conversion to and from strings can be done with
gdk_atom_intern() and gdk_atom_name().) The default clipboard
corresponds to the “CLIPBOARD” atom; another commonly used clipboard
is the “PRIMARY” clipboard, which, in X, traditionally contains
the currently selected text.

To support having a number of different formats on the clipboard
at the same time, the clipboard mechanism allows providing
callbacks instead of the actual data.  When you set the contents
of the clipboard, you can either supply the data directly (via
functions like gtk_clipboard_set_text()), or you can supply a
callback to be called at a later time when the data is needed (via
gtk_clipboard_set_with_data() or gtk_clipboard_set_with_owner().)
Providing a callback also avoids having to make copies of the data
when it is not needed.

gtk_clipboard_set_with_data() and gtk_clipboard_set_with_owner()
are quite similar; the choice between the two depends mostly on
which is more convenient in a particular situation.
The former is most useful when you want to have a blob of data
with callbacks to convert it into the various data types that you
advertise. When the @clear_func you provided is called, you
simply free the data blob. The latter is more useful when the
contents of clipboard reflect the internal state of a #GObject
(As an example, for the PRIMARY clipboard, when an entry widget
provides the clipboard’s contents the contents are simply the
text within the selected region.) If the contents change, the
entry widget can call gtk_clipboard_set_with_owner() to update
the timestamp for clipboard ownership, without having to worry
about @clear_func being called.

Requesting the data from the clipboard is essentially
asynchronous. If the contents of the clipboard are provided within
the same process, then a direct function call will be made to
retrieve the data, but if they are provided by another process,
then the data needs to be retrieved from the other process, which
may take some time. To avoid blocking the user interface, the call
to request the selection, gtk_clipboard_request_contents() takes a
callback that will be called when the contents are received (or
when the request fails.) If you don’t want to deal with providing
a separate callback, you can also use gtk_clipboard_wait_for_contents().
What this does is run the GLib main loop recursively waiting for
the contents. This can simplify the code flow, but you still have
to be aware that other callbacks in your program can be called
while this recursive mainloop is running.

Along with the functions to get the clipboard contents as an
arbitrary data chunk, there are also functions to retrieve
it as text, gtk_clipboard_request_text() and
gtk_clipboard_wait_for_text(). These functions take care of
determining which formats are advertised by the clipboard
provider, asking for the clipboard in the best available format
and converting the results into the UTF-8 encoding. (The standard
form for representing strings in GTK+.)


```pony
class val GtkClipboard is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L70)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkClipboard val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkClipboard](gtk3-GtkClipboard.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L73)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkClipboard val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkClipboard](gtk3-GtkClipboard.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L76)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkClipboard val^
```

#### Returns

* [GtkClipboard](gtk3-GtkClipboard.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L66)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L68)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### clear
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L82)</span>


Clears the contents of the clipboard. Generally this should only
be called between the time you call gtk_clipboard_set_with_owner()
or gtk_clipboard_set_with_data(),
and when the @clear_func you supplied is called. Otherwise, the
clipboard may be owned by someone else.


```pony
fun box clear()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### store
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L171)</span>


Stores the current clipboard data somewhere so that it will stay
around after the application has quit.


```pony
fun box store()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### wait_is_image_available
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L218)</span>


Test to see if there is an image available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains any of the supported image targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.

This function is a little faster than calling
gtk_clipboard_wait_for_image() since it doesn’t need to retrieve
the actual image data.


```pony
fun box wait_is_image_available()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### wait_is_text_available
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L240)</span>


Test to see if there is text available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains any of the supported text targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.

This function is a little faster than calling
gtk_clipboard_wait_for_text() since it doesn’t need to retrieve
the actual text.


```pony
fun box wait_is_text_available()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### wait_is_uris_available
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L254)</span>


Test to see if there is a list of URIs available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains the URI targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.

This function is a little faster than calling
gtk_clipboard_wait_for_uris() since it doesn’t need to retrieve
the actual URI data.


```pony
fun box wait_is_uris_available()
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

