```````pony-full-source
/*
   needs: ["Bool", "I32", "Pointer[U8 val] ref", "String", "None", "GObjectREF", "GtkEntryBuffer val"]
provides: ["GtkEntry val"]
*/
use "../gobject"
class val GtkEntry is GtkWidget
"""
The #GtkEntry widget is a single line text entry
widget. A fairly large set of key bindings are supported
by default. If the entered text is longer than the allocation
of the widget, the widget will scroll so that the cursor
position is visible.

When using an entry for passwords and other sensitive information,
it can be put into “password mode” using gtk_entry_set_visibility().
In this mode, entered text is displayed using a “invisible” character.
By default, GTK+ picks the best invisible character that is available
in the current font, but it can be changed with
gtk_entry_set_invisible_char(). Since 2.16, GTK+ displays a warning
when Caps Lock or input methods might interfere with entering text in
a password entry. The warning can be turned off with the
#GtkEntry:caps-lock-warning property.

Since 2.16, GtkEntry has the ability to display progress or activity
information behind the text. To make an entry display such information,
use gtk_entry_set_progress_fraction() or gtk_entry_set_progress_pulse_step().

Additionally, GtkEntry can show icons at either side of the entry. These
icons can be activatable by clicking, can be set up as drag source and
can have tooltips. To add an icon, use gtk_entry_set_icon_from_gicon() or
one of the various other functions that set an icon from a stock id, an
icon name or a pixbuf. To trigger an action when the user clicks an icon,
connect to the #GtkEntry::icon-press signal. To allow DND operations
from an icon, use gtk_entry_set_icon_drag_source(). To set a tooltip on
an icon, use gtk_entry_set_icon_tooltip_text() or the corresponding function
for markup.

Note that functionality or information that is only available by clicking
on an icon in an entry may not be accessible at all to users which are not
able to use a mouse or other pointing device. It is therefore recommended
that any such functionality should also be available by other means, e.g.
via the context menu of the entry.

# CSS nodes

|[<!-- language="plain" -->
entry[.read-only][.flat][.warning][.error]
├── image.left
├── image.right
├── undershoot.left
├── undershoot.right
├── [selection]
├── [progress[.pulse]]
╰── [window.popup]
]|

GtkEntry has a main node with the name entry. Depending on the properties
of the entry, the style classes .read-only and .flat may appear. The style
classes .warning and .error may also be used with entries.

When the entry shows icons, it adds subnodes with the name image and the
style class .left or .right, depending on where the icon appears.

When the entry has a selection, it adds a subnode with the name selection.

When the entry shows progress, it adds a subnode with the name progress.
The node has the style class .pulse when the shown progress is pulsing.

The CSS node for a context menu is added as a subnode below entry as well.

The undershoot nodes are used to draw the underflow indication when content
is scrolled out of view. These nodes get the .left and .right style classes
added depending on where the indication is drawn.

When touch is used and touch selection handles are shown, they are using
CSS nodes with name cursor-handle. They get the .top or .bottom style class
depending on where they are shown in relation to the selection. If there is
just a single handle for the text cursor, it gets the style class
.insertion-cursor.
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
    widget = @gtk_entry_new[GObjectREF]() //

  new val new_with_buffer(buffer_pony: GtkEntryBuffer val) =>
    widget = @gtk_entry_new_with_buffer[GObjectREF](buffer_pony.gtkwidget()) //


fun get_activates_default(): Bool =>
"""
Retrieves the value set by gtk_entry_set_activates_default().
"""
  @gtk_entry_get_activates_default[Bool](widget)

/* get_alignment unavailable due to return typing issues
{:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"} */

/* get_attributes unavailable due to return typing issues
{:argctype, "PangoAttrList*"}
{:argname, "rv"}
{:argtype, "Pango.AttrList"}
{:paramtype, :param}
{:txo, "none"} */

/* get_buffer unavailable due to return typing issues
{:argctype, "GtkEntryBuffer*"}
{:argname, "rv"}
{:argtype, "EntryBuffer"}
{:paramtype, :param}
{:txo, "none"} */

/* get_completion unavailable due to return typing issues
{:argctype, "GtkEntryCompletion*"}
{:argname, "rv"}
{:argtype, "EntryCompletion"}
{:paramtype, :param}
{:txo, "none"} */

fun get_current_icon_drag_source(): I32 =>
"""
Returns the index of the icon which is the source of the current
DND operation, or -1.

This function is meant to be used in a #GtkWidget::drag-data-get
callback.
"""
  @gtk_entry_get_current_icon_drag_source[I32](widget)

/* get_cursor_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

fun get_has_frame(): Bool =>
"""
Gets the value set by gtk_entry_set_has_frame().
"""
  @gtk_entry_get_has_frame[Bool](widget)

/* get_icon_activatable unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* get_icon_area unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "icon_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

fun get_icon_at_pos(x_pony: I32, y_pony: I32): I32 =>
"""
Finds the icon at the given position and return its index. The
position’s coordinates are relative to the @entry’s top left corner.
If @x, @y doesn’t lie inside an icon, -1 is returned.
This function is intended for use in a #GtkWidget::query-tooltip
signal handler.
"""
  @gtk_entry_get_icon_at_pos[I32](widget, x_pony, y_pony)

/* get_icon_gicon unavailable due to return typing issues
{:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_name unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* get_icon_pixbuf unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_sensitive unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* get_icon_stock unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* get_icon_storage_type unavailable due to return typing issues
{:argctype, "GtkImageType"}
{:argname, "rv"}
{:argtype, "ImageType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_tooltip_markup unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_icon_tooltip_text unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_inner_border unavailable due to return typing issues
{:argctype, "const GtkBorder*"}
{:argname, "rv"}
{:argtype, "Border"}
{:paramtype, :param}
{:txo, "none"} */

/* get_input_hints unavailable due to return typing issues
{:argctype, "GtkInputHints"}
{:argname, "rv"}
{:argtype, "InputHints"}
{:paramtype, :param}
{:txo, "none"} */

/* get_input_purpose unavailable due to return typing issues
{:argctype, "GtkInputPurpose"}
{:argname, "rv"}
{:argtype, "InputPurpose"}
{:paramtype, :param}
{:txo, "none"} */

/* get_invisible_char unavailable due to return typing issues
{:argctype, "gunichar"}
{:argname, "rv"}
{:argtype, "gunichar"}
{:paramtype, :param}
{:txo, "none"} */

/* get_layout unavailable due to return typing issues
{:argctype, "PangoLayout*"}
{:argname, "rv"}
{:argtype, "Pango.Layout"}
{:paramtype, :param}
{:txo, "none"} */

/* get_layout_offsets unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "y", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_max_length(): I32 =>
"""
Retrieves the maximum allowed length of the text in
@entry. See gtk_entry_set_max_length().

This is equivalent to getting @entry's #GtkEntryBuffer and
calling gtk_entry_buffer_get_max_length() on it.
"""
  @gtk_entry_get_max_length[I32](widget)

fun get_max_width_chars(): I32 =>
"""
Retrieves the desired maximum width of @entry, in characters.
See gtk_entry_set_max_width_chars().
"""
  @gtk_entry_get_max_width_chars[I32](widget)

fun get_overwrite_mode(): Bool =>
"""
Gets the value set by gtk_entry_set_overwrite_mode().
"""
  @gtk_entry_get_overwrite_mode[Bool](widget)

fun get_placeholder_text(): String =>
"""
Retrieves the text that will be displayed when @entry is empty and unfocused
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_get_placeholder_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_progress_fraction unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_progress_pulse_step unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_tabs unavailable due to return typing issues
{:argctype, "PangoTabArray*"}
{:argname, "rv"}
{:argtype, "Pango.TabArray"}
{:paramtype, :param}
{:txo, "none"} */

fun get_text(): String =>
"""
Retrieves the contents of the entry widget.
See also gtk_editable_get_chars().

This is equivalent to getting @entry's #GtkEntryBuffer and calling
gtk_entry_buffer_get_text() on it.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_get_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_text_area unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "text_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* get_text_length unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

fun get_visibility(): Bool =>
"""
Retrieves whether the text in @entry is visible. See
gtk_entry_set_visibility().
"""
  @gtk_entry_get_visibility[Bool](widget)

fun get_width_chars(): I32 =>
"""
Gets the value set by gtk_entry_set_width_chars().
"""
  @gtk_entry_get_width_chars[I32](widget)

fun grab_focus_without_selecting(): None =>
"""
Causes @entry to have keyboard focus.

It behaves like gtk_widget_grab_focus(),
except that it doesn't select the contents of the entry.
You only want to call this on some special entries
which the user usually doesn't want to replace all text in,
such as search-as-you-type entries.
"""
  @gtk_entry_grab_focus_without_selecting[None](widget)

/* im_context_filter_keypress unavailable due to typing issues
 {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

fun layout_index_to_text_index(layout_index_pony: I32): I32 =>
"""
Converts from a position in the entry’s #PangoLayout (returned by
gtk_entry_get_layout()) to a position in the entry contents
(returned by gtk_entry_get_text()).
"""
  @gtk_entry_layout_index_to_text_index[I32](widget, layout_index_pony)

fun progress_pulse(): None =>
"""
Indicates that some progress is made, but you don’t know how much.
Causes the entry’s progress indicator to enter “activity mode,”
where a block bounces back and forth. Each call to
gtk_entry_progress_pulse() causes the block to move by a little bit
(the amount of movement per pulse is determined by
gtk_entry_set_progress_pulse_step()).
"""
  @gtk_entry_progress_pulse[None](widget)

fun reset_im_context(): None =>
"""
Reset the input method context of the entry if needed.

This can be necessary in the case where modifying the buffer
would confuse on-going input method behavior.
"""
  @gtk_entry_reset_im_context[None](widget)

fun set_activates_default(setting_pony: Bool): None =>
"""
If @setting is %TRUE, pressing Enter in the @entry will activate the default
widget for the window containing the entry. This usually means that
the dialog box containing the entry will be closed, since the default
widget is usually one of the dialog buttons.

(For experts: if @setting is %TRUE, the entry calls
gtk_window_activate_default() on the window containing the entry, in
the default handler for the #GtkEntry::activate signal.)
"""
  @gtk_entry_set_activates_default[None](widget, setting_pony)

/* set_alignment unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/

/* set_attributes unavailable due to typing issues
 {:doh, %{argctype: "PangoAttrList*", argname: "attrs", argtype: "Pango.AttrList", paramtype: :param, txo: "none"}}
*/

/* set_buffer unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryBuffer*", argname: "buffer", argtype: "EntryBuffer", paramtype: :param, txo: "none"}}
*/

/* set_completion unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryCompletion*", argname: "completion", argtype: "EntryCompletion", paramtype: :param, txo: "none"}}
*/

/* set_cursor_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_has_frame(setting_pony: Bool): None =>
"""
Sets whether the entry has a beveled frame around it.
"""
  @gtk_entry_set_has_frame[None](widget, setting_pony)

/* set_icon_activatable unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* set_icon_drag_source unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTargetList*", argname: "target_list", argtype: "TargetList", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkDragAction", argname: "actions", argtype: "Gdk.DragAction", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_gicon unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_icon_name unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_pixbuf unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_stock unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_icon_sensitive unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* set_icon_tooltip_markup unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_icon_tooltip_text unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_inner_border unavailable due to typing issues
 {:doh, %{argctype: "const GtkBorder*", argname: "border", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* set_input_hints unavailable due to typing issues
 {:doh, %{argctype: "GtkInputHints", argname: "hints", argtype: "InputHints", paramtype: :param, txo: "none"}}
*/

/* set_input_purpose unavailable due to typing issues
 {:doh, %{argctype: "GtkInputPurpose", argname: "purpose", argtype: "InputPurpose", paramtype: :param, txo: "none"}}
*/

/* set_invisible_char unavailable due to typing issues
 {:doh, %{argctype: "gunichar", argname: "ch", argtype: "gunichar", paramtype: :param, txo: "none"}}
*/

fun set_max_length(max_pony: I32): None =>
"""
Sets the maximum allowed length of the contents of the widget. If
the current contents are longer than the given length, then they
will be truncated to fit.

This is equivalent to getting @entry's #GtkEntryBuffer and
calling gtk_entry_buffer_set_max_length() on it.
]|
"""
  @gtk_entry_set_max_length[None](widget, max_pony)

fun set_max_width_chars(n_chars_pony: I32): None =>
"""
Sets the desired maximum width in characters of @entry.
"""
  @gtk_entry_set_max_width_chars[None](widget, n_chars_pony)

fun set_overwrite_mode(overwrite_pony: Bool): None =>
"""
Sets whether the text is overwritten when typing in the #GtkEntry.
"""
  @gtk_entry_set_overwrite_mode[None](widget, overwrite_pony)

/* set_placeholder_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_progress_fraction unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_progress_pulse_step unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_tabs unavailable due to typing issues
 {:doh, %{argctype: "PangoTabArray*", argname: "tabs", argtype: "Pango.TabArray", paramtype: :param, txo: "none"}}
*/

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_visibility(visible_pony: Bool): None =>
"""
Sets whether the contents of the entry are visible or not.
When visibility is set to %FALSE, characters are displayed
as the invisible char, and will also appear that way when
the text in the entry widget is copied elsewhere.

By default, GTK+ picks the best invisible character available
in the current font, but it can be changed with
gtk_entry_set_invisible_char().

Note that you probably want to set #GtkEntry:input-purpose
to %GTK_INPUT_PURPOSE_PASSWORD or %GTK_INPUT_PURPOSE_PIN to
inform input methods about the purpose of this entry,
in addition to setting visibility to %FALSE.
"""
  @gtk_entry_set_visibility[None](widget, visible_pony)

fun set_width_chars(n_chars_pony: I32): None =>
"""
Changes the size request of the entry to be about the right size
for @n_chars characters. Note that it changes the size
request, the size can still be affected by
how you pack the widget into containers. If @n_chars is -1, the
size reverts to the default entry size.
"""
  @gtk_entry_set_width_chars[None](widget, n_chars_pony)

fun text_index_to_layout_index(text_index_pony: I32): I32 =>
"""
Converts from a position in the entry contents (returned
by gtk_entry_get_text()) to a position in the
entry’s #PangoLayout (returned by gtk_entry_get_layout(),
with text retrieved via pango_layout_get_text()).
"""
  @gtk_entry_text_index_to_layout_index[I32](widget, text_index_pony)

fun unset_invisible_char(): None =>
"""
Unsets the invisible char previously set with
gtk_entry_set_invisible_char(). So that the
default invisible char is used again.
"""
  @gtk_entry_unset_invisible_char[None](widget)


```````