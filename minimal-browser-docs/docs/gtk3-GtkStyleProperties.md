# GtkStyleProperties
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L6)</span>

GtkStyleProperties provides the storage for style information
that is used by #GtkStyleContext and other #GtkStyleProvider
implementations.

Before style properties can be stored in GtkStyleProperties, they
must be registered with gtk_style_properties_register_property().

Unless you are writing a #GtkStyleProvider implementation, you
are unlikely to use this API directly, as gtk_style_context_get()
and its variants are the preferred way to access styling information
from widget implementations and theming engine implementations
should use the APIs provided by #GtkThemingEngine instead.

#GtkStyleProperties has been deprecated in GTK 3.16. The CSS
machinery does not use it anymore and all users of this object
have been deprecated.


```pony
class val GtkStyleProperties is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L29)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkStyleProperties val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkStyleProperties](gtk3-GtkStyleProperties.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L32)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStyleProperties val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStyleProperties](gtk3-GtkStyleProperties.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L35)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkStyleProperties val^
```

#### Returns

* [GtkStyleProperties](gtk3-GtkStyleProperties.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L39)</span>


```pony
new val create()
: GtkStyleProperties val^
```

#### Returns

* [GtkStyleProperties](gtk3-GtkStyleProperties.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L25)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L27)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### clear
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L43)</span>


Clears all style information from @props.


```pony
fun box clear()
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

