```````pony-full-source
/*
   needs: ["Bool", "Pointer[U8 val] ref", "String", "None", "GObjectREF"]
provides: ["GtkProgressBar val"]
*/
use "../gobject"
class val GtkProgressBar is GtkWidget
"""
The #GtkProgressBar is typically used to display the progress of a long
running operation. It provides a visual clue that processing is underway.
The GtkProgressBar can be used in two different modes: percentage mode
and activity mode.

When an application can determine how much work needs to take place
(e.g. read a fixed number of bytes from a file) and can monitor its
progress, it can use the GtkProgressBar in percentage mode and the
user sees a growing bar indicating the percentage of the work that
has been completed. In this mode, the application is required to call
gtk_progress_bar_set_fraction() periodically to update the progress bar.

When an application has no accurate way of knowing the amount of work
to do, it can use the #GtkProgressBar in activity mode, which shows
activity by a block moving back and forth within the progress area. In
this mode, the application is required to call gtk_progress_bar_pulse()
periodically to update the progress bar.

There is quite a bit of flexibility provided to control the appearance
of the #GtkProgressBar. Functions are provided to control the orientation
of the bar, optional text can be displayed along with the bar, and the
step size used in activity mode can be set.

# CSS nodes

|[<!-- language="plain" -->
progressbar[.osd]
├── [text]
╰── trough[.empty][.full]
    ╰── progress[.pulse]
]|

GtkProgressBar has a main CSS node with name progressbar and subnodes with
names text and trough, of which the latter has a subnode named progress. The
text subnode is only present if text is shown. The progress subnode has the
style class .pulse when in activity mode. It gets the style classes .left,
.right, .top or .bottom added when the progress 'touches' the corresponding
end of the GtkProgressBar. The .osd class on the progressbar node is for use
in overlays like the one Epiphany has for page loading progress.
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
    widget = @gtk_progress_bar_new[GObjectREF]() //


/* get_ellipsize unavailable due to return typing issues
{:argctype, "PangoEllipsizeMode"}
{:argname, "rv"}
{:argtype, "Pango.EllipsizeMode"}
{:paramtype, :param}
{:txo, "none"} */

/* get_fraction unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

fun get_inverted(): Bool =>
"""
Gets the value set by gtk_progress_bar_set_inverted().
"""
  @gtk_progress_bar_get_inverted[Bool](widget)

/* get_pulse_step unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

fun get_show_text(): Bool =>
"""
Gets the value of the #GtkProgressBar:show-text property.
See gtk_progress_bar_set_show_text().
"""
  @gtk_progress_bar_get_show_text[Bool](widget)

fun get_text(): String =>
"""
Retrieves the text that is displayed with the progress bar,
if any, otherwise %NULL. The return value is a reference
to the text, not a copy of it, so will become invalid
if you change the text in the progress bar.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_progress_bar_get_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun pulse(): None =>
"""
Indicates that some progress has been made, but you don’t know how much.
Causes the progress bar to enter “activity mode,” where a block
bounces back and forth. Each call to gtk_progress_bar_pulse()
causes the block to move by a little bit (the amount of movement
per pulse is determined by gtk_progress_bar_set_pulse_step()).
"""
  @gtk_progress_bar_pulse[None](widget)

/* set_ellipsize unavailable due to typing issues
 {:doh, %{argctype: "PangoEllipsizeMode", argname: "mode", argtype: "Pango.EllipsizeMode", paramtype: :param, txo: "none"}}
*/

/* set_fraction unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_inverted(inverted_pony: Bool): None =>
"""
Progress bars normally grow from top to bottom or left to right.
Inverted progress bars grow in the opposite direction.
"""
  @gtk_progress_bar_set_inverted[None](widget, inverted_pony)

/* set_pulse_step unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_show_text(show_text_pony: Bool): None =>
"""
Sets whether the progress bar will show text next to the bar.
The shown text is either the value of the #GtkProgressBar:text
property or, if that is %NULL, the #GtkProgressBar:fraction value,
as a percentage.

To make a progress bar that is styled and sized suitably for containing
text (even if the actual text is blank), set #GtkProgressBar:show-text to
%TRUE and #GtkProgressBar:text to the empty string (not %NULL).
"""
  @gtk_progress_bar_set_show_text[None](widget, show_text_pony)

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````