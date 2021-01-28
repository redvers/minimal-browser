# GtkHBox
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L6)</span>

#GtkHBox is a container that organizes child widgets into a single row.

Use the #GtkBox packing interface to determine the arrangement,
spacing, width, and alignment of #GtkHBox children.

All children are allocated the same height.

GtkHBox has been deprecated. You can use #GtkBox instead, which is a
very quick and easy change. If you have derived your own classes from
GtkHBox, you can simply change the inheritance to derive directly
from #GtkBox. No further changes are needed, since the default
value of the #GtkOrientable:orientation property is
%GTK_ORIENTATION_HORIZONTAL.

If you have a grid-like layout composed of nested boxes, and you don’t
need first-child or last-child styling, the recommendation is to switch
to #GtkGrid. For more information about migrating to #GtkGrid, see
[Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].


```pony
class val GtkHBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L31)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkHBox val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkHBox](gtk3-GtkHBox.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L34)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHBox val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHBox](gtk3-GtkHBox.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L37)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkHBox val^
```

#### Returns

* [GtkHBox](gtk3-GtkHBox.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L41)</span>


```pony
new val create(
  homogeneous_pony: Bool val,
  spacing_pony: I32 val)
: GtkHBox val^
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val
*   spacing_pony: [I32](builtin-I32.md) val

#### Returns

* [GtkHBox](gtk3-GtkHBox.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L27)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L29)</span>


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

