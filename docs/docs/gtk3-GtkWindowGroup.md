# GtkWindowGroup
<span class="source-link">[[Source]](src/gtk3/GtkWindowGroup.md#L6)</span>

A #GtkWindowGroup restricts the effect of grabs to windows
in the same group, thereby making window groups almost behave
like separate applications.

A window can be a member in at most one window group at a time.
Windows that have not been explicitly assigned to a group are
implicitly treated like windows of the default window group.

GtkWindowGroup objects are referenced by each window in the group,
so once you have added all windows to a GtkWindowGroup, you can drop
the initial reference to the window group with g_object_unref(). If the
windows in the window group are subsequently destroyed, then they will
be removed from the window group and drop their references on the window
group; when all window have been removed, the window group will be
freed.


```pony
class val GtkWindowGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkWindowGroup.md#L28)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkWindowGroup val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkWindowGroup](gtk3-GtkWindowGroup.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkWindowGroup.md#L31)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkWindowGroup val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkWindowGroup](gtk3-GtkWindowGroup.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkWindowGroup.md#L34)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkWindowGroup val^
```

#### Returns

* [GtkWindowGroup](gtk3-GtkWindowGroup.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkWindowGroup.md#L38)</span>


```pony
new val create()
: GtkWindowGroup val^
```

#### Returns

* [GtkWindowGroup](gtk3-GtkWindowGroup.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkWindowGroup.md#L24)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkWindowGroup.md#L26)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### show_all



```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy



```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]



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

