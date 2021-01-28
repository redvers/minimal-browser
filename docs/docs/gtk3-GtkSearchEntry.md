# GtkSearchEntry
<span class="source-link">[[Source]](src/gtk3/GtkSearchEntry.md#L6)</span>

#GtkSearchEntry is a subclass of #GtkEntry that has been
tailored for use as a search entry.

It will show an inactive symbolic “find” icon when the search
entry is empty, and a symbolic “clear” icon when there is text.
Clicking on the “clear” icon will empty the search entry.

Note that the search/clear icon is shown using a secondary
icon, and thus does not work if you are using the secondary
icon position for some other purpose.

To make filtering appear more reactive, it is a good idea to
not react to every change in the entry text immediately, but
only after a short delay. To support this, #GtkSearchEntry
emits the #GtkSearchEntry::search-changed signal which can
be used instead of the #GtkEditable::changed signal.

The #GtkSearchEntry::previous-match, #GtkSearchEntry::next-match
and #GtkSearchEntry::stop-search signals can be used to implement
moving between search results and ending the search.

Often, GtkSearchEntry will be fed events by means of being
placed inside a #GtkSearchBar. If that is not the case,
you can use gtk_search_entry_handle_event() to pass events.


```pony
class val GtkSearchEntry is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkSearchEntry.md#L37)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkSearchEntry val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkSearchEntry](gtk3-GtkSearchEntry.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSearchEntry.md#L40)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSearchEntry val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSearchEntry](gtk3-GtkSearchEntry.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSearchEntry.md#L43)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkSearchEntry val^
```

#### Returns

* [GtkSearchEntry](gtk3-GtkSearchEntry.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSearchEntry.md#L47)</span>


```pony
new val create()
: GtkSearchEntry val^
```

#### Returns

* [GtkSearchEntry](gtk3-GtkSearchEntry.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSearchEntry.md#L33)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSearchEntry.md#L35)</span>


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

