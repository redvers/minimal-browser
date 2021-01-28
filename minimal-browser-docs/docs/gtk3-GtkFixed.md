# GtkFixed
<span class="source-link">[[Source]](src/gtk3/GtkFixed.md#L6)</span>

The #GtkFixed widget is a container which can place child widgets
at fixed positions and with fixed sizes, given in pixels. #GtkFixed
performs no automatic layout management.

For most applications, you should not use this container! It keeps
you from having to learn about the other GTK+ containers, but it
results in broken applications.  With #GtkFixed, the following
things will result in truncated text, overlapping widgets, and
other display bugs:

- Themes, which may change widget sizes.

- Fonts other than the one you used to write the app will of course
  change the size of widgets containing text; keep in mind that
  users may use a larger font because of difficulty reading the
  default, or they may be using a different OS that provides different fonts.

- Translation of text into other languages changes its size. Also,
  display of non-English text will use a different font in many
  cases.

In addition, #GtkFixed does not pay attention to text direction and thus may
produce unwanted results if your app is run under right-to-left languages
such as Hebrew or Arabic. That is: normally GTK+ will order containers
appropriately for the text direction, e.g. to put labels to the right of the
thing they label when using an RTL language, but it can’t do that with
#GtkFixed. So if you need to reorder widgets depending on the text direction,
you would need to manually detect it and adjust child positions accordingly.

Finally, fixed positioning makes it kind of annoying to add/remove
GUI elements, since you have to reposition all the other
elements. This is a long-term maintenance problem for your
application.

If you know none of these things are an issue for your application,
and prefer the simplicity of #GtkFixed, by all means use the
widget. But you should be aware of the tradeoffs.

See also #GtkLayout, which shares the ability to perform fixed positioning
of child widgets and additionally adds custom drawing and scrollability.


```pony
class val GtkFixed is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkFixed.md#L53)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkFixed val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkFixed](gtk3-GtkFixed.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFixed.md#L56)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFixed val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFixed](gtk3-GtkFixed.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFixed.md#L59)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkFixed val^
```

#### Returns

* [GtkFixed](gtk3-GtkFixed.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFixed.md#L63)</span>


```pony
new val create()
: GtkFixed val^
```

#### Returns

* [GtkFixed](gtk3-GtkFixed.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFixed.md#L49)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFixed.md#L51)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### move
<span class="source-link">[[Source]](src/gtk3/GtkFixed.md#L67)</span>


Moves a child of a #GtkFixed container to the given position.


```pony
fun box move(
  widget_pony: GtkWidget val,
  x_pony: I32 val,
  y_pony: I32 val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### put
<span class="source-link">[[Source]](src/gtk3/GtkFixed.md#L73)</span>


Adds a widget to a #GtkFixed container at the given position.


```pony
fun box put(
  widget_pony: GtkWidget val,
  x_pony: I32 val,
  y_pony: I32 val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

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

