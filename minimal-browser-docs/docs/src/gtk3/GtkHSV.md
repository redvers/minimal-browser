```````pony-full-source
/*
   needs: ["Bool", "None", "I32", "GObjectREF"]
provides: ["GtkHSV val"]
*/
use "../gobject"
class val GtkHSV is GtkWidget
"""
#GtkHSV is the “color wheel” part of a complete color selector widget.
It allows to select a color by determining its HSV components in an
intuitive way. Moving the selection around the outer ring changes the hue,
and moving the selection point inside the inner triangle changes value and
saturation.

#GtkHSV has been deprecated together with #GtkColorSelection, where
it was used.
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
    widget = @gtk_hsv_new[GObjectREF]() //


/* get_color unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "h", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "s", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "v", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_metrics unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "size", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "ring_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun is_adjusting(): Bool =>
"""
An HSV color selector can be said to be adjusting if multiple rapid
changes are being made to its value, for example, when the user is
adjusting the value with the mouse. This function queries whether
the HSV color selector is being adjusted or not.
"""
  @gtk_hsv_is_adjusting[Bool](widget)

/* set_color unavailable due to typing issues
 {:doh, %{argctype: "double", argname: "h", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "s", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "v", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_metrics(size_pony: I32, ring_width_pony: I32): None =>
"""
Sets the size and ring width of an HSV color selector.
"""
  @gtk_hsv_set_metrics[None](widget, size_pony, ring_width_pony)


```````