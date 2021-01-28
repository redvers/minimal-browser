```````pony-full-source
/*
   needs: ["Bool", "I32", "None", "GObjectREF"]
provides: ["GtkRange val"]
*/
use "../gobject"
class val GtkRange is GtkWidget
"""
#GtkRange is the common base class for widgets which visualize an
adjustment, e.g #GtkScale or #GtkScrollbar.

Apart from signals for monitoring the parameters of the adjustment,
#GtkRange provides properties and methods for influencing the sensitivity
of the “steppers”. It also provides properties and methods for setting a
“fill level” on range widgets. See gtk_range_set_fill_level().
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* get_adjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_fill_level unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

fun get_flippable(): Bool =>
"""
Gets the value set by gtk_range_set_flippable().
"""
  @gtk_range_get_flippable[Bool](widget)

fun get_inverted(): Bool =>
"""
Gets the value set by gtk_range_set_inverted().
"""
  @gtk_range_get_inverted[Bool](widget)

/* get_lower_stepper_sensitivity unavailable due to return typing issues
{:argctype, "GtkSensitivityType"}
{:argname, "rv"}
{:argtype, "SensitivityType"}
{:paramtype, :param}
{:txo, "none"} */

fun get_min_slider_size(): I32 =>
"""
This function is useful mainly for #GtkRange subclasses.

See gtk_range_set_min_slider_size().
"""
  @gtk_range_get_min_slider_size[I32](widget)

/* get_range_rect unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "range_rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

fun get_restrict_to_fill_level(): Bool =>
"""
Gets whether the range is restricted to the fill level.
"""
  @gtk_range_get_restrict_to_fill_level[Bool](widget)

fun get_round_digits(): I32 =>
"""
Gets the number of digits to round the value to when
it changes. See #GtkRange::change-value.
"""
  @gtk_range_get_round_digits[I32](widget)

fun get_show_fill_level(): Bool =>
"""
Gets whether the range displays the fill level graphically.
"""
  @gtk_range_get_show_fill_level[Bool](widget)

/* get_slider_range unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "slider_start", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "slider_end", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_slider_size_fixed(): Bool =>
"""
This function is useful mainly for #GtkRange subclasses.

See gtk_range_set_slider_size_fixed().
"""
  @gtk_range_get_slider_size_fixed[Bool](widget)

/* get_upper_stepper_sensitivity unavailable due to return typing issues
{:argctype, "GtkSensitivityType"}
{:argname, "rv"}
{:argtype, "SensitivityType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* set_adjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

/* set_fill_level unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fill_level", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_flippable(flippable_pony: Bool): None =>
"""
If a range is flippable, it will switch its direction if it is
horizontal and its direction is %GTK_TEXT_DIR_RTL.

See gtk_widget_get_direction().
"""
  @gtk_range_set_flippable[None](widget, flippable_pony)

/* set_increments unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "step", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_inverted(setting_pony: Bool): None =>
"""
Ranges normally move from lower to higher values as the
slider moves from top to bottom or left to right. Inverted
ranges have higher values at the top or on the right rather than
on the bottom or left.
"""
  @gtk_range_set_inverted[None](widget, setting_pony)

/* set_lower_stepper_sensitivity unavailable due to typing issues
 {:doh, %{argctype: "GtkSensitivityType", argname: "sensitivity", argtype: "SensitivityType", paramtype: :param, txo: "none"}}
*/

fun set_min_slider_size(min_size_pony: I32): None =>
"""
Sets the minimum size of the range’s slider.

This function is useful mainly for #GtkRange subclasses.
"""
  @gtk_range_set_min_slider_size[None](widget, min_size_pony)

/* set_range unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "min", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "max", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_restrict_to_fill_level(restrict_to_fill_level_pony: Bool): None =>
"""
Sets whether the slider is restricted to the fill level. See
gtk_range_set_fill_level() for a general description of the fill
level concept.
"""
  @gtk_range_set_restrict_to_fill_level[None](widget, restrict_to_fill_level_pony)

fun set_round_digits(round_digits_pony: I32): None =>
"""
Sets the number of digits to round the value to when
it changes. See #GtkRange::change-value.
"""
  @gtk_range_set_round_digits[None](widget, round_digits_pony)

fun set_show_fill_level(show_fill_level_pony: Bool): None =>
"""
Sets whether a graphical fill level is show on the trough. See
gtk_range_set_fill_level() for a general description of the fill
level concept.
"""
  @gtk_range_set_show_fill_level[None](widget, show_fill_level_pony)

fun set_slider_size_fixed(size_fixed_pony: Bool): None =>
"""
Sets whether the range’s slider has a fixed size, or a size that
depends on its adjustment’s page size.

This function is useful mainly for #GtkRange subclasses.
"""
  @gtk_range_set_slider_size_fixed[None](widget, size_fixed_pony)

/* set_upper_stepper_sensitivity unavailable due to typing issues
 {:doh, %{argctype: "GtkSensitivityType", argname: "sensitivity", argtype: "SensitivityType", paramtype: :param, txo: "none"}}
*/

/* set_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```````