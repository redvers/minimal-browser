```````pony-full-source
/*
   needs: ["GObjectREF", "String", "GtkWindow val"]
provides: ["GtkColorChooserDialog val"]
*/
use "../gobject"
class val GtkColorChooserDialog is GtkWidget
"""
The #GtkColorChooserDialog widget is a dialog for choosing
a color. It implements the #GtkColorChooser interface.
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
    widget = @gtk_color_chooser_dialog_new[GObjectREF](title_pony.cstring(), parent_pony.gtkwidget()) //




```````