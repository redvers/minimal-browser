# GObject
<span class="source-link">[[Source]](src/minimal-browser-__-gobject/GObject.md#L4)</span>
```pony
primitive val GObject
```

## Constructors

### create
<span class="source-link">[[Source]](src/minimal-browser-__-gobject/GObject.md#L4)</span>


```pony
new val create()
: GObject val^
```

#### Returns

* [GObject](minimal-browser-..-gobject-GObject.md) val^

---

## Public Functions

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/minimal-browser-__-gobject/GObject.md#L5)</span>


```pony
fun box signal_connect[V: Any #share](
  instance: GObjectREF val,
  detailed_signal: String val,
  c_handler: @{(GObjectREF, V)}[V] val,
  data: V)
: U64 val
```
#### Parameters

*   instance: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
*   detailed_signal: [String](builtin-String.md) val
*   c_handler: @{(GObjectREF, V)}[V] val
*   data: V

#### Returns

* [U64](builtin-U64.md) val

---

### eq
<span class="source-link">[[Source]](src/minimal-browser-__-gobject/GObject.md#L5)</span>


```pony
fun box eq(
  that: GObject val)
: Bool val
```
#### Parameters

*   that: [GObject](minimal-browser-..-gobject-GObject.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/minimal-browser-__-gobject/GObject.md#L5)</span>


```pony
fun box ne(
  that: GObject val)
: Bool val
```
#### Parameters

*   that: [GObject](minimal-browser-..-gobject-GObject.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

