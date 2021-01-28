# GtkRecentChooserMenu
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L6)</span>

#GtkRecentChooserMenu is a widget suitable for displaying recently used files
inside a menu.  It can be used to set a sub-menu of a #GtkMenuItem using
gtk_menu_item_set_submenu(), or as the menu of a #GtkMenuToolButton.

Note that #GtkRecentChooserMenu does not have any methods of its own. Instead,
you should use the functions that work on a #GtkRecentChooser.

Note also that #GtkRecentChooserMenu does not support multiple filters, as it
has no way to let the user choose between them as the #GtkRecentChooserWidget
and #GtkRecentChooserDialog widgets do. Thus using gtk_recent_chooser_add_filter()
on a #GtkRecentChooserMenu widget will yield the same effects as using
gtk_recent_chooser_set_filter(), replacing any currently set filter
with the supplied filter; gtk_recent_chooser_remove_filter() will remove
any currently set #GtkRecentFilter object and will unset the current filter;
gtk_recent_chooser_list_filters() will return a list containing a single
#GtkRecentFilter object.

Recently used files are supported since GTK+ 2.10.


```pony
class val GtkRecentChooserMenu is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L31)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRecentChooserMenu val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRecentChooserMenu](gtk3-GtkRecentChooserMenu.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L34)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRecentChooserMenu val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRecentChooserMenu](gtk3-GtkRecentChooserMenu.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L37)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRecentChooserMenu val^
```

#### Returns

* [GtkRecentChooserMenu](gtk3-GtkRecentChooserMenu.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L41)</span>


```pony
new val create()
: GtkRecentChooserMenu val^
```

#### Returns

* [GtkRecentChooserMenu](gtk3-GtkRecentChooserMenu.md) val^

---

### new_for_manager
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L44)</span>


```pony
new val new_for_manager(
  manager_pony: GtkRecentManager val)
: GtkRecentChooserMenu val^
```
#### Parameters

*   manager_pony: [GtkRecentManager](gtk3-GtkRecentManager.md) val

#### Returns

* [GtkRecentChooserMenu](gtk3-GtkRecentChooserMenu.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L27)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L29)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_show_numbers
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L48)</span>


Returns the value set by gtk_recent_chooser_menu_set_show_numbers().


```pony
fun box get_show_numbers()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_numbers
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L54)</span>


Sets whether a number should be added to the items of @menu.  The
numbers are shown to provide a unique character for a mnemonic to
be used inside ten menu item’s label.  Only the first the items
get a number to avoid clashes.


```pony
fun box set_show_numbers(
  show_numbers_pony: Bool val)
: None val
```
#### Parameters

*   show_numbers_pony: [Bool](builtin-Bool.md) val

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

