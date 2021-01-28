# GtkPopoverMenu
<span class="source-link">[[Source]](src/gtk3/GtkPopoverMenu.md#L6)</span>

GtkPopoverMenu is a subclass of #GtkPopover that treats its
children like menus and allows switching between them. It is
meant to be used primarily together with #GtkModelButton, but
any widget can be used, such as #GtkSpinButton or #GtkScale.
In this respect, GtkPopoverMenu is more flexible than popovers
that are created from a #GMenuModel with gtk_popover_new_from_model().

To add a child as a submenu, set the #GtkPopoverMenu:submenu
child property to the name of the submenu. To let the user open
this submenu, add a #GtkModelButton whose #GtkModelButton:menu-name
property is set to the name you've given to the submenu.

By convention, the first child of a submenu should be a #GtkModelButton
to switch back to the parent menu. Such a button should use the
#GtkModelButton:inverted and #GtkModelButton:centered properties
to achieve a title-like appearance and place the submenu indicator
at the opposite side. To switch back to the main menu, use "main"
as the menu name.

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
          <property name="action-name">win.frob</property>
          <property name="text" translatable="yes">Frob</property>
        </object>
      </child>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="menu-name">more</property>
          <property name="text" translatable="yes">More</property>
        </object>
      </child>
    </object>
  </child>
  <child>
    <object class="GtkBox">
      <property name="visible">True</property>
      <property name="margin">10</property>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="action-name">win.foo</property>
          <property name="text" translatable="yes">Foo</property>
        </object>
      </child>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="action-name">win.bar</property>
          <property name="text" translatable="yes">Bar</property>
        </object>
      </child>
    </object>
    <packing>
      <property name="submenu">more</property>
    </packing>
  </child>
</object>
]|

Just like normal popovers created using gtk_popover_new_from_model,
#GtkPopoverMenu instances have a single css node called "popover"
and get the .menu style class.


```pony
class val GtkPopoverMenu is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkPopoverMenu.md#L85)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkPopoverMenu val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkPopoverMenu](gtk3-GtkPopoverMenu.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkPopoverMenu.md#L88)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkPopoverMenu val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkPopoverMenu](gtk3-GtkPopoverMenu.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkPopoverMenu.md#L91)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkPopoverMenu val^
```

#### Returns

* [GtkPopoverMenu](gtk3-GtkPopoverMenu.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkPopoverMenu.md#L95)</span>


```pony
new val create()
: GtkPopoverMenu val^
```

#### Returns

* [GtkPopoverMenu](gtk3-GtkPopoverMenu.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkPopoverMenu.md#L81)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkPopoverMenu.md#L83)</span>


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

