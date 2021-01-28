# GtkLabel
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L6)</span>

The #GtkLabel widget displays a small amount of text. As the name
implies, most labels are used to label another widget such as a
#GtkButton, a #GtkMenuItem, or a #GtkComboBox.

# CSS nodes

|[<!-- language="plain" -->
label
├── [selection]
├── [link]
┊
╰── [link]
]|

GtkLabel has a single CSS node with the name label. A wide variety
of style classes may be applied to labels, such as .title, .subtitle,
.dim-label, etc. In the #GtkShortcutsWindow, labels are used wth the
.keycap style class.

If the label has a selection, it gets a subnode with name selection.

If the label has links, there is one subnode per link. These subnodes
carry the link or visited state depending on whether they have been
visited.

# GtkLabel as GtkBuildable

The GtkLabel implementation of the GtkBuildable interface supports a
custom <attributes> element, which supports any number of <attribute>
elements. The <attribute> element has attributes named “name“, “value“,
“start“ and “end“ and allows you to specify #PangoAttribute values for
this label.

An example of a UI definition fragment specifying Pango attributes:
|[
<object class="GtkLabel">
  <attributes>
    <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
    <attribute name="background" value="red" start="5" end="10"/>
  </attributes>
</object>
]|

The start and end attributes specify the range of characters to which the
Pango attribute applies. If start and end are not specified, the attribute is
applied to the whole text. Note that specifying ranges does not make much
sense with translatable attributes. Use markup embedded in the translatable
content instead.

# Mnemonics

Labels may contain “mnemonics”. Mnemonics are
underlined characters in the label, used for keyboard navigation.
Mnemonics are created by providing a string with an underscore before
the mnemonic character, such as `"_File"`, to the
functions gtk_label_new_with_mnemonic() or
gtk_label_set_text_with_mnemonic().

Mnemonics automatically activate any activatable widget the label is
inside, such as a #GtkButton; if the label is not inside the
mnemonic’s target widget, you have to tell the label about the target
using gtk_label_set_mnemonic_widget(). Here’s a simple example where
the label is inside a button:

|[<!-- language="C" -->
  // Pressing Alt+H will activate this button
  GtkWidget *button = gtk_button_new ();
  GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
  gtk_container_add (GTK_CONTAINER (button), label);
]|

There’s a convenience function to create buttons with a mnemonic label
already inside:

|[<!-- language="C" -->
  // Pressing Alt+H will activate this button
  GtkWidget *button = gtk_button_new_with_mnemonic ("_Hello");
]|

To create a mnemonic for a widget alongside the label, such as a
#GtkEntry, you have to point the label at the entry with
gtk_label_set_mnemonic_widget():

|[<!-- language="C" -->
  // Pressing Alt+H will focus the entry
  GtkWidget *entry = gtk_entry_new ();
  GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
  gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
]|

# Markup (styled text)

To make it easy to format text in a label (changing colors,
fonts, etc.), label text can be provided in a simple
[markup format][PangoMarkupFormat].

Here’s how to create a label with a small font:
|[<!-- language="C" -->
  GtkWidget *label = gtk_label_new (NULL);
  gtk_label_set_markup (GTK_LABEL (label), "<small>Small text</small>");
]|

(See [complete documentation][PangoMarkupFormat] of available
tags in the Pango manual.)

The markup passed to gtk_label_set_markup() must be valid; for example,
literal <, > and & characters must be escaped as &lt;, &gt;, and &amp;.
If you pass text obtained from the user, file, or a network to
gtk_label_set_markup(), you’ll want to escape it with
g_markup_escape_text() or g_markup_printf_escaped().

Markup strings are just a convenient way to set the #PangoAttrList on
a label; gtk_label_set_attributes() may be a simpler way to set
attributes in some cases. Be careful though; #PangoAttrList tends to
cause internationalization problems, unless you’re applying attributes
to the entire string (i.e. unless you set the range of each attribute
to [0, %G_MAXINT)). The reason is that specifying the start_index and
end_index for a #PangoAttribute requires knowledge of the exact string
being displayed, so translations will cause problems.

# Selectable labels

