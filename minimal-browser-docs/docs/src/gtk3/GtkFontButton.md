```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkFontButton val"]
*/
use "../gobject"
class val GtkFontButton is GtkWidget
"""
The #GtkFontButton is a button which displays the currently selected
font an allows to open a font chooser dialog to change the font.
It is suitable widget for selecting a font in a preference dialog.

# CSS nodes

GtkFontButton has a single CSS node with name button and style class .font.
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
    widget = @gtk_font_button_new[GObjectREF]() //

  new val new_with_font(fontname_pony: String) =>
    widget = @gtk_font_button_new_with_font[GObjectREF](fontname_pony.cstring()) //


fun get_font_name(): String =>
"""
Retrieves the name of the currently selected font. This name includes
style and size information as well. If you want to render something
with the font, use this string with pango_font_description_from_string() .
If you’re interested in peeking certain values (family name,
style, size, weight) just query these properties from the
#PangoFontDescription object.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_font_button_get_font_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_show_size(): Bool =>
"""
Returns whether the font size will be shown in the label.
"""
  @gtk_font_button_get_show_size[Bool](widget)

fun get_show_style(): Bool =>
"""
Returns whether the name of the font style will be shown in the label.
"""
  @gtk_font_button_get_show_style[Bool](widget)

fun get_title(): String =>
"""
Retrieves the title of the font chooser dialog.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_font_button_get_title[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_use_font(): Bool =>
"""
Returns whether the selected font is used in the label.
"""
  @gtk_font_button_get_use_font[Bool](widget)

fun get_use_size(): Bool =>
"""
Returns whether the selected size is used in the label.
"""
  @gtk_font_button_get_use_size[Bool](widget)

/* set_font_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "fontname", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_show_size(show_size_pony: Bool): None =>
"""
If @show_size is %TRUE, the font size will be displayed along with the name of the selected font.
"""
  @gtk_font_button_set_show_size[None](widget, show_size_pony)

fun set_show_style(show_style_pony: Bool): None =>
"""
If @show_style is %TRUE, the font style will be displayed along with name of the selected font.
"""
  @gtk_font_button_set_show_style[None](widget, show_style_pony)

/* set_title unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_use_font(use_font_pony: Bool): None =>
"""
If @use_font is %TRUE, the font name will be written using the selected font.
"""
  @gtk_font_button_set_use_font[None](widget, use_font_pony)

fun set_use_size(use_size_pony: Bool): None =>
"""
If @use_size is %TRUE, the font name will be written using the selected size.
"""
  @gtk_font_button_set_use_size[None](widget, use_size_pony)


```````