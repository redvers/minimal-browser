# GtkHeaderBar
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L6)</span>

GtkHeaderBar is similar to a horizontal #GtkBox. It allows children to
be placed at the start or the end. In addition, it allows a title and
subtitle to be displayed. The title will be centered with respect to
the width of the box, even if the children at either side take up
different amounts of space. The height of the titlebar will be
set to provide sufficient space for the subtitle, even if none is
currently set. If a subtitle is not needed, the space reservation
can be turned off with gtk_header_bar_set_has_subtitle().

GtkHeaderBar can add typical window frame controls, such as minimize,
maximize and close buttons, or the window icon.

For these reasons, GtkHeaderBar is the natural choice for use as the custom
titlebar widget of a #GtkWindow (see gtk_window_set_titlebar()), as it gives
features typical of titlebars while allowing the addition of child widgets.


```pony
class val GtkHeaderBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L28)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkHeaderBar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkHeaderBar](gtk3-GtkHeaderBar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L31)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHeaderBar val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHeaderBar](gtk3-GtkHeaderBar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L34)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkHeaderBar val^
```

#### Returns

* [GtkHeaderBar](gtk3-GtkHeaderBar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L38)</span>


```pony
new val create()
: GtkHeaderBar val^
```

#### Returns

* [GtkHeaderBar](gtk3-GtkHeaderBar.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L24)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L26)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_decoration_layout
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L47)</span>


Gets the decoration layout set with
gtk_header_bar_set_decoration_layout().


```pony
fun box get_decoration_layout()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_has_subtitle
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L56)</span>


Retrieves whether the header bar reserves space for
a subtitle, regardless if one is currently set or not.


```pony
fun box get_has_subtitle()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_close_button
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L63)</span>


Returns whether this header bar shows the standard window
decorations.


```pony
fun box get_show_close_button()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_subtitle
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L70)</span>


Retrieves the subtitle of the header. See gtk_header_bar_set_subtitle().


```pony
fun box get_subtitle()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_title
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L78)</span>


Retrieves the title of the header. See gtk_header_bar_set_title().


```pony
fun box get_title()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pack_end
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L86)</span>


Adds @child to @bar, packed with reference to the
end of the @bar.


```pony
fun box pack_end(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### pack_start
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L93)</span>


Adds @child to @bar, packed with reference to the
start of the @bar.


```pony
fun box pack_start(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_custom_title
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L100)</span>


Sets a custom title for the #GtkHeaderBar.

The title should help a user identify the current view. This
supersedes any title set by gtk_header_bar_set_title() or
gtk_header_bar_set_subtitle(). To achieve the same style as
the builtin title and subtitle, use the “title” and “subtitle”
style classes.

You should set the custom title to %NULL, for the header title
label to be visible again.


```pony
fun box set_custom_title(
  title_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   title_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_subtitle
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L119)</span>


Sets whether the header bar should reserve space
for a subtitle, even if none is currently set.


```pony
fun box set_has_subtitle(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_close_button
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L126)</span>


Sets whether this header bar shows the standard window decorations,
including close, maximize, and minimize.


```pony
fun box set_show_close_button(
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

