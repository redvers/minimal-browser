```````pony-full-source
/*
   needs: ["None", "GtkWidget val", "Bool", "GObjectREF"]
provides: ["GtkOverlay val"]
*/
use "../gobject"
class val GtkOverlay is GtkWidget
"""
GtkOverlay is a container which contains a single main child, on top
of which it can place “overlay” widgets. The position of each overlay
widget is determined by its #GtkWidget:halign and #GtkWidget:valign
properties. E.g. a widget with both alignments set to %GTK_ALIGN_START
will be placed at the top left corner of the GtkOverlay container,
whereas an overlay with halign set to %GTK_ALIGN_CENTER and valign set
to %GTK_ALIGN_END will be placed a the bottom edge of the GtkOverlay,
horizontally centered. The position can be adjusted by setting the margin
properties of the child to non-zero values.

More complicated placement of overlays is possible by connecting
to the #GtkOverlay::get-child-position signal.

An overlay’s minimum and natural sizes are those of its main child. The sizes
of overlay children are not considered when measuring these preferred sizes.

# GtkOverlay as GtkBuildable

The GtkOverlay implementation of the GtkBuildable interface
supports placing a child as an overlay by specifying “overlay” as
the “type” attribute of a `<child>` element.

# CSS nodes

GtkOverlay has a single CSS node with the name “overlay”. Overlay children
whose alignments cause them to be positioned at an edge get the style classes
“.left”, “.right”, “.top”, and/or “.bottom” according to their position.
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
    widget = @gtk_overlay_new[GObjectREF]() //


fun add_overlay(widget_pony: GtkWidget val): None =>
"""
Adds @widget to @overlay.

The widget will be stacked on top of the main widget
added with gtk_container_add().

The position at which @widget is placed is determined
from its #GtkWidget:halign and #GtkWidget:valign properties.
"""
  @gtk_overlay_add_overlay[None](widget, widget_pony.gtkwidget())

fun get_overlay_pass_through(widget_pony: GtkWidget val): Bool =>
"""
Convenience function to get the value of the #GtkOverlay:pass-through
child property for @widget.
"""
  @gtk_overlay_get_overlay_pass_through[Bool](widget, widget_pony.gtkwidget())

/* reorder_overlay unavailable due to typing issues
 {:doh, %{argctype: "int", argname: "index_", argtype: "gint", paramtype: :param, txo: "none"}}
*/

fun set_overlay_pass_through(widget_pony: GtkWidget val, pass_through_pony: Bool): None =>
"""
Convenience function to set the value of the #GtkOverlay:pass-through
child property for @widget.
"""
  @gtk_overlay_set_overlay_pass_through[None](widget, widget_pony.gtkwidget(), pass_through_pony)


```````