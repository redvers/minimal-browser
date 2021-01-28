# GtkShortcutsSection
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsSection.md#L6)</span>

A GtkShortcutsSection collects all the keyboard shortcuts and gestures
for a major application mode. If your application needs multiple sections,
you should give each section a unique #GtkShortcutsSection:section-name and
a #GtkShortcutsSection:title that can be shown in the section selector of
the GtkShortcutsWindow.

The #GtkShortcutsSection:max-height property can be used to influence how
the groups in the section are distributed over pages and columns.

This widget is only meant to be used with #GtkShortcutsWindow.


```pony
class val GtkShortcutsSection is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsSection.md#L23)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkShortcutsSection val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkShortcutsSection](gtk3-GtkShortcutsSection.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsSection.md#L26)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkShortcutsSection val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkShortcutsSection](gtk3-GtkShortcutsSection.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsSection.md#L29)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkShortcutsSection val^
```

#### Returns

* [GtkShortcutsSection](gtk3-GtkShortcutsSection.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsSection.md#L19)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsSection.md#L21)</span>


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

