```````pony-full-source
/*
   needs: ["None", "U32", "GObjectREF", "F32"]
provides: ["GtkAlignment val"]
*/
use "../gobject"
class val GtkAlignment is GtkWidget
"""
The #GtkAlignment widget controls the alignment and size of its child widget.
It has four settings: xscale, yscale, xalign, and yalign.

The scale settings are used to specify how much the child widget should
expand to fill the space allocated to the #GtkAlignment.
The values can range from 0 (meaning the child doesn’t expand at all) to
1 (meaning the child expands to fill all of the available space).

The align settings are used to place the child widget within the available
area. The values range from 0 (top or left) to 1 (bottom or right).
Of course, if the scale settings are both set to 1, the alignment settings
have no effect.

GtkAlignment has been deprecated in 3.14 and should not be used in
newly-written code. The desired effect can be achieved by using the
#GtkWidget:halign, #GtkWidget:valign and #GtkWidget:margin properties on the
child widget.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(xalign_pony: F32, yalign_pony: F32, xscale_pony: F32, yscale_pony: F32) =>
    widget = @gtk_alignment_new[GObjectREF](xalign_pony, yalign_pony, xscale_pony, yscale_pony) //


/* get_padding unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "padding_top", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "padding_bottom", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "padding_left", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "padding_right", argtype: "guint", paramtype: :param, txo: "full"}}
*/

/* set unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "xscale", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yscale", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/

fun set_padding(padding_top_pony: U32, padding_bottom_pony: U32, padding_left_pony: U32, padding_right_pony: U32): None =>
"""
Sets the padding on the different sides of the widget.
The padding adds blank space to the sides of the widget. For instance,
this can be used to indent the child widget towards the right by adding
padding on the left.
"""
  @gtk_alignment_set_padding[None](widget, padding_top_pony, padding_bottom_pony, padding_left_pony, padding_right_pony)


```````