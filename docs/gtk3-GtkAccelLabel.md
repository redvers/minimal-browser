# GtkAccelLabel
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L6)</span>

The #GtkAccelLabel widget is a subclass of #GtkLabel that also displays an
accelerator key on the right of the label text, e.g. “Ctrl+S”.
It is commonly used in menus to show the keyboard short-cuts for commands.

The accelerator key to display is typically not set explicitly (although it
can be, with gtk_accel_label_set_accel()). Instead, the #GtkAccelLabel displays
the accelerators which have been added to a particular widget. This widget is
set by calling gtk_accel_label_set_accel_widget().

For example, a #GtkMenuItem widget may have an accelerator added to emit
the “activate” signal when the “Ctrl+S” key combination is pressed.
A #GtkAccelLabel is created and added to the #GtkMenuItem, and
gtk_accel_label_set_accel_widget() is called with the #GtkMenuItem as the
second argument. The #GtkAccelLabel will now display “Ctrl+S” after its label.

Note that creating a #GtkMenuItem with gtk_menu_item_new_with_label() (or
one of the similar functions for #GtkCheckMenuItem and #GtkRadioMenuItem)
automatically adds a #GtkAccelLabel to the #GtkMenuItem and calls
gtk_accel_label_set_accel_widget() to set it up for you.

A #GtkAccelLabel will only display accelerators which have %GTK_ACCEL_VISIBLE
set (see #GtkAccelFlags).
A #GtkAccelLabel can display multiple accelerators and even signal names,
though it is almost always used to display just one accelerator key.

## Creating a simple menu item with an accelerator key.

|[<!-- language="C" -->
  GtkWidget *window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  GtkWidget *menu = gtk_menu_new ();
  GtkWidget *save_item;
  GtkAccelGroup *accel_group;

  // Create a GtkAccelGroup and add it to the window.
  accel_group = gtk_accel_group_new ();
  gtk_window_add_accel_group (GTK_WINDOW (window), accel_group);

  // Create the menu item using the convenience function.
  save_item = gtk_menu_item_new_with_label ("Save");
  gtk_widget_show (save_item);
  gtk_container_add (GTK_CONTAINER (menu), save_item);

  // Now add the accelerator to the GtkMenuItem. Note that since we
  // called gtk_menu_item_new_with_label() to create the GtkMenuItem
  // the GtkAccelLabel is automatically set up to display the
  // GtkMenuItem accelerators. We just need to make sure we use
  // GTK_ACCEL_VISIBLE here.
  gtk_widget_add_accelerator (save_item, "activate", accel_group,
                              GDK_KEY_s, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
]|

# CSS nodes

|[<!-- language="plain" -->
label
╰── accelerator
]|

Like #GtkLabel, GtkAccelLabel has a main CSS node with the name label.
It adds a subnode with name accelerator.


```pony
class val GtkAccelLabel is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L73)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAccelLabel val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAccelLabel](gtk3-GtkAccelLabel.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L76)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAccelLabel val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAccelLabel](gtk3-GtkAccelLabel.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L79)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAccelLabel val^
```

#### Returns

* [GtkAccelLabel](gtk3-GtkAccelLabel.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L83)</span>


```pony
new val create(
  string_pony: String val)
: GtkAccelLabel val^
```
#### Parameters

*   string_pony: [String](builtin-String.md) val

#### Returns

* [GtkAccelLabel](gtk3-GtkAccelLabel.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L69)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L71)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_accel_width
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L97)</span>


Returns the width needed to display the accelerator key(s).
This is used by menus to align all of the #GtkMenuItem widgets, and shouldn't
be needed by applications.


```pony
fun box get_accel_width()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### refetch
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L105)</span>


Recreates the string representing the accelerator keys.
This should not be needed since the string is automatically updated whenever
accelerators are added or removed from the associated widget.


```pony
fun box refetch()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_accel_widget
<span class="source-link">[[Source]](src/gtk3/GtkAccelLabel.md#L121)</span>


Sets the widget to be monitored by this accelerator label. Passing %NULL for
@accel_widget will dissociate @accel_label from its current widget, if any.


```pony
fun box set_accel_widget(
  accel_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   accel_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

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

