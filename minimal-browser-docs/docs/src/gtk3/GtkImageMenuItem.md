```````pony-full-source
/*
   needs: ["Bool", "GObjectREF", "GtkWidget val", "None", "String", "GtkAccelGroup val"]
provides: ["GtkImageMenuItem val"]
*/
use "../gobject"
class val GtkImageMenuItem is GtkWidget
"""
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
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_image_menu_item_new[GObjectREF]() //

  new val new_from_stock(stock_id_pony: String, accel_group_pony: GtkAccelGroup val) =>
    widget = @gtk_image_menu_item_new_from_stock[GObjectREF](stock_id_pony.cstring(), accel_group_pony.gtkwidget()) //

  new val new_with_label(label_pony: String) =>
    widget = @gtk_image_menu_item_new_with_label[GObjectREF](label_pony.cstring()) //

  new val new_with_mnemonic(label_pony: String) =>
    widget = @gtk_image_menu_item_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun get_always_show_image(): Bool =>
"""
Returns whether the menu item will ignore the #GtkSettings:gtk-menu-images
setting and always show the image, if available.
"""
  @gtk_image_menu_item_get_always_show_image[Bool](widget)

/* Needs conversion code 
  fun get_image(): GtkWidget val =>
    @gtk_image_menu_item_get_image[GObjectREF](widget)
*/

fun get_use_stock(): Bool =>
"""
Checks whether the label set in the menuitem is used as a
stock id to select the stock item for the item.
"""
  @gtk_image_menu_item_get_use_stock[Bool](widget)

/* set_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

fun set_always_show_image(always_show_pony: Bool): None =>
"""
If %TRUE, the menu item will ignore the #GtkSettings:gtk-menu-images
setting and always show the image, if available.

Use this property if the menuitem would be useless or hard to use
without the image.
"""
  @gtk_image_menu_item_set_always_show_image[None](widget, always_show_pony)

fun set_image(image_pony: GtkWidget val): None =>
"""
Sets the image of @image_menu_item to the given widget.
Note that it depends on the show-menu-images setting whether
the image will be displayed or not.
"""
  @gtk_image_menu_item_set_image[None](widget, image_pony.gtkwidget())

fun set_use_stock(use_stock_pony: Bool): None =>
"""
If %TRUE, the label set in the menuitem is used as a
stock id to select the stock item for the item.
"""
  @gtk_image_menu_item_set_use_stock[None](widget, use_stock_pony)


```````