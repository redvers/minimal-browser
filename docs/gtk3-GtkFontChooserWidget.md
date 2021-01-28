# GtkFontChooserWidget
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserWidget.md#L6)</span>

The #GtkFontChooserWidget widget lists the available fonts,
styles and sizes, allowing the user to select a font. It is
used in the #GtkFontChooserDialog widget to provide a
dialog box for selecting fonts.

To set the font which is initially selected, use
gtk_font_chooser_set_font() or gtk_font_chooser_set_font_desc().

To get the selected font use gtk_font_chooser_get_font() or
gtk_font_chooser_get_font_desc().

To change the text which is shown in the preview area, use
gtk_font_chooser_set_preview_text().

# CSS nodes

GtkFontChooserWidget has a single CSS node with name fontchooser.


```pony
class val GtkFontChooserWidget is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserWidget.md#L30)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkFontChooserWidget val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkFontChooserWidget](gtk3-GtkFontChooserWidget.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserWidget.md#L33)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFontChooserWidget val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFontChooserWidget](gtk3-GtkFontChooserWidget.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserWidget.md#L36)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkFontChooserWidget val^
```

#### Returns

* [GtkFontChooserWidget](gtk3-GtkFontChooserWidget.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserWidget.md#L40)</span>


```pony
new val create()
: GtkFontChooserWidget val^
```

#### Returns

* [GtkFontChooserWidget](gtk3-GtkFontChooserWidget.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserWidget.md#L26)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserWidget.md#L28)</span>


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

