```````pony-full-source
/*
   needs: ["U32", "I32", "None", "Pointer[U8 val] ref", "String", "GObjectREF"]
provides: ["GtkEntryBuffer val"]
*/
use "../gobject"
class val GtkEntryBuffer is GtkWidget
"""
The #GtkEntryBuffer class contains the actual text displayed in a
#GtkEntry widget.

A single #GtkEntryBuffer object can be shared by multiple #GtkEntry
widgets which will then share the same text content, but not the cursor
position, visibility attributes, icon etc.

#GtkEntryBuffer may be derived from. Such a derived class might allow
text to be stored in an alternate location, such as non-pageable memory,
useful in the case of important passwords. Or a derived class could
integrate with an application’s concept of undo/redo.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(initial_chars_pony: String, n_initial_chars_pony: I32) =>
    widget = @gtk_entry_buffer_new[GObjectREF](initial_chars_pony.cstring(), n_initial_chars_pony) //


fun delete_text(position_pony: U32, n_chars_pony: I32): U32 =>
"""
Deletes a sequence of characters from the buffer. @n_chars characters are
deleted starting at @position. If @n_chars is negative, then all characters
until the end of the text are deleted.

If @position or @n_chars are out of bounds, then they are coerced to sane
values.

Note that the positions are specified in characters, not bytes.
"""
  @gtk_entry_buffer_delete_text[U32](widget, position_pony, n_chars_pony)

fun emit_deleted_text(position_pony: U32, n_chars_pony: U32): None =>
"""
Used when subclassing #GtkEntryBuffer
"""
  @gtk_entry_buffer_emit_deleted_text[None](widget, position_pony, n_chars_pony)

/* emit_inserted_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "chars", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* get_bytes unavailable due to return typing issues
{:argctype, "gsize"}
{:argname, "rv"}
{:argtype, "gsize"}
{:paramtype, :param}
{:txo, "none"} */

fun get_length(): U32 =>
"""
Retrieves the length in characters of the buffer.
"""
  @gtk_entry_buffer_get_length[U32](widget)

fun get_max_length(): I32 =>
"""
Retrieves the maximum allowed length of the text in
@buffer. See gtk_entry_buffer_set_max_length().
"""
  @gtk_entry_buffer_get_max_length[I32](widget)

fun get_text(): String =>
"""
Retrieves the contents of the buffer.

The memory pointer returned by this call will not change
unless this object emits a signal, or is finalized.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_buffer_get_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* insert_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "chars", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_max_length(max_length_pony: I32): None =>
"""
Sets the maximum allowed length of the contents of the buffer. If
the current contents are longer than the given length, then they
will be truncated to fit.
"""
  @gtk_entry_buffer_set_max_length[None](widget, max_length_pony)

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "chars", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````