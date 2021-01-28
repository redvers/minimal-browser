```````pony-full-source
/*
   needs: ["GObjectREF", "GtkCellRenderer val"]
provides: ["GtkRendererCellAccessible val"]
*/
use "../gobject"
class val GtkRendererCellAccessible is GtkWidget
"""
No documentation provided
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(renderer_pony: GtkCellRenderer val) =>
    widget = @gtk_renderer_cell_accessible_new[GObjectREF](renderer_pony.gtkwidget()) //




```````