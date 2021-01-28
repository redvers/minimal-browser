```````pony-full-source
/*
   needs: ["GObjectREF", "String", "GtkWindow val"]
provides: ["GtkFontChooserDialog val"]
*/
use "../gobject"
class val GtkFontChooserDialog is GtkWidget
"""
The #GtkFontChooserDialog widget is a dialog for selecting a font.
It implements the #GtkFontChooser interface.

# GtkFontChooserDialog as GtkBuildable

The GtkFontChooserDialog implementation of the #GtkBuildable
interface exposes the buttons with the names “select_button”
and “cancel_button”.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(title_pony: String, parent_pony: GtkWindow val) =>
    widget = @gtk_font_chooser_dialog_new[GObjectREF](title_pony.cstring(), parent_pony.gtkwidget()) //




```````