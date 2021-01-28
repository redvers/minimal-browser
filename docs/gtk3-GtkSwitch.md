# GtkSwitch
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L6)</span>

#GtkSwitch is a widget that has two states: on or off. The user can control
which state should be active by clicking the empty area, or by dragging the
handle.

GtkSwitch can also handle situations where the underlying state changes with
a delay. See #GtkSwitch::state-set for details.

# CSS nodes

|[<!-- language="plain" -->
switch
╰── slider
]|

GtkSwitch has two css nodes, the main node with the name switch and a subnode
named slider. Neither of them is using any style classes.


```pony
class val GtkSwitch is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L29)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkSwitch val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkSwitch](gtk3-GtkSwitch.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L32)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSwitch val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSwitch](gtk3-GtkSwitch.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L35)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkSwitch val^
```

#### Returns

* [GtkSwitch](gtk3-GtkSwitch.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L39)</span>


```pony
new val create()
: GtkSwitch val^
```

#### Returns

* [GtkSwitch](gtk3-GtkSwitch.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L25)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L27)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L43)</span>


Gets whether the #GtkSwitch is in its “on” or “off” state.


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_state
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L49)</span>


Gets the underlying state of the #GtkSwitch.


```pony
fun box get_state()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L55)</span>


Changes the state of @sw to the desired one.


```pony
fun box set_active(
  is_active_pony: Bool val)
: None val
```
#### Parameters

*   is_active_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_state
<span class="source-link">[[Source]](src/gtk3/GtkSwitch.md#L61)</span>


Sets the underlying state of the #GtkSwitch.

Normally, this is the same as #GtkSwitch:active, unless the switch
is set up for delayed state changes. This function is typically
called from a #GtkSwitch::state-set signal handler.

See #GtkSwitch::state-set for details.


```pony
fun box set_state(
  state_pony: Bool val)
: None val
```
#### Parameters

*   state_pony: [Bool](builtin-Bool.md) val

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

