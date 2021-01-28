```````pony-full-source
/*
   needs: ["GObjectREF", "Bool", "I32"]
provides: ["GtkHBox val"]
*/
use "../gobject"
class val GtkHBox is GtkWidget
"""
#GtkHBox is a container that organizes child widgets into a single row.

Use the #GtkBox packing interface to determine the arrangement,
spacing, width, and alignment of #GtkHBox children.

All children are allocated the same height.

GtkHBox has been deprecated. You can use #GtkBox instead, which is a
very quick and easy change. If you have derived your own classes from
GtkHBox, you can simply change the inheritance to derive directly
from #GtkBox. No further changes are needed, since the default
value of the #GtkOrientable:orientation property is
%GTK_ORIENTATION_HORIZONTAL.

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
    widget = @gtk_hbox_new[GObjectREF](homogeneous_pony, spacing_pony) //




```````