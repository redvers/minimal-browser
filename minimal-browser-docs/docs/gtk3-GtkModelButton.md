# GtkModelButton
<span class="source-link">[[Source]](src/gtk3/GtkModelButton.md#L6)</span>

GtkModelButton is a button class that can use a #GAction as its model.
In contrast to #GtkToggleButton or #GtkRadioButton, which can also
be backed by a #GAction via the #GtkActionable:action-name property,
GtkModelButton will adapt its appearance according to the kind of
action it is backed by, and appear either as a plain, check or
radio button.

Model buttons are used when popovers from a menu model with
gtk_popover_new_from_model(); they can also be used manually in
a #GtkPopoverMenu.

When the action is specified via the #GtkActionable:action-name
and #GtkActionable:action-target properties, the role of the button
(i.e. whether it is a plain, check or radio button) is determined by
the type of the action and doesn't have to be explicitly specified
with the #GtkModelButton:role property.

The content of the button is specified by the #GtkModelButton:text
and #GtkModelButton:icon properties.

The appearance of model buttons can be influenced with the
#GtkModelButton:centered and #GtkModelButton:iconic properties.

Model buttons have built-in support for submenus in #GtkPopoverMenu.
To make a GtkModelButton that opens a submenu when activated, set
the #GtkModelButton:menu-name property. To make a button that goes
back to the parent menu, you should set the #GtkModelButton:inverted
property to place the submenu indicator at the opposite side.

# Example

|[
<object class="GtkPopoverMenu">
  <child>
    <object class="GtkBox">
      <property name="visible">True</property>
      <property name="margin">10</property>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="action-name">view.cut</property>
          <property name="text" translatable="yes">Cut</property>
        </object>
      </child>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="action-name">view.copy</property>
          <property name="text" translatable="yes">Copy</property>
        </object>
      </child>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="action-name">view.paste</property>
          <property name="text" translatable="yes">Paste</property>
        </object>
      </child>
    </object>
  </child>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
modelbutton
├── <child>
╰── check
]|

|[<!-- language="plain" -->
modelbutton
├── <child>
╰── radio
]|

|[<!-- language="plain" -->
modelbutton
├── <child>
╰── arrow
]|

GtkModelButton has a main CSS node with name modelbutton, and a subnode,
which will have the name check, radio or arrow, depending on the role
of the button and whether it has a menu name set.

The subnode is positioned before or after the content nodes and gets the
.left or .right style class, depending on where it is located.

|[<!-- language="plain" -->
button.model
├── <child>
╰── check
]|

Iconic model buttons (see #GtkModelButton:iconic) change the name of
their main node to button and add a .model style class to it. The indicator
subnode is invisible in this case.


```pony
class val GtkModelButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkModelButton.md#L112)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkModelButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkModelButton](gtk3-GtkModelButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkModelButton.md#L115)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkModelButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkModelButton](gtk3-GtkModelButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkModelButton.md#L118)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkModelButton val^
```

#### Returns

* [GtkModelButton](gtk3-GtkModelButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkModelButton.md#L122)</span>


```pony
new val create()
: GtkModelButton val^
```

#### Returns

* [GtkModelButton](gtk3-GtkModelButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkModelButton.md#L108)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkModelButton.md#L110)</span>


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

