# GtkFrame
<span class="source-link">[[Source]](src/gtk3/GtkFrame.md#L6)</span>

The frame widget is a bin that surrounds its child with a decorative
frame and an optional label. If present, the label is drawn in a gap
in the top side of the frame. The position of the label can be
controlled with gtk_frame_set_label_align().

# GtkFrame as GtkBuildable

The GtkFrame implementation of the GtkBuildable interface supports
placing a child in the label position by specifying “label” as the
“type” attribute of a <child> element. A normal content child can
be specified without specifying a <child> type attribute.

An example of a UI definition fragment with GtkFrame:
|[
<object class="GtkFrame">
  <child type="label">
    <object class="GtkLabel" id="frame-label"/>
  </child>
  <child>
    <object class="GtkEntry" id="frame-content"/>
  </child>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
frame
├── border[.flat]
├── <label widget>
╰── <child>
]|

GtkFrame has a main CSS node named “frame” and a subnode named “border”. The
“border” node is used to draw the visible border. You can set the appearance
of the border using CSS properties like “border-style” on the “border” node.

The border node can be given the style class “.flat”, which is used by themes
to disable drawing of the border. To do this from code, call
gtk_frame_set_shadow_type() with %GTK_SHADOW_NONE to add the “.flat” class or
any other shadow type to remove it.


```pony
class val GtkFrame is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkFrame.md#L54)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkFrame val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkFrame](gtk3-GtkFrame.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFrame.md#L57)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFrame val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFrame](gtk3-GtkFrame.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFrame.md#L60)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkFrame val^
```

#### Returns

* [GtkFrame](gtk3-GtkFrame.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFrame.md#L64)</span>


```pony
new val create(
  label_pony: String val)
: GtkFrame val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkFrame](gtk3-GtkFrame.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFrame.md#L50)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFrame.md#L52)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkFrame.md#L68)</span>


If the frame’s label widget is a #GtkLabel, returns the
text in the label widget. (The frame will have a #GtkLabel
for the label widget if a non-%NULL argument was passed
to gtk_frame_new().)


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### set_label_widget
<span class="source-link">[[Source]](src/gtk3/GtkFrame.md#L105)</span>


Sets the #GtkFrame:label-widget for the frame. This is the widget that
will appear embedded in the top edge of the frame as a title.


```pony
fun box set_label_widget(
  label_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   label_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

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

