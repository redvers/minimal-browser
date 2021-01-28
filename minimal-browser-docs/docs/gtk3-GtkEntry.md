# GtkEntry
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L6)</span>

The #GtkEntry widget is a single line text entry
widget. A fairly large set of key bindings are supported
by default. If the entered text is longer than the allocation
of the widget, the widget will scroll so that the cursor
position is visible.

When using an entry for passwords and other sensitive information,
it can be put into “password mode” using gtk_entry_set_visibility().
In this mode, entered text is displayed using a “invisible” character.
By default, GTK+ picks the best invisible character that is available
in the current font, but it can be changed with
gtk_entry_set_invisible_char(). Since 2.16, GTK+ displays a warning
when Caps Lock or input methods might interfere with entering text in
a password entry. The warning can be turned off with the
#GtkEntry:caps-lock-warning property.

Since 2.16, GtkEntry has the ability to display progress or activity
information behind the text. To make an entry display such information,
use gtk_entry_set_progress_fraction() or gtk_entry_set_progress_pulse_step().

Additionally, GtkEntry can show icons at either side of the entry. These
icons can be activatable by clicking, can be set up as drag source and
can have tooltips. To add an icon, use gtk_entry_set_icon_from_gicon() or
one of the various other functions that set an icon from a stock id, an
icon name or a pixbuf. To trigger an action when the user clicks an icon,
connect to the #GtkEntry::icon-press signal. To allow DND operations
from an icon, use gtk_entry_set_icon_drag_source(). To set a tooltip on
an icon, use gtk_entry_set_icon_tooltip_text() or the corresponding function
for markup.

Note that functionality or information that is only available by clicking
on an icon in an entry may not be accessible at all to users which are not
able to use a mouse or other pointing device. It is therefore recommended
that any such functionality should also be available by other means, e.g.
via the context menu of the entry.

# CSS nodes

|[<!-- language="plain" -->
entry[.read-only][.flat][.warning][.error]
├── image.left
├── image.right
├── undershoot.left
├── undershoot.right
├── [selection]
├── [progress[.pulse]]
╰── [window.popup]
]|

GtkEntry has a main node with the name entry. Depending on the properties
of the entry, the style classes .read-only and .flat may appear. The style
classes .warning and .error may also be used with entries.

When the entry shows icons, it adds subnodes with the name image and the
style class .left or .right, depending on where the icon appears.

When the entry has a selection, it adds a subnode with the name selection.

When the entry shows progress, it adds a subnode with the name progress.
The node has the style class .pulse when the shown progress is pulsing.

The CSS node for a context menu is added as a subnode below entry as well.

The undershoot nodes are used to draw the underflow indication when content
is scrolled out of view. These nodes get the .left and .right style classes
added depending on where the indication is drawn.

When touch is used and touch selection handles are shown, they are using
CSS nodes with name cursor-handle. They get the .top or .bottom style class
depending on where they are shown in relation to the selection. If there is
just a single handle for the text cursor, it gets the style class
.insertion-cursor.


```pony
class val GtkEntry is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L85)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkEntry val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L88)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEntry val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L91)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkEntry val^
```

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L95)</span>


```pony
new val create()
: GtkEntry val^
```

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

### new_with_buffer
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L98)</span>


```pony
new val new_with_buffer(
  buffer_pony: GtkEntryBuffer val)
: GtkEntry val^
```
#### Parameters

*   buffer_pony: [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) val

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L81)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L83)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_activates_default
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L102)</span>


Retrieves the value set by gtk_entry_set_activates_default().


```pony
fun box get_activates_default()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_current_icon_drag_source
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L136)</span>


Returns the index of the icon which is the source of the current
DND operation, or -1.

This function is meant to be used in a #GtkWidget::drag-data-get
callback.


```pony
fun box get_current_icon_drag_source()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_has_frame
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L153)</span>


Gets the value set by gtk_entry_set_has_frame().


```pony
fun box get_has_frame()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_icon_at_pos
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L168)</span>


Finds the icon at the given position and return its index. The
position’s coordinates are relative to the @entry’s top left corner.
If @x, @y doesn’t lie inside an icon, -1 is returned.
This function is intended for use in a #GtkWidget::query-tooltip
signal handler.


```pony
fun box get_icon_at_pos(
  x_pony: I32 val,
  y_pony: I32 val)
: I32 val
```
#### Parameters

*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L265)</span>


Retrieves the maximum allowed length of the text in
@entry. See gtk_entry_set_max_length().

This is equivalent to getting @entry's #GtkEntryBuffer and
calling gtk_entry_buffer_get_max_length() on it.


```pony
fun box get_max_length()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L275)</span>


Retrieves the desired maximum width of @entry, in characters.
See gtk_entry_set_max_width_chars().


```pony
fun box get_max_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_overwrite_mode
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L282)</span>


Gets the value set by gtk_entry_set_overwrite_mode().


```pony
fun box get_overwrite_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_placeholder_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L288)</span>


