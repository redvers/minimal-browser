```````pony-full-source
/*
   needs: ["None", "Pointer[U8 val] ref", "String", "Bool", "GObjectREF"]
provides: ["GtkAppChooserButton val"]
*/
use "../gobject"
class val GtkAppChooserButton is GtkWidget
"""
The #GtkAppChooserButton is a widget that lets the user select
an application. It implements the #GtkAppChooser interface.

Initially, a #GtkAppChooserButton selects the first application
in its list, which will either be the most-recently used application
or, if #GtkAppChooserButton:show-default-item is %TRUE, the
default application.

The list of applications shown in a #GtkAppChooserButton includes
the recommended applications for the given content type. When
#GtkAppChooserButton:show-default-item is set, the default application
is also included. To let the user chooser other applications,
you can set the #GtkAppChooserButton:show-dialog-item property,
which allows to open a full #GtkAppChooserDialog.

It is possible to add custom items to the list, using
gtk_app_chooser_button_append_custom_item(). These items cause
the #GtkAppChooserButton::custom-item-activated signal to be
emitted when they are selected.

To track changes in the selected application, use the
#GtkComboBox::changed signal.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(content_type_pony: String) =>
    widget = @gtk_app_chooser_button_new[GObjectREF](content_type_pony.cstring()) //


/* append_custom_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

fun append_separator(): None =>
"""
Appends a separator to the list of applications that is shown
in the popup.
"""
  @gtk_app_chooser_button_append_separator[None](widget)

fun get_heading(): String =>
"""
Returns the text to display at the top of the dialog.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_app_chooser_button_get_heading[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_show_default_item(): Bool =>
"""
Returns the current value of the #GtkAppChooserButton:show-default-item
property.
"""
  @gtk_app_chooser_button_get_show_default_item[Bool](widget)

fun get_show_dialog_item(): Bool =>
"""
Returns the current value of the #GtkAppChooserButton:show-dialog-item
property.
"""
  @gtk_app_chooser_button_get_show_dialog_item[Bool](widget)

/* set_active_custom_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_heading unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "heading", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_show_default_item(setting_pony: Bool): None =>
"""
Sets whether the dropdown menu of this button should show the
default application for the given content type at top.
"""
  @gtk_app_chooser_button_set_show_default_item[None](widget, setting_pony)

fun set_show_dialog_item(setting_pony: Bool): None =>
"""
Sets whether the dropdown menu of this button should show an
entry to trigger a #GtkAppChooserDialog.
"""
  @gtk_app_chooser_button_set_show_dialog_item[None](widget, setting_pony)


```````