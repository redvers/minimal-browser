```````pony-full-source
/*
   needs: ["Bool", "GObjectREF"]
provides: ["GtkHandleBox val"]
*/
use "../gobject"
class val GtkHandleBox is GtkWidget
"""
The #GtkHandleBox widget allows a portion of a window to be "torn
off". It is a bin widget which displays its child and a handle that
the user can drag to tear off a separate window (the “float
window”) containing the child widget. A thin
“ghost” is drawn in the original location of the
handlebox. By dragging the separate window back to its original
location, it can be reattached.

When reattaching, the ghost and float window, must be aligned
along one of the edges, the “snap edge”.
This either can be specified by the application programmer
explicitly, or GTK+ will pick a reasonable default based
on the handle position.

To make detaching and reattaching the handlebox as minimally confusing
as possible to the user, it is important to set the snap edge so that
the snap edge does not move when the handlebox is deattached. For
instance, if the handlebox is packed at the bottom of a VBox, then
when the handlebox is detached, the bottom edge of the handlebox's
allocation will remain fixed as the height of the handlebox shrinks,
so the snap edge should be set to %GTK_POS_BOTTOM.

> #GtkHandleBox has been deprecated. It is very specialized, lacks features
> to make it useful and most importantly does not fit well into modern
> application design. Do not use it. There is no replacement.
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
    widget = @gtk_handle_box_new[GObjectREF]() //


fun get_child_detached(): Bool =>
"""
Whether the handlebox’s child is currently detached.
"""
  @gtk_handle_box_get_child_detached[Bool](widget)

/* get_handle_position unavailable due to return typing issues
{:argctype, "GtkPositionType"}
{:argname, "rv"}
{:argtype, "PositionType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_shadow_type unavailable due to return typing issues
{:argctype, "GtkShadowType"}
{:argname, "rv"}
{:argtype, "ShadowType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_snap_edge unavailable due to return typing issues
{:argctype, "GtkPositionType"}
{:argname, "rv"}
{:argtype, "PositionType"}
{:paramtype, :param}
{:txo, "none"} */

/* set_handle_position unavailable due to typing issues
 {:doh, %{argctype: "GtkPositionType", argname: "position", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

/* set_shadow_type unavailable due to typing issues
 {:doh, %{argctype: "GtkShadowType", argname: "gtype", argtype: "ShadowType", paramtype: :param, txo: "none"}}
*/

/* set_snap_edge unavailable due to typing issues
 {:doh, %{argctype: "GtkPositionType", argname: "edge", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/


```````