Retrieves the text that will be displayed when @entry is empty and unfocused


```pony
fun box get_placeholder_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L317)</span>


Retrieves the contents of the entry widget.
See also gtk_editable_get_chars().

This is equivalent to getting @entry's #GtkEntryBuffer and calling
gtk_entry_buffer_get_text() on it.


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_visibility
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L340)</span>


Retrieves whether the text in @entry is visible. See
gtk_entry_set_visibility().


```pony
fun box get_visibility()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L347)</span>


Gets the value set by gtk_entry_set_width_chars().


```pony
fun box get_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### grab_focus_without_selecting
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L353)</span>


Causes @entry to have keyboard focus.

It behaves like gtk_widget_grab_focus(),
except that it doesn't select the contents of the entry.
You only want to call this on some special entries
which the user usually doesn't want to replace all text in,
such as search-as-you-type entries.


```pony
fun box grab_focus_without_selecting()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### layout_index_to_text_index
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L369)</span>


Converts from a position in the entry’s #PangoLayout (returned by
gtk_entry_get_layout()) to a position in the entry contents
(returned by gtk_entry_get_text()).


```pony
fun box layout_index_to_text_index(
  layout_index_pony: I32 val)
: I32 val
```
#### Parameters

*   layout_index_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### progress_pulse
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L377)</span>


Indicates that some progress is made, but you don’t know how much.
Causes the entry’s progress indicator to enter “activity mode,”
where a block bounces back and forth. Each call to
gtk_entry_progress_pulse() causes the block to move by a little bit
(the amount of movement per pulse is determined by
gtk_entry_set_progress_pulse_step()).


```pony
fun box progress_pulse()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reset_im_context
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L388)</span>


Reset the input method context of the entry if needed.

This can be necessary in the case where modifying the buffer
would confuse on-going input method behavior.


```pony
fun box reset_im_context()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_activates_default
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L397)</span>


If @setting is %TRUE, pressing Enter in the @entry will activate the default
widget for the window containing the entry. This usually means that
the dialog box containing the entry will be closed, since the default
widget is usually one of the dialog buttons.

(For experts: if @setting is %TRUE, the entry calls
gtk_window_activate_default() on the window containing the entry, in
the default handler for the #GtkEntry::activate signal.)


```pony
fun box set_activates_default(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_frame
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L430)</span>


Sets whether the entry has a beveled frame around it.


```pony
fun box set_has_frame(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L496)</span>


Sets the maximum allowed length of the contents of the widget. If
the current contents are longer than the given length, then they
will be truncated to fit.

This is equivalent to getting @entry's #GtkEntryBuffer and
calling gtk_entry_buffer_set_max_length() on it.
]|


```pony
fun box set_max_length(
  max_pony: I32 val)
: None val
```
#### Parameters

*   max_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L508)</span>


Sets the desired maximum width in characters of @entry.


```pony
fun box set_max_width_chars(
  n_chars_pony: I32 val)
: None val
```
#### Parameters

*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_overwrite_mode
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L514)</span>


Sets whether the text is overwritten when typing in the #GtkEntry.


```pony
fun box set_overwrite_mode(
  overwrite_pony: Bool val)
: None val
```
#### Parameters

*   overwrite_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visibility
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L540)</span>


Sets whether the contents of the entry are visible or not.
When visibility is set to %FALSE, characters are displayed
as the invisible char, and will also appear that way when
the text in the entry widget is copied elsewhere.

By default, GTK+ picks the best invisible character available
in the current font, but it can be changed with
gtk_entry_set_invisible_char().

Note that you probably want to set #GtkEntry:input-purpose
to %GTK_INPUT_PURPOSE_PASSWORD or %GTK_INPUT_PURPOSE_PIN to
inform input methods about the purpose of this entry,
in addition to setting visibility to %FALSE.


```pony
fun box set_visibility(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L558)</span>


Changes the size request of the entry to be about the right size
for @n_chars characters. Note that it changes the size
request, the size can still be affected by
how you pack the widget into containers. If @n_chars is -1, the
size reverts to the default entry size.


```pony
fun box set_width_chars(
  n_chars_pony: I32 val)
: None val
```
#### Parameters

*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### text_index_to_layout_index
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L568)</span>


Converts from a position in the entry contents (returned
by gtk_entry_get_text()) to a position in the
entry’s #PangoLayout (returned by gtk_entry_get_layout(),
with text retrieved via pango_layout_get_text()).


```pony
fun box text_index_to_layout_index(
  text_index_pony: I32 val)
: I32 val
```
#### Parameters

*   text_index_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### unset_invisible_char
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L577)</span>


Unsets the invisible char previously set with
gtk_entry_set_invisible_char(). So that the
default invisible char is used again.


```pony
fun box unset_invisible_char()
: None val
```

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

