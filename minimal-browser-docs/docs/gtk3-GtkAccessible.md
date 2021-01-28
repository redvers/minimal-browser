# GtkAccessible
<span class="source-link">[[Source]](src/gtk3/GtkAccessible.md#L6)</span>

The #GtkAccessible class is the base class for accessible
implementations for #GtkWidget subclasses. It is a thin
wrapper around #AtkObject, which adds facilities for associating
a widget with its accessible object.

An accessible implementation for a third-party widget should
derive from #GtkAccessible and implement the suitable interfaces
from ATK, such as #AtkText or #AtkSelection. To establish
the connection between the widget class and its corresponding
acccessible implementation, override the get_accessible vfunc
in #GtkWidgetClass.


```pony
class val GtkAccessible is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAccessible.md#L24)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAccessible val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAccessible](gtk3-GtkAccessible.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAccessible.md#L27)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAccessible val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAccessible](gtk3-GtkAccessible.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAccessible.md#L30)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAccessible val^
```

#### Returns

* [GtkAccessible](gtk3-GtkAccessible.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAccessible.md#L20)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAccessible.md#L22)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### connect_widget_destroyed
<span class="source-link">[[Source]](src/gtk3/GtkAccessible.md#L36)</span>


This function specifies the callback function to be called
when the widget corresponding to a GtkAccessible is destroyed.


```pony
fun box connect_widget_destroyed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_widget
<span class="source-link">[[Source]](src/gtk3/GtkAccessible.md#L48)</span>


Sets the #GtkWidget corresponding to the #GtkAccessible.

@accessible will not hold a reference to @widget.
It is the caller’s responsibility to ensure that when @widget
is destroyed, the widget is unset by calling this function
again with @widget set to %NULL.


```pony
fun box set_widget(
  widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

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

