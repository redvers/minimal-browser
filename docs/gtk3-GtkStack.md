# GtkStack
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L6)</span>

The GtkStack widget is a container which only shows
one of its children at a time. In contrast to GtkNotebook,
GtkStack does not provide a means for users to change the
visible child. Instead, the #GtkStackSwitcher widget can be
used with GtkStack to provide this functionality.

Transitions between pages can be animated as slides or
fades. This can be controlled with gtk_stack_set_transition_type().
These animations respect the #GtkSettings:gtk-enable-animations
setting.

The GtkStack widget was added in GTK+ 3.10.

# CSS nodes

GtkStack has a single CSS node named stack.


```pony
class val GtkStack is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L29)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkStack val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkStack](gtk3-GtkStack.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L32)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStack val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStack](gtk3-GtkStack.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L35)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkStack val^
```

#### Returns

* [GtkStack](gtk3-GtkStack.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L39)</span>


```pony
new val create()
: GtkStack val^
```

#### Returns

* [GtkStack](gtk3-GtkStack.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L25)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L27)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_hhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L56)</span>


Gets whether @stack is horizontally homogeneous.
See gtk_stack_set_hhomogeneous().


```pony
fun box get_hhomogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L63)</span>


Gets whether @stack is homogeneous.
See gtk_stack_set_homogeneous().


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_interpolate_size
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L70)</span>


Returns wether the #GtkStack is set up to interpolate between
the sizes of children on page switch.


```pony
fun box get_interpolate_size()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L77)</span>


Returns the amount of time (in milliseconds) that
transitions between pages in @stack will take.


```pony
fun box get_transition_duration()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_transition_running
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L84)</span>


Returns whether the @stack is currently in a transition from one page to
another.


```pony
fun box get_transition_running()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_vhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L98)</span>


Gets whether @stack is vertically homogeneous.
See gtk_stack_set_vhomogeneous().


```pony
fun box get_vhomogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_child_name
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L110)</span>


Returns the name of the currently visible child of @stack, or
%NULL if there is no visible child.


```pony
fun box get_visible_child_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### set_hhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L119)</span>


Sets the #GtkStack to be horizontally homogeneous or not.
If it is homogeneous, the #GtkStack will request the same
width for all its children. If it isn't, the stack
may change width when a different child becomes visible.


```pony
fun box set_hhomogeneous(
  hhomogeneous_pony: Bool val)
: None val
```
#### Parameters

*   hhomogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L128)</span>


Sets the #GtkStack to be homogeneous or not. If it
is homogeneous, the #GtkStack will request the same
size for all its children. If it isn't, the stack
may change size when a different child becomes visible.

Since 3.16, homogeneity can be controlled separately
for horizontal and vertical size, with the
#GtkStack:hhomogeneous and #GtkStack:vhomogeneous.


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

### set_interpolate_size
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L141)</span>


Sets whether or not @stack will interpolate its size when
changing the visible child. If the #GtkStack:interpolate-size
property is set to %TRUE, @stack will interpolate its size between
the current one and the one it'll take after changing the
visible child, according to the set transition duration.


```pony
fun box set_interpolate_size(
  interpolate_size_pony: Bool val)
: None val
```
#### Parameters

*   interpolate_size_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L151)</span>


Sets the duration that transitions between pages in @stack
will take.


```pony
fun box set_transition_duration(
  duration_pony: U32 val)
: None val
```
#### Parameters

*   duration_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_vhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L162)</span>


Sets the #GtkStack to be vertically homogeneous or not.
If it is homogeneous, the #GtkStack will request the same
height for all its children. If it isn't, the stack
may change height when a different child becomes visible.


```pony
fun box set_vhomogeneous(
  vhomogeneous_pony: Bool val)
: None val
```
#### Parameters

*   vhomogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible_child
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L171)</span>


Makes @child the visible child of @stack.

If @child is different from the currently
visible child, the transition between the
two will be animated with the current
transition type of @stack.

Note that the @child widget has to be visible itself
(see gtk_widget_show()) in order to become the visible
child of @stack.


```pony
fun box set_visible_child(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

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