Labels can be made selectable with gtk_label_set_selectable().
Selectable labels allow the user to copy the label contents to
the clipboard. Only labels that contain useful-to-copy information
— such as error messages — should be made selectable.

# Text layout # {#label-text-layout}

A label can contain any number of paragraphs, but will have
performance problems if it contains more than a small number.
Paragraphs are separated by newlines or other paragraph separators
understood by Pango.

Labels can automatically wrap text if you call
gtk_label_set_line_wrap().

gtk_label_set_justify() sets how the lines in a label align
with one another. If you want to set how the label as a whole
aligns in its available space, see the #GtkWidget:halign and
#GtkWidget:valign properties.

The #GtkLabel:width-chars and #GtkLabel:max-width-chars properties
can be used to control the size allocation of ellipsized or wrapped
labels. For ellipsizing labels, if either is specified (and less
than the actual text size), it is used as the minimum width, and the actual
text size is used as the natural width of the label. For wrapping labels,
width-chars is used as the minimum width, if specified, and max-width-chars
is used as the natural width. Even if max-width-chars specified, wrapping
labels will be rewrapped to use all of the available width.

Note that the interpretation of #GtkLabel:width-chars and
#GtkLabel:max-width-chars has changed a bit with the introduction of
[width-for-height geometry management.][geometry-management]

# Links

Since 2.18, GTK+ supports markup for clickable hyperlinks in addition
to regular Pango markup. The markup for links is borrowed from HTML,
using the `<a>` with “href“ and “title“ attributes. GTK+ renders links
similar to the way they appear in web browsers, with colored, underlined
text. The “title“ attribute is displayed as a tooltip on the link.

An example looks like this:

|[<!-- language="C" -->
const gchar *text =
"Go to the"
"<a href=\"http://www.gtk.org title=\"&lt;i&gt;Our&lt;/i&gt; website\">"
"GTK+ website</a> for more...";
GtkWidget *label = gtk_label_new (NULL);
gtk_label_set_markup (GTK_LABEL (label), text);
]|

It is possible to implement custom handling for links and their tooltips with
the #GtkLabel::activate-link signal and the gtk_label_get_current_uri() function.


```pony
class val GtkLabel is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L189)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkLabel val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L192)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkLabel val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L195)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkLabel val^
```

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L199)</span>


```pony
new val create(
  str_pony: String val)
: GtkLabel val^
```
#### Parameters

*   str_pony: [String](builtin-String.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) val^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L202)</span>


```pony
new val new_with_mnemonic(
  str_pony: String val)
: GtkLabel val^
```
#### Parameters

*   str_pony: [String](builtin-String.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L185)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L187)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_current_uri
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L220)</span>


Returns the URI for the currently active link in the label.
The active link is the one under the mouse pointer or, in a
selectable label, the link in which the text cursor is currently
positioned.

This function is intended for use in a #GtkLabel::activate-link handler
or for use in a #GtkWidget::query-tooltip handler.


```pony
fun box get_current_uri()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L248)</span>


Fetches the text from a label widget including any embedded
underlines indicating mnemonics and Pango markup. (See
gtk_label_get_text()).


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_line_wrap
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L270)</span>


Returns whether lines in the label are automatically wrapped.
See gtk_label_set_line_wrap().


```pony
fun box get_line_wrap()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_lines
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L284)</span>


Gets the number of lines to which an ellipsized, wrapping
label should be limited. See gtk_label_set_lines().


```pony
fun box get_lines()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L291)</span>


Retrieves the desired maximum width of @label, in characters. See
gtk_label_set_width_chars().


```pony
fun box get_max_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_mnemonic_keyval
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L298)</span>


If the label has been set so that it has an mnemonic key this function
returns the keyval used for the mnemonic accelerator. If there is no
mnemonic set up it returns #GDK_KEY_VoidSymbol.


```pony
fun box get_mnemonic_keyval()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_selectable
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L311)</span>


Gets the value set by gtk_label_set_selectable().


```pony
fun box get_selectable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_single_line_mode
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L322)</span>


Returns whether the label is in single line mode.


