# GtkActionBar
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L6)</span>

GtkActionBar is designed to present contextual actions. It is
expected to be displayed below the content and expand horizontally
to fill the area.

It allows placing children at the start or the end. In addition, it
contains an internal centered box which is centered with respect to
the full width of the box, even if the children at either side take
up different amounts of space.

# CSS nodes

GtkActionBar has a single CSS node with name actionbar.


```pony
class val GtkActionBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L25)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkActionBar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkActionBar](gtk3-GtkActionBar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L28)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkActionBar val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkActionBar](gtk3-GtkActionBar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L31)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkActionBar val^
```

#### Returns

* [GtkActionBar](gtk3-GtkActionBar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L35)</span>


```pony
new val create()
: GtkActionBar val^
```

#### Returns

* [GtkActionBar](gtk3-GtkActionBar.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L21)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L23)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### pack_end
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L44)</span>


Adds @child to @action_bar, packed with reference to the
end of the @action_bar.


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
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L51)</span>


Adds @child to @action_bar, packed with reference to the
start of the @action_bar.


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

### set_center_widget
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L58)</span>


Sets the center widget for the #GtkActionBar.


```pony
fun box set_center_widget(
  center_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   center_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

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

