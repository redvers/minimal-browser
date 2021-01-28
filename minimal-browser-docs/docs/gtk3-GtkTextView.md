# GtkTextView
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L6)</span>

You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and data
types related to the text widget and how they work together.

# CSS nodes

|[<!-- language="plain" -->
textview.view
├── border.top
├── border.left
├── text
│   ╰── [selection]
├── border.right
├── border.bottom
╰── [window.popup]
]|

GtkTextView has a main css node with name textview and style class .view,
and subnodes for each of the border windows, and the main text area,
with names border and text, respectively. The border nodes each get
one of the style classes .left, .right, .top or .bottom.

A node representing the selection will appear below the text node.

If a context menu is opened, the window node will appear as a subnode
of the main node.


```pony
class val GtkTextView is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L40)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTextView val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L43)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextView val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L46)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTextView val^
```

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L50)</span>


```pony
new val create()
: GtkTextView val^
```

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

### new_with_buffer
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L53)</span>


```pony
new val new_with_buffer(
  buffer_pony: GtkTextBuffer val)
: GtkTextView val^
```
#### Parameters

*   buffer_pony: [GtkTextBuffer](gtk3-GtkTextBuffer.md) val

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L36)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L38)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_accepts_tab
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L87)</span>


Returns whether pressing the Tab key inserts a tab characters.
gtk_text_view_set_accepts_tab().


```pony
fun box get_accepts_tab()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_bottom_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L98)</span>


Gets the bottom margin for text in the @text_view.


```pony
fun box get_bottom_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_cursor_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L117)</span>


Find out whether the cursor should be displayed.


```pony
fun box get_cursor_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_editable
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L130)</span>


Returns the default editability of the #GtkTextView. Tags in the
buffer may override this setting for some ranges of text.


```pony
fun box get_editable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_indent
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L144)</span>


Gets the default indentation of paragraphs in @text_view.
Tags in the view’s buffer may override the default.
The indentation may be negative.


```pony
fun box get_indent()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_left_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L187)</span>


Gets the default left margin size of paragraphs in the @text_view.
Tags in the buffer may override the default.


```pony
fun box get_left_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_monospace
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L205)</span>


Gets the value of the #GtkTextView:monospace property.


```pony
fun box get_monospace()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_overwrite
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L211)</span>


Returns whether the #GtkTextView is in overwrite mode or not.


```pony
fun box get_overwrite()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_pixels_above_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L217)</span>


Gets the default number of pixels to put above paragraphs.
Adding this function with gtk_text_view_get_pixels_below_lines()
is equal to the line space between each paragraph.


```pony
fun box get_pixels_above_lines()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_pixels_below_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L225)</span>


Gets the value set by gtk_text_view_set_pixels_below_lines().

The line space is the sum of the value returned by this function and the
value returned by gtk_text_view_get_pixels_above_lines().


```pony
fun box get_pixels_below_lines()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_pixels_inside_wrap
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L234)</span>


Gets the value set by gtk_text_view_set_pixels_inside_wrap().


```pony
fun box get_pixels_inside_wrap()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_right_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L240)</span>


Gets the default right margin for text in @text_view. Tags
in the buffer may override the default.


```pony
fun box get_right_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_top_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L254)</span>


Gets the top margin for text in the @text_view.


```pony
fun box get_top_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### move_child
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L296)</span>


Updates the position of a child, as for gtk_text_view_add_child_in_window().


```pony
fun box move_child(
  child_pony: GtkWidget val,
  xpos_pony: I32 val,
  ypos_pony: I32 val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   xpos_pony: [I32](builtin-I32.md) val
*   ypos_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### place_cursor_onscreen
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L310)</span>


Moves the cursor to the currently visible region of the
buffer, it it isn’t there already.


