```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkCellRendererPixbuf val"]
*/
use "../gobject"
class val GtkCellRendererPixbuf is GtkWidget
"""
A #GtkCellRendererPixbuf can be used to render an image in a cell. It allows
to render either a given #GdkPixbuf (set via the
#GtkCellRendererPixbuf:pixbuf property) or a named icon (set via the
#GtkCellRendererPixbuf:icon-name property).

To support the tree view, #GtkCellRendererPixbuf also supports rendering two
alternative pixbufs, when the #GtkCellRenderer:is-expander property is %TRUE.
If the #GtkCellRenderer:is-expanded property is %TRUE and the
#GtkCellRendererPixbuf:pixbuf-expander-open property is set to a pixbuf, it
renders that pixbuf, if the #GtkCellRenderer:is-expanded property is %FALSE
and the #GtkCellRendererPixbuf:pixbuf-expander-closed property is set to a
pixbuf, it renders that one.
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
    widget = @gtk_cell_renderer_pixbuf_new[GObjectREF]() //




```````