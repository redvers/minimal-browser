```````pony-full-source
/*
   needs: ["None", "GObjectREF", "F64"]
provides: ["GtkAdjustment val"]
*/
use "../gobject"
class val GtkAdjustment is GtkWidget
"""
The #GtkAdjustment object represents a value which has an associated lower
and upper bound, together with step and page increments, and a page size.
It is used within several GTK+ widgets, including #GtkSpinButton, #GtkViewport,
and #GtkRange (which is a base class for #GtkScrollbar and #GtkScale).

The #GtkAdjustment object does not update the value itself. Instead
it is left up to the owner of the #GtkAdjustment to control the value.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(value_pony: F64, lower_pony: F64, upper_pony: F64, step_increment_pony: F64, page_increment_pony: F64, page_size_pony: F64) =>
    widget = @gtk_adjustment_new[GObjectREF](value_pony, lower_pony, upper_pony, step_increment_pony, page_increment_pony, page_size_pony) //


fun changed(): None =>
"""
Emits a #GtkAdjustment::changed signal from the #GtkAdjustment.
This is typically called by the owner of the #GtkAdjustment after it has
changed any of the #GtkAdjustment properties other than the value.
"""
  @gtk_adjustment_changed[None](widget)

/* clamp_page unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* configure unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "step_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page_size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* get_lower unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_minimum_increment unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_increment unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_size unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_step_increment unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_upper unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* set_lower unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_page_increment unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "page_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_page_size unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "page_size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_step_increment unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "step_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_upper unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun value_changed(): None =>
"""
Emits a #GtkAdjustment::value-changed signal from the #GtkAdjustment.
This is typically called by the owner of the #GtkAdjustment after it has
changed the #GtkAdjustment:value property.
"""
  @gtk_adjustment_value_changed[None](widget)


```````