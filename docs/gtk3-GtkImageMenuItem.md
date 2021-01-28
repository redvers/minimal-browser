# GtkImageMenuItem
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L6)</span>

A GtkImageMenuItem is a menu item which has an icon next to the text label.

This is functionally equivalent to:

|[<!-- language="C" -->
  GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
  GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
  GtkWidget *label = gtk_label_new ("Music");
  GtkWidget *menu_item = gtk_menu_item_new ();

  gtk_container_add (GTK_CONTAINER (box), icon);
  gtk_container_add (GTK_CONTAINER (box), label);

  gtk_container_add (GTK_CONTAINER (menu_item), box);

  gtk_widget_show_all (menu_item);
]|

Note that the user may disable display of menu icons using
the #GtkSettings:gtk-menu-images setting, so make sure to still
fill in the text label. If you want to ensure that your menu items
show an icon you are strongly encouraged to use a #GtkMenuItem
with a #GtkImage instead.

#GtkImageMenuItem has been deprecated since GTK+ 3.10. If you want to
display an icon in a menu item, you should use #GtkMenuItem and pack a
#GtkBox with a #GtkImage and a #GtkLabel instead. You should also consider
using #GtkBuilder and the XML #GMenu description for creating menus, by
following the [GMenu guide][https://developer.gnome.org/GMenu/]. You should
consider using icons in menu items only sparingly, and for "objects" (or
"nouns") elements only, like bookmarks, files, and links; "actions" (or
"verbs") should not have icons.

Furthermore, if you would like to display keyboard accelerator, you must
pack the accel label into the box using gtk_box_pack_end() and align the
label, otherwise the accelerator will not display correctly. The following
code snippet adds a keyboard accelerator to the menu item, with a key
binding of Ctrl+M:

|[<!-- language="C" -->
  GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
  GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
  GtkWidget *label = gtk_accel_label_new ("Music");
  GtkWidget *menu_item = gtk_menu_item_new ();
  GtkAccelGroup *accel_group = gtk_accel_group_new ();

  gtk_container_add (GTK_CONTAINER (box), icon);

  gtk_label_set_use_underline (GTK_LABEL (label), TRUE);
  gtk_label_set_xalign (GTK_LABEL (label), 0.0);

  gtk_widget_add_accelerator (menu_item, "activate", accel_group,
                              GDK_KEY_m, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
  gtk_accel_label_set_accel_widget (GTK_ACCEL_LABEL (label), menu_item);

  gtk_box_pack_end (GTK_BOX (box), label, TRUE, TRUE, 0);

  gtk_container_add (GTK_CONTAINER (menu_item), box);

  gtk_widget_show_all (menu_item);
]|


```pony
class val GtkImageMenuItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L74)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkImageMenuItem val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L77)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkImageMenuItem val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L80)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkImageMenuItem val^
```

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L84)</span>


```pony
new val create()
: GtkImageMenuItem val^
```

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) val^

---

### new_from_stock
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L87)</span>


```pony
new val new_from_stock(
  stock_id_pony: String val,
  accel_group_pony: GtkAccelGroup val)
: GtkImageMenuItem val^
```
#### Parameters

*   stock_id_pony: [String](builtin-String.md) val
*   accel_group_pony: [GtkAccelGroup](gtk3-GtkAccelGroup.md) val

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) val^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L90)</span>


```pony
new val new_with_label(
  label_pony: String val)
: GtkImageMenuItem val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) val^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L93)</span>


```pony
new val new_with_mnemonic(
  label_pony: String val)
: GtkImageMenuItem val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L70)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L72)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_always_show_image
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L97)</span>


Returns whether the menu item will ignore the #GtkSettings:gtk-menu-images
setting and always show the image, if available.


```pony
fun box get_always_show_image()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_stock
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L109)</span>


Checks whether the label set in the menuitem is used as a
stock id to select the stock item for the item.


```pony
fun box get_use_stock()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_always_show_image
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L120)</span>


If %TRUE, the menu item will ignore the #GtkSettings:gtk-menu-images
setting and always show the image, if available.

Use this property if the menuitem would be useless or hard to use
without the image.


```pony
fun box set_always_show_image(
  always_show_pony: Bool val)
: None val
```
#### Parameters

*   always_show_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_image
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L130)</span>


Sets the image of @image_menu_item to the given widget.
Note that it depends on the show-menu-images setting whether
the image will be displayed or not.


```pony
fun box set_image(
  image_pony: GtkWidget val)
: None val
```
#### Parameters

*   image_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_stock
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L138)</span>


If %TRUE, the label set in the menuitem is used as a
stock id to select the stock item for the item.


```pony
fun box set_use_stock(
  use_stock_pony: Bool val)
: None val
```
#### Parameters

*   use_stock_pony: [Bool](builtin-Bool.md) val

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

