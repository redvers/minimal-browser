# GtkRecentChooserWidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L6)</span>

#GtkRecentChooserWidget is a widget suitable for selecting recently used
files.  It is the main building block of a #GtkRecentChooserDialog.  Most
applications will only need to use the latter; you can use
#GtkRecentChooserWidget as part of a larger window if you have special needs.

Note that #GtkRecentChooserWidget does not have any methods of its own.
Instead, you should use the functions that work on a #GtkRecentChooser.

Recently used files are supported since GTK+ 2.10.


```pony
class val GtkRecentChooserWidget is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L22)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRecentChooserWidget val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRecentChooserWidget](gtk3-GtkRecentChooserWidget.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L25)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRecentChooserWidget val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRecentChooserWidget](gtk3-GtkRecentChooserWidget.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L28)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRecentChooserWidget val^
```

#### Returns

* [GtkRecentChooserWidget](gtk3-GtkRecentChooserWidget.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L32)</span>


```pony
new val create()
: GtkRecentChooserWidget val^
```

#### Returns

* [GtkRecentChooserWidget](gtk3-GtkRecentChooserWidget.md) val^

---

### new_for_manager
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L35)</span>


```pony
new val new_for_manager(
  manager_pony: GtkRecentManager val)
: GtkRecentChooserWidget val^
```
#### Parameters

*   manager_pony: [GtkRecentManager](gtk3-GtkRecentManager.md) val

#### Returns

* [GtkRecentChooserWidget](gtk3-GtkRecentChooserWidget.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L18)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L20)</span>


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