```pony
fun box place_cursor_onscreen()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### reset_cursor_blink
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L317)</span>


Ensures that the cursor is shown (i.e. not in an 'off' blink
interval) and resets the time that it will stay blinking (or
visible, in case blinking is disabled).

This function should be called in response to user input
(e.g. from derived classes that override the textview's
#GtkWidget::key-press-event handler).


```pony
fun box reset_cursor_blink()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reset_im_context
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L329)</span>


Reset the input method context of the text view if needed.

This can be necessary in the case where modifying the buffer
would confuse on-going input method behavior.


```pony
fun box reset_im_context()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_accepts_tab
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L356)</span>


Sets the behavior of the text widget when the Tab key is pressed.
If @accepts_tab is %TRUE, a tab character is inserted. If @accepts_tab
is %FALSE the keyboard focus is moved to the next widget in the focus
chain.


```pony
fun box set_accepts_tab(
  accepts_tab_pony: Bool val)
: None val
```
#### Parameters

*   accepts_tab_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_bottom_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L369)</span>


Sets the bottom margin for text in @text_view.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.


```pony
fun box set_bottom_margin(
  bottom_margin_pony: I32 val)
: None val
```
#### Parameters

*   bottom_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_cursor_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L382)</span>


Toggles whether the insertion point should be displayed. A buffer with
no editable text probably shouldn’t have a visible cursor, so you may
want to turn the cursor off.

Note that this property may be overridden by the
#GtkSettings:gtk-keynave-use-caret settings.


```pony
fun box set_cursor_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_editable
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L393)</span>


Sets the default editability of the #GtkTextView. You can override
this default setting with tags in the buffer, using the “editable”
attribute of tags.


```pony
fun box set_editable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_indent
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L401)</span>


Sets the default indentation for paragraphs in @text_view.
Tags in the buffer may override the default.


```pony
fun box set_indent(
  indent_pony: I32 val)
: None val
```
#### Parameters

*   indent_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_left_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L420)</span>


Sets the default left margin for text in @text_view.
Tags in the buffer may override the default.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.


```pony
fun box set_left_margin(
  left_margin_pony: I32 val)
: None val
```
#### Parameters

*   left_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_monospace
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L430)</span>


Sets the #GtkTextView:monospace property, which
indicates that the text view should use monospace
fonts.


```pony
fun box set_monospace(
  monospace_pony: Bool val)
: None val
```
#### Parameters

*   monospace_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_overwrite
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L438)</span>


Changes the #GtkTextView overwrite mode.


```pony
fun box set_overwrite(
  overwrite_pony: Bool val)
: None val
```
#### Parameters

*   overwrite_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_pixels_above_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L444)</span>


Sets the default number of blank pixels above paragraphs in @text_view.
Tags in the buffer for @text_view may override the defaults.


```pony
fun box set_pixels_above_lines(
  pixels_above_lines_pony: I32 val)
: None val
```
#### Parameters

*   pixels_above_lines_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_pixels_below_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L451)</span>


Sets the default number of pixels of blank space
to put below paragraphs in @text_view. May be overridden
by tags applied to @text_view’s buffer.


```pony
fun box set_pixels_below_lines(
  pixels_below_lines_pony: I32 val)
: None val
```
#### Parameters

*   pixels_below_lines_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_pixels_inside_wrap
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L459)</span>


Sets the default number of pixels of blank space to leave between
display/wrapped lines within a paragraph. May be overridden by
tags in @text_view’s buffer.


```pony
fun box set_pixels_inside_wrap(
  pixels_inside_wrap_pony: I32 val)
: None val
```
#### Parameters

*   pixels_inside_wrap_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_right_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L467)</span>


Sets the default right margin for text in the text view.
Tags in the buffer may override the default.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.


```pony
fun box set_right_margin(
  right_margin_pony: I32 val)
: None val
```
#### Parameters

*   right_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_top_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L481)</span>


Sets the top margin for text in @text_view.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.


```pony
fun box set_top_margin(
  top_margin_pony: I32 val)
: None val
```
#### Parameters

*   top_margin_pony: [I32](builtin-I32.md) val

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

