```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkFontChooserWidget val"]
*/
use "../gobject"
class val GtkFontChooserWidget is GtkWidget
"""
The #GtkFontChooserWidget widget lists the available fonts,
styles and sizes, allowing the user to select a font. It is
used in the #GtkFontChooserDialog widget to provide a
dialog box for selecting fonts.

To set the font which is initially selected, use
gtk_font_chooser_set_font() or gtk_font_chooser_set_font_desc().

To get the selected font use gtk_font_chooser_get_font() or
gtk_font_chooser_get_font_desc().

To change the text which is shown in the preview area, use
gtk_font_chooser_set_preview_text().

# CSS nodes

GtkFontChooserWidget has a single CSS node with name fontchooser.
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
    widget = @gtk_font_chooser_widget_new[GObjectREF]() //




```````