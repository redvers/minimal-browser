```````pony-full-source
/*
   needs: ["Bool", "Pointer[U8 val] ref", "String", "None", "GObjectREF"]
provides: ["GtkTextMark val"]
*/
use "../gobject"
class val GtkTextMark is GtkWidget
"""
You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and data
types related to the text widget and how they work together.

A #GtkTextMark is like a bookmark in a text buffer; it preserves a position in
the text. You can convert the mark to an iterator using
gtk_text_buffer_get_iter_at_mark(). Unlike iterators, marks remain valid across
buffer mutations, because their behavior is defined when text is inserted or
deleted. When text containing a mark is deleted, the mark remains in the
position originally occupied by the deleted text. When text is inserted at a
mark, a mark with “left gravity” will be moved to the
beginning of the newly-inserted text, and a mark with “right
gravity” will be moved to the end.

Note that “left” and “right” here refer to logical direction (left
is the toward the start of the buffer); in some languages such as
Hebrew the logically-leftmost text is not actually on the left when
displayed.

Marks are reference counted, but the reference count only controls the validity
of the memory; marks can be deleted from the buffer at any time with
gtk_text_buffer_delete_mark(). Once deleted from the buffer, a mark is
essentially useless.

Marks optionally have names; these can be convenient to avoid passing the
#GtkTextMark object around.

Marks are typically created using the gtk_text_buffer_create_mark() function.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(name_pony: String, left_gravity_pony: Bool) =>
    widget = @gtk_text_mark_new[GObjectREF](name_pony.cstring(), left_gravity_pony) //


/* get_buffer unavailable due to return typing issues
{:argctype, "GtkTextBuffer*"}
{:argname, "rv"}
{:argtype, "TextBuffer"}
{:paramtype, :param}
{:txo, "none"} */

fun get_deleted(): Bool =>
"""
Returns %TRUE if the mark has been removed from its buffer
with gtk_text_buffer_delete_mark(). See gtk_text_buffer_add_mark()
for a way to add it to a buffer again.
"""
  @gtk_text_mark_get_deleted[Bool](widget)

fun get_left_gravity(): Bool =>
"""
Determines whether the mark has left gravity.
"""
  @gtk_text_mark_get_left_gravity[Bool](widget)

fun get_name(): String =>
"""
Returns the mark name; returns NULL for anonymous marks.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_text_mark_get_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_visible(): Bool =>
"""
Returns %TRUE if the mark is visible (i.e. a cursor is displayed
for it).
"""
  @gtk_text_mark_get_visible[Bool](widget)

fun set_visible(setting_pony: Bool): None =>
"""
Sets the visibility of @mark; the insertion point is normally
visible, i.e. you can see it as a vertical bar. Also, the text
widget uses a visible mark to indicate where a drop will occur when
dragging-and-dropping text. Most other marks are not visible.
Marks are not visible by default.
"""
  @gtk_text_mark_set_visible[None](widget, setting_pony)


```````