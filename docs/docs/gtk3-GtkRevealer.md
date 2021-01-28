# GtkRevealer
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L6)</span>

The GtkRevealer widget is a container which animates
the transition of its child from invisible to visible.

The style of transition can be controlled with
gtk_revealer_set_transition_type().

These animations respect the #GtkSettings:gtk-enable-animations
setting.

# CSS nodes

GtkRevealer has a single CSS node with name revealer.

The GtkRevealer widget was added in GTK+ 3.10.


```pony
class val GtkRevealer is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L27)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRevealer val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRevealer](gtk3-GtkRevealer.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L30)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRevealer val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRevealer](gtk3-GtkRevealer.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L33)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRevealer val^
```

#### Returns

* [GtkRevealer](gtk3-GtkRevealer.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L37)</span>


```pony
new val create()
: GtkRevealer val^
```

#### Returns

* [GtkRevealer](gtk3-GtkRevealer.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L23)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L25)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_child_revealed
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L41)</span>


Returns whether the child is fully revealed, in other words whether
the transition to the revealed state is completed.


```pony
fun box get_child_revealed()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_reveal_child
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L48)</span>


Returns whether the child is currently
revealed. See gtk_revealer_set_reveal_child().

This function returns %TRUE as soon as the transition
is to the revealed state is started. To learn whether
the child is fully revealed (ie the transition is completed),
use gtk_revealer_get_child_revealed().


```pony
fun box get_reveal_child()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L60)</span>


Returns the amount of time (in milliseconds) that
transitions will take.


```pony
fun box get_transition_duration()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### set_reveal_child
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L74)</span>


Tells the #GtkRevealer to reveal or conceal its child.

The transition will be animated with the current
transition type of @revealer.


```pony
fun box set_reveal_child(
  reveal_child_pony: Bool val)
: None val
```
#### Parameters

*   reveal_child_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L83)</span>


Sets the duration that transitions will take.


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

