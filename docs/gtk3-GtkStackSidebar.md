# GtkStackSidebar
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L6)</span>

A GtkStackSidebar enables you to quickly and easily provide a
consistent "sidebar" object for your user interface.

In order to use a GtkStackSidebar, you simply use a GtkStack to
organize your UI flow, and add the sidebar to your sidebar area. You
can use gtk_stack_sidebar_set_stack() to connect the #GtkStackSidebar
to the #GtkStack.

# CSS nodes

GtkStackSidebar has a single CSS node with name stacksidebar and
style class .sidebar.

When circumstances require it, GtkStackSidebar adds the
.needs-attention style class to the widgets representing the stack
pages.


```pony
class val GtkStackSidebar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L29)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkStackSidebar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkStackSidebar](gtk3-GtkStackSidebar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L32)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStackSidebar val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStackSidebar](gtk3-GtkStackSidebar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L35)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkStackSidebar val^
```

#### Returns

* [GtkStackSidebar](gtk3-GtkStackSidebar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L39)</span>


```pony
new val create()
: GtkStackSidebar val^
```

#### Returns

* [GtkStackSidebar](gtk3-GtkStackSidebar.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L25)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L27)</span>


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

