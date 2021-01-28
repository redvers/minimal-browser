```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val", "U32", "Bool", "None", "String"]
provides: ["GtkAccelLabel val"]
*/
use "../gobject"
class val GtkAccelLabel is GtkWidget
"""
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
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(string_pony: String) =>
    widget = @gtk_accel_label_new[GObjectREF](string_pony.cstring()) //


/* get_accel unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "accelerator_key", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "GdkModifierType*", argname: "accelerator_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "full"}}
*/

/* Needs conversion code 
  fun get_accel_widget(): GtkWidget val =>
    @gtk_accel_label_get_accel_widget[GObjectREF](widget)
*/

fun get_accel_width(): U32 =>
"""
Returns the width needed to display the accelerator key(s).
This is used by menus to align all of the #GtkMenuItem widgets, and shouldn't
be needed by applications.
"""
  @gtk_accel_label_get_accel_width[U32](widget)

fun refetch(): Bool =>
"""
Recreates the string representing the accelerator keys.
This should not be needed since the string is automatically updated whenever
accelerators are added or removed from the associated widget.
"""
  @gtk_accel_label_refetch[Bool](widget)

/* set_accel unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "accelerator_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* set_accel_closure unavailable due to typing issues
 {:doh, %{argctype: "GClosure*", argname: "accel_closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/

fun set_accel_widget(accel_widget_pony: GtkWidget val): None =>
"""
Sets the widget to be monitored by this accelerator label. Passing %NULL for
@accel_widget will dissociate @accel_label from its current widget, if any.
"""
  @gtk_accel_label_set_accel_widget[None](widget, accel_widget_pony.gtkwidget())


```````