# GtkColorChooserWidget
<span class="source-link">[[Source]](src/gtk3/GtkColorChooserWidget.md#L6)</span>

The #GtkColorChooserWidget widget lets the user select a
color. By default, the chooser presents a predefined palette
of colors, plus a small number of settable custom colors.
It is also possible to select a different color with the
single-color editor. To enter the single-color editing mode,
use the context menu of any color of the palette, or use the
'+' button to add a new custom color.

The chooser automatically remembers the last selection, as well
as custom colors.

To change the initially selected color, use gtk_color_chooser_set_rgba().
To get the selected color use gtk_color_chooser_get_rgba().

The #GtkColorChooserWidget is used in the #GtkColorChooserDialog
to provide a dialog for selecting colors.

# CSS names

GtkColorChooserWidget has a single CSS node with name colorchooser.


```pony
class val GtkColorChooserWidget is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkColorChooserWidget.md#L33)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkColorChooserWidget val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkColorChooserWidget](gtk3-GtkColorChooserWidget.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkColorChooserWidget.md#L36)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkColorChooserWidget val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkColorChooserWidget](gtk3-GtkColorChooserWidget.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkColorChooserWidget.md#L39)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkColorChooserWidget val^
```

#### Returns

* [GtkColorChooserWidget](gtk3-GtkColorChooserWidget.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkColorChooserWidget.md#L43)</span>


```pony
new val create()
: GtkColorChooserWidget val^
```

#### Returns

* [GtkColorChooserWidget](gtk3-GtkColorChooserWidget.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkColorChooserWidget.md#L29)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkColorChooserWidget.md#L31)</span>


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

