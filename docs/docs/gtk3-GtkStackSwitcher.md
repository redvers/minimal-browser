# GtkStackSwitcher
<span class="source-link">[[Source]](src/gtk3/GtkStackSwitcher.md#L6)</span>

The GtkStackSwitcher widget acts as a controller for a
#GtkStack; it shows a row of buttons to switch between
the various pages of the associated stack widget.

All the content for the buttons comes from the child properties
of the #GtkStack; the button visibility in a #GtkStackSwitcher
widget is controlled by the visibility of the child in the
#GtkStack.

It is possible to associate multiple #GtkStackSwitcher widgets
with the same #GtkStack widget.

The GtkStackSwitcher widget was added in 3.10.

# CSS nodes

GtkStackSwitcher has a single CSS node named stackswitcher and
style class .stack-switcher.

When circumstances require it, GtkStackSwitcher adds the
.needs-attention style class to the widgets representing the
stack pages.


```pony
class val GtkStackSwitcher is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkStackSwitcher.md#L35)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkStackSwitcher val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkStackSwitcher](gtk3-GtkStackSwitcher.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStackSwitcher.md#L38)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStackSwitcher val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStackSwitcher](gtk3-GtkStackSwitcher.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStackSwitcher.md#L41)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkStackSwitcher val^
```

#### Returns

* [GtkStackSwitcher](gtk3-GtkStackSwitcher.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStackSwitcher.md#L45)</span>


```pony
new val create()
: GtkStackSwitcher val^
```

#### Returns

* [GtkStackSwitcher](gtk3-GtkStackSwitcher.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStackSwitcher.md#L31)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStackSwitcher.md#L33)</span>


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

