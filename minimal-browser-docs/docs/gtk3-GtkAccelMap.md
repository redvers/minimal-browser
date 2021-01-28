# GtkAccelMap
<span class="source-link">[[Source]](src/gtk3/GtkAccelMap.md#L6)</span>

Accelerator maps are used to define runtime configurable accelerators.
Functions for manipulating them are are usually used by higher level
convenience mechanisms like #GtkUIManager and are thus considered
“low-level”. You’ll want to use them if you’re manually creating menus that
should have user-configurable accelerators.

An accelerator is uniquely defined by:
- accelerator path
- accelerator key
- accelerator modifiers

The accelerator path must consist of
“<WINDOWTYPE>/Category1/Category2/.../Action”, where WINDOWTYPE
should be a unique application-specific identifier that corresponds
to the kind of window the accelerator is being used in, e.g.
“Gimp-Image”, “Abiword-Document” or “Gnumeric-Settings”.
The “Category1/.../Action” portion is most appropriately chosen by
the action the accelerator triggers, i.e. for accelerators on menu
items, choose the item’s menu path, e.g. “File/Save As”,
“Image/View/Zoom” or “Edit/Select All”. So a full valid accelerator
path may look like: “<Gimp-Toolbox>/File/Dialogs/Tool Options...”.

All accelerators are stored inside one global #GtkAccelMap that can
be obtained using gtk_accel_map_get(). See
[Monitoring changes][monitoring-changes] for additional
details.

# Manipulating accelerators

New accelerators can be added using gtk_accel_map_add_entry().
To search for specific accelerator, use gtk_accel_map_lookup_entry().
Modifications of existing accelerators should be done using
gtk_accel_map_change_entry().

In order to avoid having some accelerators changed, they can be
locked using gtk_accel_map_lock_path(). Unlocking is done using
gtk_accel_map_unlock_path().

# Saving and loading accelerator maps

Accelerator maps can be saved to and loaded from some external
resource. For simple saving and loading from file,
gtk_accel_map_save() and gtk_accel_map_load() are provided.
Saving and loading can also be done by providing file descriptor
to gtk_accel_map_save_fd() and gtk_accel_map_load_fd().

# Monitoring changes

#GtkAccelMap object is only useful for monitoring changes of
accelerators. By connecting to #GtkAccelMap::changed signal, one
can monitor changes of all accelerators. It is also possible to
monitor only single accelerator path by using it as a detail of
the #GtkAccelMap::changed signal.


```pony
class val GtkAccelMap is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAccelMap.md#L66)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAccelMap val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAccelMap](gtk3-GtkAccelMap.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAccelMap.md#L69)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAccelMap val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAccelMap](gtk3-GtkAccelMap.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAccelMap.md#L72)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAccelMap val^
```

#### Returns

* [GtkAccelMap](gtk3-GtkAccelMap.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAccelMap.md#L62)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAccelMap.md#L64)</span>


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

