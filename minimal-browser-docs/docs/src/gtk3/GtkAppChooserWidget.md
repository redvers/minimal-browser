```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkAppChooserWidget val"]
*/
use "../gobject"
class val GtkAppChooserWidget is GtkWidget
"""
#GtkAppChooserWidget is a widget for selecting applications.
It is the main building block for #GtkAppChooserDialog. Most
applications only need to use the latter; but you can use
this widget as part of a larger widget if you have special needs.

#GtkAppChooserWidget offers detailed control over what applications
are shown, using the
#GtkAppChooserWidget:show-default,
#GtkAppChooserWidget:show-recommended,
#GtkAppChooserWidget:show-fallback,
#GtkAppChooserWidget:show-other and
#GtkAppChooserWidget:show-all
properties. See the #GtkAppChooser documentation for more information
about these groups of applications.

To keep track of the selected application, use the
#GtkAppChooserWidget::application-selected and #GtkAppChooserWidget::application-activated signals.

# CSS nodes

GtkAppChooserWidget has a single CSS node with name appchooser.
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
    widget = @gtk_app_chooser_widget_new[GObjectREF](content_type_pony.cstring()) //


fun get_default_text(): String =>
"""
Returns the text that is shown if there are not applications
that can handle the content type.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_app_chooser_widget_get_default_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_show_all(): Bool =>
"""
Returns the current value of the #GtkAppChooserWidget:show-all
property.
"""
  @gtk_app_chooser_widget_get_show_all[Bool](widget)

fun get_show_default(): Bool =>
"""
Returns the current value of the #GtkAppChooserWidget:show-default
property.
"""
  @gtk_app_chooser_widget_get_show_default[Bool](widget)

fun get_show_fallback(): Bool =>
"""
Returns the current value of the #GtkAppChooserWidget:show-fallback
property.
"""
  @gtk_app_chooser_widget_get_show_fallback[Bool](widget)

fun get_show_other(): Bool =>
"""
Returns the current value of the #GtkAppChooserWidget:show-other
property.
"""
  @gtk_app_chooser_widget_get_show_other[Bool](widget)

fun get_show_recommended(): Bool =>
"""
Returns the current value of the #GtkAppChooserWidget:show-recommended
property.
"""
  @gtk_app_chooser_widget_get_show_recommended[Bool](widget)

/* set_default_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_show_all(setting_pony: Bool): None =>
"""
Sets whether the app chooser should show all applications
in a flat list.
"""
  @gtk_app_chooser_widget_set_show_all[None](widget, setting_pony)

fun set_show_default(setting_pony: Bool): None =>
"""
Sets whether the app chooser should show the default handler
for the content type in a separate section.
"""
  @gtk_app_chooser_widget_set_show_default[None](widget, setting_pony)

fun set_show_fallback(setting_pony: Bool): None =>
"""
Sets whether the app chooser should show related applications
for the content type in a separate section.
"""
  @gtk_app_chooser_widget_set_show_fallback[None](widget, setting_pony)

fun set_show_other(setting_pony: Bool): None =>
"""
Sets whether the app chooser should show applications
which are unrelated to the content type.
"""
  @gtk_app_chooser_widget_set_show_other[None](widget, setting_pony)

fun set_show_recommended(setting_pony: Bool): None =>
"""
Sets whether the app chooser should show recommended applications
for the content type in a separate section.
"""
  @gtk_app_chooser_widget_set_show_recommended[None](widget, setting_pony)


```````