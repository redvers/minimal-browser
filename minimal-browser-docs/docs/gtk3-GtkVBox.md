# GtkVBox
<span class="source-link">[[Source]](src/gtk3/GtkVBox.md#L6)</span>

A #GtkVBox is a container that organizes child widgets into a single column.

Use the #GtkBox packing interface to determine the arrangement,
spacing, height, and alignment of #GtkVBox children.

All children are allocated the same width.

GtkVBox has been deprecated. You can use #GtkBox with a #GtkOrientable:orientation
set to %GTK_ORIENTATION_VERTICAL instead when calling gtk_box_new(),
which is a very quick and easy change.

If you have derived your own classes from GtkVBox, you can change the
inheritance to derive directly from #GtkBox, and set the #GtkOrientable:orientation
property to %GTK_ORIENTATION_VERTICAL in your instance init function,
with a call like:

|[<!-- language="C" -->
  gtk_orientable_set_orientation (GTK_ORIENTABLE (object),
                                  GTK_ORIENTATION_VERTICAL);
]|

If you have a grid-like layout composed of nested boxes, and you don’t
need first-child or last-child styling, the recommendation is to switch
to #GtkGrid. For more information about migrating to #GtkGrid, see
[Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].


```pony
class val GtkVBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkVBox.md#L38)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkVBox val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkVBox](gtk3-GtkVBox.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkVBox.md#L41)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkVBox val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkVBox](gtk3-GtkVBox.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkVBox.md#L44)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkVBox val^
```

#### Returns

* [GtkVBox](gtk3-GtkVBox.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkVBox.md#L48)</span>


```pony
new val create(
  homogeneous_pony: Bool val,
  spacing_pony: I32 val)
: GtkVBox val^
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val
*   spacing_pony: [I32](builtin-I32.md) val

#### Returns

* [GtkVBox](gtk3-GtkVBox.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkVBox.md#L34)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkVBox.md#L36)</span>


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

