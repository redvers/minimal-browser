# GtkLinkButton
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L6)</span>

A GtkLinkButton is a #GtkButton with a hyperlink, similar to the one
used by web browsers, which triggers an action when clicked. It is useful
to show quick links to resources.

A link button is created by calling either gtk_link_button_new() or
gtk_link_button_new_with_label(). If using the former, the URI you pass
to the constructor is used as a label for the widget.

The URI bound to a GtkLinkButton can be set specifically using
gtk_link_button_set_uri(), and retrieved using gtk_link_button_get_uri().

By default, GtkLinkButton calls gtk_show_uri_on_window() when the button is
clicked. This behaviour can be overridden by connecting to the
#GtkLinkButton::activate-link signal and returning %TRUE from the
signal handler.

# CSS nodes

GtkLinkButton has a single CSS node with name button. To differentiate
it from a plain #GtkButton, it gets the .link style class.


```pony
class val GtkLinkButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L33)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkLinkButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkLinkButton](gtk3-GtkLinkButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L36)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkLinkButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkLinkButton](gtk3-GtkLinkButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L39)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkLinkButton val^
```

#### Returns

* [GtkLinkButton](gtk3-GtkLinkButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L43)</span>


```pony
new val create(
  uri_pony: String val)
: GtkLinkButton val^
```
#### Parameters

*   uri_pony: [String](builtin-String.md) val

#### Returns

* [GtkLinkButton](gtk3-GtkLinkButton.md) val^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L46)</span>


```pony
new val new_with_label(
  uri_pony: String val,
  label_pony: String val)
: GtkLinkButton val^
```
#### Parameters

*   uri_pony: [String](builtin-String.md) val
*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkLinkButton](gtk3-GtkLinkButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L29)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L31)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_uri
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L50)</span>


Retrieves the URI set using gtk_link_button_set_uri().


```pony
fun box get_uri()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_visited
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L58)</span>


Retrieves the “visited” state of the URI where the #GtkLinkButton
points. The button becomes visited when it is clicked. If the URI
is changed on the button, the “visited” state is unset again.

The state may also be changed using gtk_link_button_set_visited().


```pony
fun box get_visited()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_visited
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L72)</span>


Sets the “visited” state of the URI where the #GtkLinkButton
points.  See gtk_link_button_get_visited() for more details.


```pony
fun box set_visited(
  visited_pony: Bool val)
: None val
```
#### Parameters

*   visited_pony: [Bool](builtin-Bool.md) val

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

