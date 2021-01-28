```````pony-full-source
/*
   needs: ["None", "Bool", "U32", "I32", "GObjectREF"]
provides: ["GtkCalendar val"]
*/
use "../gobject"
class val GtkCalendar is GtkWidget
"""
#GtkCalendar is a widget that displays a Gregorian calendar, one month
at a time. It can be created with gtk_calendar_new().

The month and year currently displayed can be altered with
gtk_calendar_select_month(). The exact day can be selected from the
displayed month using gtk_calendar_select_day().

To place a visual marker on a particular day, use gtk_calendar_mark_day()
and to remove the marker, gtk_calendar_unmark_day(). Alternative, all
marks can be cleared with gtk_calendar_clear_marks().

The way in which the calendar itself is displayed can be altered using
gtk_calendar_set_display_options().

The selected date can be retrieved from a #GtkCalendar using
gtk_calendar_get_date().

Users should be aware that, although the Gregorian calendar is the
legal calendar in most countries, it was adopted progressively
between 1582 and 1929. Display before these dates is likely to be
historically incorrect.
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
    widget = @gtk_calendar_new[GObjectREF]() //


fun clear_marks(): None =>
"""
Remove all visual markers.
"""
  @gtk_calendar_clear_marks[None](widget)

/* get_date unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "year", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "month", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "day", argtype: "guint", paramtype: :param, txo: "full"}}
*/

fun get_day_is_marked(day_pony: U32): Bool =>
"""
Returns if the @day of the @calendar is already marked.
"""
  @gtk_calendar_get_day_is_marked[Bool](widget, day_pony)

fun get_detail_height_rows(): I32 =>
"""
Queries the height of detail cells, in rows.
See #GtkCalendar:detail-width-chars.
"""
  @gtk_calendar_get_detail_height_rows[I32](widget)

fun get_detail_width_chars(): I32 =>
"""
Queries the width of detail cells, in characters.
See #GtkCalendar:detail-width-chars.
"""
  @gtk_calendar_get_detail_width_chars[I32](widget)

/* get_display_options unavailable due to return typing issues
{:argctype, "GtkCalendarDisplayOptions"}
{:argname, "rv"}
{:argtype, "CalendarDisplayOptions"}
{:paramtype, :param}
{:txo, "none"} */

fun mark_day(day_pony: U32): None =>
"""
Places a visual marker on a particular day.
"""
  @gtk_calendar_mark_day[None](widget, day_pony)

fun select_day(day_pony: U32): None =>
"""
Selects a day from the current month.
"""
  @gtk_calendar_select_day[None](widget, day_pony)

fun select_month(month_pony: U32, year_pony: U32): None =>
"""
Shifts the calendar to a different month.
"""
  @gtk_calendar_select_month[None](widget, month_pony, year_pony)

/* set_detail_func unavailable due to typing issues
 {:doh, %{argctype: "GtkCalendarDetailFunc", argname: "func", argtype: "CalendarDetailFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_detail_height_rows(rows_pony: I32): None =>
"""
Updates the height of detail cells.
See #GtkCalendar:detail-height-rows.
"""
  @gtk_calendar_set_detail_height_rows[None](widget, rows_pony)

fun set_detail_width_chars(chars_pony: I32): None =>
"""
Updates the width of detail cells.
See #GtkCalendar:detail-width-chars.
"""
  @gtk_calendar_set_detail_width_chars[None](widget, chars_pony)

/* set_display_options unavailable due to typing issues
 {:doh, %{argctype: "GtkCalendarDisplayOptions", argname: "flags", argtype: "CalendarDisplayOptions", paramtype: :param, txo: "none"}}
*/

fun unmark_day(day_pony: U32): None =>
"""
Removes the visual marker from a particular day.
"""
  @gtk_calendar_unmark_day[None](widget, day_pony)


```````