```````pony-full-source
/*
   needs: ["None", "GObjectREF", "GtkNotebookAccessible val", "GtkWidget val"]
provides: ["GtkNotebookPageAccessible val"]
*/
use "../gobject"
class val GtkNotebookPageAccessible is GtkWidget
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


  new val create(notebook_pony: GtkNotebookAccessible val, child_pony: GtkWidget val) =>
    widget = @gtk_notebook_page_accessible_new[GObjectREF](notebook_pony.gtkwidget(), child_pony.gtkwidget()) //


fun invalidate(): None =>
"""
No provided documentation
"""
  @gtk_notebook_page_accessible_invalidate[None](widget)


```````