# GtkActionGroup
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L6)</span>

Actions are organised into groups. An action group is essentially a
map from names to #GtkAction objects.

All actions that would make sense to use in a particular context
should be in a single group. Multiple action groups may be used for a
particular user interface. In fact, it is expected that most nontrivial
applications will make use of multiple groups. For example, in an
application that can edit multiple documents, one group holding global
actions (e.g. quit, about, new), and one group per document holding
actions that act on that document (eg. save, cut/copy/paste, etc). Each
window’s menus would be constructed from a combination of two action
groups.

## Accelerators ## {#Action-Accel}

Accelerators are handled by the GTK+ accelerator map. All actions are
assigned an accelerator path (which normally has the form
`<Actions>/group-name/action-name`) and a shortcut is associated with
this accelerator path. All menuitems and toolitems take on this accelerator
path. The GTK+ accelerator map code makes sure that the correct shortcut
is displayed next to the menu item.

# GtkActionGroup as GtkBuildable # {#GtkActionGroup-BUILDER-UI}

The #GtkActionGroup implementation of the #GtkBuildable interface accepts
#GtkAction objects as <child> elements in UI definitions.

Note that it is probably more common to define actions and action groups
in the code, since they are directly related to what the code can do.

The GtkActionGroup implementation of the GtkBuildable interface supports
a custom <accelerator> element, which has attributes named “key“ and
“modifiers“ and allows to specify accelerators. This is similar to the
<accelerator> element of #GtkWidget, the main difference is that
it doesn’t allow you to specify a signal.

## A #GtkDialog UI definition fragment. ##
|[
<object class="GtkActionGroup" id="actiongroup">
  <child>
      <object class="GtkAction" id="About">
          <property name="name">About</property>
          <property name="stock_id">gtk-about</property>
          <signal handler="about_activate" name="activate"/>
      </object>
      <accelerator key="F1" modifiers="GDK_CONTROL_MASK | GDK_SHIFT_MASK"/>
  </child>
</object>
]|


```pony
class val GtkActionGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L62)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkActionGroup val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L65)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkActionGroup val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L68)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkActionGroup val^
```

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L72)</span>


```pony
new val create(
  name_pony: String val)
: GtkActionGroup val^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L58)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L60)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L134)</span>


Gets the name of the action group.


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L142)</span>


Returns %TRUE if the group is sensitive.  The constituent actions
can only be logically sensitive (see gtk_action_is_sensitive()) if
they are sensitive (see gtk_action_get_sensitive()) and their group
is sensitive.


```pony
fun box get_sensitive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L151)</span>


Returns %TRUE if the group is visible.  The constituent actions
can only be logically visible (see gtk_action_is_visible()) if
they are visible (see gtk_action_get_visible()) and their group
is visible.


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L175)</span>


Changes the sensitivity of @action_group


```pony
fun box set_sensitive(
  sensitive_pony: Bool val)
: None val
```
#### Parameters

*   sensitive_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L191)</span>


Changes the visible of @action_group.


```pony
fun box set_visible(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

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

