# GtkExpander
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L6)</span>

A #GtkExpander allows the user to hide or show its child by clicking
on an expander triangle similar to the triangles used in a #GtkTreeView.

Normally you use an expander as you would use any other descendant
of #GtkBin; you create the child widget and use gtk_container_add()
to add it to the expander. When the expander is toggled, it will take
care of showing and hiding the child automatically.

# Special Usage

There are situations in which you may prefer to show and hide the
expanded widget yourself, such as when you want to actually create
the widget at expansion time. In this case, create a #GtkExpander
but do not add a child to it. The expander widget has an
#GtkExpander:expanded property which can be used to monitor
its expansion state. You should watch this property with a signal
connection as follows:

|[<!-- language="C" -->
static void
expander_callback (GObject    *object,
                   GParamSpec *param_spec,
                   gpointer    user_data)
{
  GtkExpander *expander;

  expander = GTK_EXPANDER (object);

  if (gtk_expander_get_expanded (expander))
    {
      // Show or create widgets
    }
  else
    {
      // Hide or destroy widgets
    }
}

static void
create_expander (void)
{
  GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
  g_signal_connect (expander, "notify::expanded",
                    G_CALLBACK (expander_callback), NULL);

  // ...
}
]|

# GtkExpander as GtkBuildable

The GtkExpander implementation of the GtkBuildable interface supports
placing a child in the label position by specifying “label” as the
“type” attribute of a <child> element. A normal content child can be
specified without specifying a <child> type attribute.

An example of a UI definition fragment with GtkExpander:
|[
<object class="GtkExpander">
  <child type="label">
    <object class="GtkLabel" id="expander-label"/>
  </child>
  <child>
    <object class="GtkEntry" id="expander-content"/>
  </child>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
expander
├── title
│   ├── arrow
│   ╰── <label widget>
╰── <child>
]|

GtkExpander has three CSS nodes, the main node with the name expander,
a subnode with name title and node below it with name arrow. The arrow of an
expander that is showing its child gets the :checked pseudoclass added to it.


```pony
class val GtkExpander is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L94)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkExpander val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L97)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkExpander val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L100)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkExpander val^
```

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L104)</span>


```pony
new val create(
  label_pony: String val)
: GtkExpander val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) val^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L107)</span>


```pony
new val new_with_mnemonic(
  label_pony: String val)
: GtkExpander val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L90)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L92)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_expanded
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L111)</span>


Queries a #GtkExpander and returns its current state. Returns %TRUE
if the child widget is revealed.

See gtk_expander_set_expanded().


```pony
fun box get_expanded()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L120)</span>


Fetches the text from a label widget including any embedded
underlines indicating mnemonics and Pango markup, as set by
gtk_expander_set_label(). If the label text has not been set the
return value will be %NULL. This will be the case if you create an
empty button with gtk_button_new() to use as a container.

Note that this function behaved differently in versions prior to
2.14 and used to return the label text stripped of embedded
underlines indicating mnemonics and Pango markup. This problem can
be avoided by fetching the label text directly from the label
widget.


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label_fill
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L138)</span>


Returns whether the label widget will fill all available
horizontal space allocated to @expander.


```pony
fun box get_label_fill()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_resize_toplevel
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L150)</span>


Returns whether the expander will resize the toplevel widget
containing the expander upon resizing and collpasing.


```pony
fun box get_resize_toplevel()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_spacing
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L157)</span>


Gets the value set by gtk_expander_set_spacing().


```pony
fun box get_spacing()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L163)</span>


Returns whether the label’s text is interpreted as marked up with
the [Pango text markup language][PangoMarkupFormat].
See gtk_expander_set_use_markup().


```pony
fun box get_use_markup()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L171)</span>


Returns whether an embedded underline in the expander label
indicates a mnemonic. See gtk_expander_set_use_underline().


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_expanded
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L178)</span>


Sets the state of the expander. Set to %TRUE, if you want
the child widget to be revealed, and %FALSE if you want the
child widget to be hidden.


```pony
fun box set_expanded(
  expanded_pony: Bool val)
: None val
```
#### Parameters

*   expanded_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_label_fill
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L190)</span>


Sets whether the label widget should fill all available
horizontal space allocated to @expander.

Note that this function has no effect since 3.20.


```pony
fun box set_label_fill(
  label_fill_pony: Bool val)
: None val
```
#### Parameters

*   label_fill_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_label_widget
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L199)</span>


Set the label widget for the expander. This is the widget
that will appear embedded alongside the expander arrow.


```pony
fun box set_label_widget(
  label_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   label_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_resize_toplevel
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L206)</span>


Sets whether the expander will resize the toplevel widget
containing the expander upon resizing and collpasing.


```pony
fun box set_resize_toplevel(
  resize_toplevel_pony: Bool val)
: None val
```
#### Parameters

*   resize_toplevel_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_spacing
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L213)</span>


Sets the spacing field of @expander, which is the number of
pixels to place between expander and the child.


```pony
fun box set_spacing(
  spacing_pony: I32 val)
: None val
```
#### Parameters

*   spacing_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L220)</span>


Sets whether the text of the label contains markup in
[Pango’s text markup language][PangoMarkupFormat].
See gtk_label_set_markup().


```pony
fun box set_use_markup(
  use_markup_pony: Bool val)
: None val
```
#### Parameters

*   use_markup_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L228)</span>


If true, an underline in the text of the expander label indicates
the next character should be used for the mnemonic accelerator key.


```pony
fun box set_use_underline(
  use_underline_pony: Bool val)
: None val
```
#### Parameters

*   use_underline_pony: [Bool](builtin-Bool.md) val

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

