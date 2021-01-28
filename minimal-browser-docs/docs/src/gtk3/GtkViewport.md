```````pony-full-source
/*
   needs: ["GObjectREF", "GtkAdjustment val"]
provides: ["GtkViewport val"]
*/
use "../gobject"
class val GtkViewport is GtkWidget
"""
The #GtkViewport widget acts as an adaptor class, implementing
scrollability for child widgets that lack their own scrolling
capabilities. Use GtkViewport to scroll child widgets such as
#GtkGrid, #GtkBox, and so on.

If a widget has native scrolling abilities, such as #GtkTextView,
#GtkTreeView or #GtkIconView, it can be added to a #GtkScrolledWindow
with gtk_container_add(). If a widget does not, you must first add the
widget to a #GtkViewport, then add the viewport to the scrolled window.
gtk_container_add() does this automatically if a child that does not
implement #GtkScrollable is added to a #GtkScrolledWindow, so you can
ignore the presence of the viewport.

The GtkViewport will start scrolling content only if allocated less
than the child widget’s minimum size in a given orientation.

# CSS nodes

GtkViewport has a single CSS node with name viewport.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(hadjustment_pony: GtkAdjustment val, vadjustment_pony: GtkAdjustment val) =>
    widget = @gtk_viewport_new[GObjectREF](hadjustment_pony.gtkwidget(), vadjustment_pony.gtkwidget()) //


/* get_bin_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_shadow_type unavailable due to return typing issues
{:argctype, "GtkShadowType"}
{:argname, "rv"}
{:argtype, "ShadowType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_vadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_view_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* set_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

/* set_shadow_type unavailable due to typing issues
 {:doh, %{argctype: "GtkShadowType", argname: "gtype", argtype: "ShadowType", paramtype: :param, txo: "none"}}
*/

/* set_vadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/


```````