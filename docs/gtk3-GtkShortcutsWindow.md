# GtkShortcutsWindow
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsWindow.md#L6)</span>

A GtkShortcutsWindow shows brief information about the keyboard shortcuts
and gestures of an application. The shortcuts can be grouped, and you can
have multiple sections in this window, corresponding to the major modes of
your application.

Additionally, the shortcuts can be filtered by the current view, to avoid
showing information that is not relevant in the current application context.

The recommended way to construct a GtkShortcutsWindow is with GtkBuilder,
by populating a #GtkShortcutsWindow with one or more #GtkShortcutsSection
objects, which contain #GtkShortcutsGroups that in turn contain objects of
class #GtkShortcutsShortcut.

# A simple example:

![](gedit-shortcuts.png)

This example has as single section. As you can see, the shortcut groups
are arranged in columns, and spread across several pages if there are too
many to find on a single page.

The .ui file for this example can be found [here](https://git.gnome.org/browse/gtk+/tree/demos/gtk-demo/shortcuts-gedit.ui).

# An example with multiple views:

![](clocks-shortcuts.png)

This example shows a #GtkShortcutsWindow that has been configured to show only
the shortcuts relevant to the "stopwatch" view.

The .ui file for this example can be found [here](https://git.gnome.org/browse/gtk+/tree/demos/gtk-demo/shortcuts-clocks.ui).

# An example with multiple sections:

![](builder-shortcuts.png)

This example shows a #GtkShortcutsWindow with two sections, "Editor Shortcuts"
and "Terminal Shortcuts".

The .ui file for this example can be found [here](https://git.gnome.org/browse/gtk+/tree/demos/gtk-demo/shortcuts-builder.ui).


```pony
class val GtkShortcutsWindow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsWindow.md#L53)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkShortcutsWindow val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkShortcutsWindow](gtk3-GtkShortcutsWindow.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsWindow.md#L56)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkShortcutsWindow val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkShortcutsWindow](gtk3-GtkShortcutsWindow.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsWindow.md#L59)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkShortcutsWindow val^
```

#### Returns

* [GtkShortcutsWindow](gtk3-GtkShortcutsWindow.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsWindow.md#L49)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkShortcutsWindow.md#L51)</span>


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