```pony
fun box get_single_line_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L328)</span>


Fetches the text from a label widget, as displayed on the
screen. This does not include any embedded underlines
indicating mnemonics or Pango markup. (See gtk_label_get_label())


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_track_visited_links
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L338)</span>


Returns whether the label is currently keeping track
of clicked links.


```pony
fun box get_track_visited_links()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L345)</span>


Returns whether the label’s text is interpreted as marked up with
the [Pango text markup language][PangoMarkupFormat].
See gtk_label_set_use_markup ().


```pony
fun box get_use_markup()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L353)</span>


Returns whether an embedded underline in the label indicates a
mnemonic. See gtk_label_set_use_underline().


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L360)</span>


Retrieves the desired width of @label, in characters. See
gtk_label_set_width_chars().


```pony
fun box get_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### select_region
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L381)</span>


Selects a range of characters in the label, if the label is selectable.
See gtk_label_set_selectable(). If the label is not selectable,
this function has no effect. If @start_offset or
@end_offset are -1, then the end of the label will be substituted.


```pony
fun box select_region(
  start_offset_pony: I32 val,
  end_offset_pony: I32 val)
: None val
```
#### Parameters

*   start_offset_pony: [I32](builtin-I32.md) val
*   end_offset_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_line_wrap
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L410)</span>


Toggles line wrapping within the #GtkLabel widget. %TRUE makes it break
lines if text exceeds the widget’s size. %FALSE lets the text get cut off
by the edge of the widget if it exceeds the widget size.

Note that setting line wrapping to %TRUE does not make the label
wrap at its parent container’s width, because GTK+ widgets
conceptually can’t make their requisition depend on the parent
container’s size. For a label that wraps at a specific position,
set the label’s width using gtk_widget_set_size_request().


```pony
fun box set_line_wrap(
  wrap_pony: Bool val)
: None val
```
#### Parameters

*   wrap_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_lines
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L428)</span>


Sets the number of lines to which an ellipsized, wrapping label
should be limited. This has no effect if the label is not wrapping
or ellipsized. Set this to -1 if you don’t want to limit the
number of lines.


```pony
fun box set_lines(
  lines_pony: I32 val)
: None val
```
#### Parameters

*   lines_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L445)</span>


Sets the desired maximum width in characters of @label to @n_chars.


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

### set_mnemonic_widget
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L451)</span>


If the label has been set so that it has an mnemonic key (using
i.e. gtk_label_set_markup_with_mnemonic(),
gtk_label_set_text_with_mnemonic(), gtk_label_new_with_mnemonic()
or the “use_underline” property) the label can be associated with a
widget that is the target of the mnemonic. When the label is inside
a widget (like a #GtkButton or a #GtkNotebook tab) it is
automatically associated with the correct widget, but sometimes
(i.e. when the target is a #GtkEntry next to the label) you need to
set it explicitly using this function.

The target widget will be accelerated by emitting the
GtkWidget::mnemonic-activate signal on it. The default handler for
this signal will activate the widget if there are no mnemonic collisions
and toggle focus between the colliding widgets otherwise.


```pony
fun box set_mnemonic_widget(
  widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_selectable
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L474)</span>


Selectable labels allow the user to select text from the label, for
copy-and-paste.


```pony
fun box set_selectable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_single_line_mode
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L481)</span>


Sets whether the label is in single line mode.


```pony
fun box set_single_line_mode(
  single_line_mode_pony: Bool val)
: None val
```
#### Parameters

*   single_line_mode_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_track_visited_links
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L495)</span>


Sets whether the label should keep track of clicked
links (and use a different color for them).


```pony
fun box set_track_visited_links(
  track_links_pony: Bool val)
: None val
```
#### Parameters

*   track_links_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L502)</span>


Sets whether the text of the label contains markup in
[Pango’s text markup language][PangoMarkupFormat].
See gtk_label_set_markup().


```pony
fun box set_use_markup(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L510)</span>


If true, an underline in the text indicates the next character should be
used for the mnemonic accelerator key.


```pony
fun box set_use_underline(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L517)</span>


Sets the desired width in characters of @label to @n_chars.


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

