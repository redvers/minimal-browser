```````pony-full-source
/*
   needs: ["GObjectREF", "String", "F32", "Bool"]
provides: ["GtkAspectFrame val"]
*/
use "../gobject"
class val GtkAspectFrame is GtkWidget
"""
The #GtkAspectFrame is useful when you want
pack a widget so that it can resize but always retains
the same aspect ratio. For instance, one might be
drawing a small preview of a larger image. #GtkAspectFrame
derives from #GtkFrame, so it can draw a label and
a frame around the child. The frame will be
“shrink-wrapped” to the size of the child.

# CSS nodes

GtkAspectFrame uses a CSS node with name frame.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(label_pony: String, xalign_pony: F32, yalign_pony: F32, ratio_pony: F32, obey_child_pony: Bool) =>
    widget = @gtk_aspect_frame_new[GObjectREF](label_pony.cstring(), xalign_pony, yalign_pony, ratio_pony, obey_child_pony) //


/* set unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "ratio", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/


```````