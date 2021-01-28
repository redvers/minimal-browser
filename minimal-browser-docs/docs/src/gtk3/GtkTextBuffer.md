```````pony-full-source
/*
   needs: ["None", "Bool", "I32", "GObjectREF", "GtkTextTagTable val"]
provides: ["GtkTextBuffer val"]
*/
use "../gobject"
class val GtkTextBuffer is GtkWidget
"""
You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and data
types related to the text widget and how they work together.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(table_pony: GtkTextTagTable val) =>
    widget = @gtk_text_buffer_new[GObjectREF](table_pony.gtkwidget()) //


/* add_mark unavailable due to typing issues
 {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "where", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* add_selection_clipboard unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
*/

/* apply_tag unavailable due to typing issues
 {:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* apply_tag_by_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* backspace unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

fun begin_user_action(): None =>
"""
Called to indicate that the buffer operations between here and a
call to gtk_text_buffer_end_user_action() are part of a single
user-visible operation. The operations between
gtk_text_buffer_begin_user_action() and
gtk_text_buffer_end_user_action() can then be grouped when creating
an undo stack. #GtkTextBuffer maintains a count of calls to
gtk_text_buffer_begin_user_action() that have not been closed with
a call to gtk_text_buffer_end_user_action(), and emits the
“begin-user-action” and “end-user-action” signals only for the
outermost pair of calls. This allows you to build user actions
from other user actions.

The “interactive” buffer mutation functions, such as
gtk_text_buffer_insert_interactive(), automatically call begin/end
user action around the buffer operations they perform, so there's
no need to add extra calls if you user action consists solely of a
single call to one of those functions.
"""
  @gtk_text_buffer_begin_user_action[None](widget)

/* copy_clipboard unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
*/

/* create_child_anchor unavailable due to return typing issues
{:argctype, "GtkTextChildAnchor*"}
{:argname, "rv"}
{:argtype, "TextChildAnchor"}
{:paramtype, :param}
{:txo, "none"} */

/* create_mark unavailable due to return typing issues
{:argctype, "GtkTextMark*"}
{:argname, "rv"}
{:argtype, "TextMark"}
{:paramtype, :param}
{:txo, "none"} */

/* create_tag unavailable due to return typing issues
{:argctype, "GtkTextTag*"}
{:argname, "rv"}
{:argtype, "TextTag"}
{:paramtype, :param}
{:txo, "none"} */

/* cut_clipboard unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
*/

/* delete unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* delete_interactive unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "start_iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "end_iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* delete_mark unavailable due to typing issues
 {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/

/* delete_mark_by_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun delete_selection(interactive_pony: Bool, default_editable_pony: Bool): Bool =>
"""
Deletes the range between the “insert” and “selection_bound” marks,
that is, the currently-selected text. If @interactive is %TRUE,
the editability of the selection will be considered (users can’t delete
uneditable text).
"""
  @gtk_text_buffer_delete_selection[Bool](widget, interactive_pony, default_editable_pony)

/* deserialize unavailable due to typing issues
 {:doh, %{argctype: "GtkTextBuffer*", argname: "content_buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "data", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gsize", argname: "length", argtype: "gsize", paramtype: :param, txo: "none"}}
*/

/* deserialize_get_can_create_tags unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/

/* deserialize_set_can_create_tags unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/

fun end_user_action(): None =>
"""
Should be paired with a call to gtk_text_buffer_begin_user_action().
See that function for a full explanation.
"""
  @gtk_text_buffer_end_user_action[None](widget)

/* get_bounds unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

fun get_char_count(): I32 =>
"""
Gets the number of characters in the buffer; note that characters
and bytes are not the same, you can’t e.g. expect the contents of
the buffer in string form to be this many bytes long. The character
count is cached, so this function is very fast.
"""
  @gtk_text_buffer_get_char_count[I32](widget)

/* get_copy_target_list unavailable due to return typing issues
{:argctype, "GtkTargetList*"}
{:argname, "rv"}
{:argtype, "TargetList"}
{:paramtype, :param}
{:txo, "none"} */

/* get_deserialize_formats unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "container"} */

/* get_end_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

fun get_has_selection(): Bool =>
"""
Indicates whether the buffer has some text currently selected.
"""
  @gtk_text_buffer_get_has_selection[Bool](widget)

/* get_insert unavailable due to return typing issues
{:argctype, "GtkTextMark*"}
{:argname, "rv"}
{:argtype, "TextMark"}
{:paramtype, :param}
{:txo, "none"} */

/* get_iter_at_child_anchor unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextChildAnchor*", argname: "anchor", argtype: "TextChildAnchor", paramtype: :param, txo: "none"}}
*/

/* get_iter_at_line unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* get_iter_at_line_index unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* get_iter_at_line_offset unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* get_iter_at_mark unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/

/* get_iter_at_offset unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

fun get_line_count(): I32 =>
"""
Obtains the number of lines in the buffer. This value is cached, so
the function is very fast.
"""
  @gtk_text_buffer_get_line_count[I32](widget)

/* get_mark unavailable due to return typing issues
{:argctype, "GtkTextMark*"}
{:argname, "rv"}
{:argtype, "TextMark"}
{:paramtype, :param}
{:txo, "none"} */

fun get_modified(): Bool =>
"""
Indicates whether the buffer has been modified since the last call
to gtk_text_buffer_set_modified() set the modification flag to
%FALSE. Used for example to enable a “save” function in a text
editor.
"""
  @gtk_text_buffer_get_modified[Bool](widget)

/* get_paste_target_list unavailable due to return typing issues
{:argctype, "GtkTargetList*"}
{:argname, "rv"}
{:argtype, "TargetList"}
{:paramtype, :param}
{:txo, "none"} */

/* get_selection_bound unavailable due to return typing issues
{:argctype, "GtkTextMark*"}
{:argname, "rv"}
{:argtype, "TextMark"}
{:paramtype, :param}
{:txo, "none"} */

/* get_selection_bounds unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* get_serialize_formats unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "container"} */

/* get_slice unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_start_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* get_tag_table unavailable due to return typing issues
{:argctype, "GtkTextTagTable*"}
{:argname, "rv"}
{:argtype, "TextTagTable"}
{:paramtype, :param}
{:txo, "none"} */

/* get_text unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* insert unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_at_cursor unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_child_anchor unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextChildAnchor*", argname: "anchor", argtype: "TextChildAnchor", paramtype: :param, txo: "none"}}
*/

/* insert_interactive unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_interactive_at_cursor unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_markup unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_pixbuf unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* insert_range unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* insert_range_interactive unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* insert_with_tags unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextTag*", argname: "first_tag", argtype: "TextTag", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* insert_with_tags_by_name unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_tag_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* move_mark unavailable due to typing issues
 {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "where", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* move_mark_by_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "where", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* paste_clipboard unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "override_location", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* place_cursor unavailable due to typing issues
 {:doh, %{argctype: "const GtkTextIter*", argname: "where", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* register_deserialize_format unavailable due to return typing issues
{:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "none"} */

/* register_deserialize_tagset unavailable due to return typing issues
{:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "none"} */

/* register_serialize_format unavailable due to return typing issues
{:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "none"} */

/* register_serialize_tagset unavailable due to return typing issues
{:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "none"} */

/* remove_all_tags unavailable due to typing issues
 {:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* remove_selection_clipboard unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
*/

/* remove_tag unavailable due to typing issues
 {:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* remove_tag_by_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* select_range unavailable due to typing issues
 {:doh, %{argctype: "const GtkTextIter*", argname: "ins", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "bound", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* serialize unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

fun set_modified(setting_pony: Bool): None =>
"""
Used to keep track of whether the buffer has been modified since the
last time it was saved. Whenever the buffer is saved to disk, call
gtk_text_buffer_set_modified (@buffer, FALSE). When the buffer is modified,
it will automatically toggled on the modified bit again. When the modified
bit flips, the buffer emits the #GtkTextBuffer::modified-changed signal.
"""
  @gtk_text_buffer_set_modified[None](widget, setting_pony)

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* unregister_deserialize_format unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/

/* unregister_serialize_format unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/


```````