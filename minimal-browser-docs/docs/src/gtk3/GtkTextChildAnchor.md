```````pony-full-source
/*
   needs: ["Bool", "GObjectREF"]
provides: ["GtkTextChildAnchor val"]
*/
use "../gobject"
class val GtkTextChildAnchor is GtkWidget
"""
A #GtkTextChildAnchor is a spot in the buffer where child widgets can
be “anchored” (inserted inline, as if they were characters). The anchor
can have multiple widgets anchored, to allow for multiple views.
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
    widget = @gtk_text_child_anchor_new[GObjectREF]() //


fun get_deleted(): Bool =>
"""
Determines whether a child anchor has been deleted from
the buffer. Keep in mind that the child anchor will be
unreferenced when removed from the buffer, so you need to
hold your own reference (with g_object_ref()) if you plan
to use this function — otherwise all deleted child anchors
will also be finalized.
"""
  @gtk_text_child_anchor_get_deleted[Bool](widget)

/* get_widgets unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */


```````