# GtkBox
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L6)</span>

The GtkBox widget arranges child widgets into a single row or column,
depending upon the value of its #GtkOrientable:orientation property. Within
the other dimension, all children are allocated the same size. Of course,
the #GtkWidget:halign and #GtkWidget:valign properties can be used on
the children to influence their allocation.

GtkBox uses a notion of packing. Packing refers
to adding widgets with reference to a particular position in a
#GtkContainer. For a GtkBox, there are two reference positions: the
start and the end of the box.
For a vertical #GtkBox, the start is defined as the top of the box and
the end is defined as the bottom. For a horizontal #GtkBox the start
is defined as the left side and the end is defined as the right side.

Use repeated calls to gtk_box_pack_start() to pack widgets into a
GtkBox from start to end. Use gtk_box_pack_end() to add widgets from
end to start. You may intersperse these calls and add widgets from
both ends of the same GtkBox.

Because GtkBox is a #GtkContainer, you may also use gtk_container_add()
to insert widgets into the box, and they will be packed with the default
values for expand and fill child properties. Use gtk_container_remove()
to remove widgets from the GtkBox.

Use gtk_box_set_homogeneous() to specify whether or not all children
of the GtkBox are forced to get the same amount of space.

Use gtk_box_set_spacing() to determine how much space will be
minimally placed between all children in the GtkBox. Note that
spacing is added between the children, while
padding added by gtk_box_pack_start() or gtk_box_pack_end() is added
on either side of the widget it belongs to.

Use gtk_box_reorder_child() to move a GtkBox child to a different
place in the box.

Use gtk_box_set_child_packing() to reset the expand,
fill and padding child properties.
Use gtk_box_query_child_packing() to query these fields.

# CSS nodes

GtkBox uses a single CSS node with name box.

In horizontal orientation, the nodes of the children are always arranged
from left to right. So :first-child will always select the leftmost child,
regardless of text direction.


```pony
class val GtkBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L60)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkBox val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkBox](gtk3-GtkBox.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L63)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkBox val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkBox](gtk3-GtkBox.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L66)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkBox val^
```

#### Returns

* [GtkBox](gtk3-GtkBox.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L70)</span>


```pony
new val create(
  orientation_pony: (GtkOrientationHorizontal val | GtkOrientationVertical val),
  spacing_pony: I32 val)
: GtkBox val^
```
#### Parameters

*   orientation_pony: ([GtkOrientationHorizontal](gtk3-GtkOrientationHorizontal.md) val | [GtkOrientationVertical](gtk3-GtkOrientationVertical.md) val)
*   spacing_pony: [I32](builtin-I32.md) val

#### Returns

* [GtkBox](gtk3-GtkBox.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L56)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L58)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L86)</span>


Returns whether the box is homogeneous (all children are the
same size). See gtk_box_set_homogeneous().


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_spacing
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L93)</span>


Gets the value set by gtk_box_set_spacing().


```pony
fun box get_spacing()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pack_end
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L99)</span>


Adds @child to @box, packed with reference to the end of @box.
The @child is packed after (away from end of) any other child
packed with reference to the end of @box.


```pony
fun box pack_end(
  child_pony: GtkWidget val,
  expand_pony: Bool val,
  fill_pony: Bool val,
  padding_pony: U32 val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   expand_pony: [Bool](builtin-Bool.md) val
*   fill_pony: [Bool](builtin-Bool.md) val
*   padding_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pack_start
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L107)</span>


Adds @child to @box, packed with reference to the start of @box.
The @child is packed after any other child packed with reference
to the start of @box.


```pony
fun box pack_start(
  child_pony: GtkWidget val,
  expand_pony: Bool val,
  fill_pony: Bool val,
  padding_pony: U32 val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   expand_pony: [Bool](builtin-Bool.md) val
*   fill_pony: [Bool](builtin-Bool.md) val
*   padding_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### reorder_child
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L122)</span>


Moves @child to a new @position in the list of @box children.
The list contains widgets packed #GTK_PACK_START
as well as widgets packed #GTK_PACK_END, in the order that these
widgets were added to @box.

A widget’s position in the @box children list determines where
the widget is packed into @box.  A child widget at some position
in the list will be packed just after all other widgets of the
same packing type that appear earlier in the list.


```pony
fun box reorder_child(
  child_pony: GtkWidget val,
  position_pony: I32 val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_center_widget
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L140)</span>


Sets a center widget; that is a child widget that will be
centered with respect to the full width of the box, even
if the children at either side take up different amounts
of space.


```pony
fun box set_center_widget(
  widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L153)</span>


Sets the #GtkBox:homogeneous property of @box, controlling
whether or not all children of @box are given equal space
in the box.


```pony
fun box set_homogeneous(
  homogeneous_pony: Bool val)
: None val
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_spacing
<span class="source-link">[[Source]](src/gtk3/GtkBox.md#L161)</span>


Sets the #GtkBox:spacing property of @box, which is the
number of pixels to place between children of @box.


```pony
fun box set_spacing(
  spacing_pony: I32 val)
: None val
```
#### Parameters

*   spacing_pony: [I32](builtin-I32.md) val

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

