```````pony-full-source
/*
   needs: ["GObjectREF", "Bool", "I32"]
provides: ["GtkVBox val"]
*/
use "../gobject"
class val GtkVBox is GtkWidget
"""
A #GtkVBox is a container that organizes child widgets into a single column.

Use the #GtkBox packing interface to determine the arrangement,
spacing, height, and alignment of #GtkVBox children.

All children are allocated the same width.

GtkVBox has been deprecated. You can use #GtkBox with a #GtkOrientable:orientation
set to %GTK_ORIENTATION_VERTICAL instead when calling gtk_box_new(),
which is a very quick and easy change.

If you have derived your own classes from GtkVBox, you can change the
inheritance to derive directly from #GtkBox, and set the #GtkOrientable:orientation
property to %GTK_ORIENTATION_VERTICAL in your instance init function,
with a call like:

|[<!-- language="C" -->
  gtk_orientable_set_orientation (GTK_ORIENTABLE (object),
                                  GTK_ORIENTATION_VERTICAL);
]|

If you have a grid-like layout composed of nested boxes, and you don’t
need first-child or last-child styling, the recommendation is to switch
to #GtkGrid. For more information about migrating to #GtkGrid, see
[Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(homogeneous_pony: Bool, spacing_pony: I32) =>
    widget = @gtk_vbox_new[GObjectREF](homogeneous_pony, spacing_pony) //




```````