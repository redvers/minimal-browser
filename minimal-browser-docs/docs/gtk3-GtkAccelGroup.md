# GtkAccelGroup
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L6)</span>

A #GtkAccelGroup represents a group of keyboard accelerators,
typically attached to a toplevel #GtkWindow (with
gtk_window_add_accel_group()). Usually you won’t need to create a
#GtkAccelGroup directly; instead, when using #GtkUIManager, GTK+
automatically sets up the accelerators for your menus in the ui
manager’s #GtkAccelGroup.

Note that “accelerators” are different from
“mnemonics”. Accelerators are shortcuts for
activating a menu item; they appear alongside the menu item they’re a
shortcut for. For example “Ctrl+Q” might appear alongside the “Quit”
menu item. Mnemonics are shortcuts for GUI elements such as text
entries or buttons; they appear as underlined characters. See
gtk_label_new_with_mnemonic(). Menu items can have both accelerators
and mnemonics, of course.


```pony
class val GtkAccelGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L28)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAccelGroup val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L31)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAccelGroup val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L34)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAccelGroup val^
```

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L38)</span>


```pony
new val create()
: GtkAccelGroup val^
```

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L24)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L26)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_is_locked
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L74)</span>


Locks are added and removed using gtk_accel_group_lock() and
gtk_accel_group_unlock().


```pony
fun box get_is_locked()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### lock
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L88)</span>


Locks the given accelerator group.

Locking an acelerator group prevents the accelerators contained
within it to be changed during runtime. Refer to
gtk_accel_map_change_entry() about runtime accelerator changes.

If called more than once, @accel_group remains locked until
gtk_accel_group_unlock() has been called an equivalent number
of times.


```pony
fun box lock()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unlock
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L109)</span>


Undoes the last call to gtk_accel_group_lock() on this @accel_group.


```pony
fun box unlock()
: None val
```

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

