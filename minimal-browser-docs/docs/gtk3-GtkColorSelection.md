# GtkColorSelection
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L6)</span>

No documentation provided


```pony
class val GtkColorSelection is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L14)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkColorSelection val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L17)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkColorSelection val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L20)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkColorSelection val^
```

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L24)</span>


```pony
new val create()
: GtkColorSelection val^
```

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_has_opacity_control
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L43)</span>


Determines whether the colorsel has an opacity control.


```pony
fun box get_has_opacity_control()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_palette
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L49)</span>


Determines whether the color selector has a color palette.


```pony
fun box get_has_palette()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_adjusting
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L70)</span>


Gets the current state of the @colorsel.


```pony
fun box is_adjusting()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_has_opacity_control
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L88)</span>


Sets the @colorsel to use or not use opacity.


```pony
fun box set_has_opacity_control(
  has_opacity_pony: Bool val)
: None val
```
#### Parameters

*   has_opacity_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_palette
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L94)</span>


Shows and hides the palette based upon the value of @has_palette.


```pony
fun box set_has_palette(
  has_palette_pony: Bool val)
: None val
```
#### Parameters

*   has_palette_pony: [Bool](builtin-Bool.md) val

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

