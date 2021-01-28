# GtkEventControllerKey
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L6)</span>

#GtkEventControllerKey is an event controller meant for situations
where you need access to key events.

This object was added in 3.24.


```pony
class val GtkEventControllerKey is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L17)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkEventControllerKey val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkEventControllerKey](gtk3-GtkEventControllerKey.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L20)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEventControllerKey val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEventControllerKey](gtk3-GtkEventControllerKey.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L23)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkEventControllerKey val^
```

#### Returns

* [GtkEventControllerKey](gtk3-GtkEventControllerKey.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L27)</span>


```pony
new val create(
  widget_pony: GtkWidget val)
: GtkEventControllerKey val^
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [GtkEventControllerKey](gtk3-GtkEventControllerKey.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L13)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L15)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### forward
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L31)</span>


No provided documentation


```pony
fun box forward(
  widget_pony: GtkWidget val)
: Bool val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_group
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L37)</span>


No provided documentation


```pony
fun box get_group()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

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

