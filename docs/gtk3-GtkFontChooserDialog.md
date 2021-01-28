# GtkFontChooserDialog
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserDialog.md#L6)</span>

The #GtkFontChooserDialog widget is a dialog for selecting a font.
It implements the #GtkFontChooser interface.

# GtkFontChooserDialog as GtkBuildable

The GtkFontChooserDialog implementation of the #GtkBuildable
interface exposes the buttons with the names “select_button”
and “cancel_button”.


```pony
class val GtkFontChooserDialog is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserDialog.md#L21)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkFontChooserDialog val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkFontChooserDialog](gtk3-GtkFontChooserDialog.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserDialog.md#L24)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFontChooserDialog val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFontChooserDialog](gtk3-GtkFontChooserDialog.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserDialog.md#L27)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkFontChooserDialog val^
```

#### Returns

* [GtkFontChooserDialog](gtk3-GtkFontChooserDialog.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserDialog.md#L31)</span>


```pony
new val create(
  title_pony: String val,
  parent_pony: GtkWindow val)
: GtkFontChooserDialog val^
```
#### Parameters

*   title_pony: [String](builtin-String.md) val
*   parent_pony: [GtkWindow](gtk3-GtkWindow.md) val

#### Returns

* [GtkFontChooserDialog](gtk3-GtkFontChooserDialog.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserDialog.md#L17)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFontChooserDialog.md#L19)</span>


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

