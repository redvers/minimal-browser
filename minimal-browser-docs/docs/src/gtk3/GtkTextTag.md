```````pony-full-source
/*
   needs: ["None", "Bool", "I32", "GObjectREF", "String"]
provides: ["GtkTextTag val"]
*/
use "../gobject"
class val GtkTextTag is GtkWidget
"""
You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and
data types related to the text widget and how they work together.

Tags should be in the #GtkTextTagTable for a given #GtkTextBuffer
before using them with that buffer.

gtk_text_buffer_create_tag() is the best way to create tags.
See “gtk3-demo” for numerous examples.

For each property of #GtkTextTag, there is a “set” property, e.g.
“font-set” corresponds to “font”. These “set” properties reflect
whether a property has been set or not.
They are maintained by GTK+ and you should not set them independently.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(name_pony: String) =>
    widget = @gtk_text_tag_new[GObjectREF](name_pony.cstring()) //


fun changed(size_changed_pony: Bool): None =>
"""
Emits the #GtkTextTagTable::tag-changed signal on the #GtkTextTagTable where
the tag is included.

The signal is already emitted when setting a #GtkTextTag property. This
function is useful for a #GtkTextTag subclass.
"""
  @gtk_text_tag_changed[None](widget, size_changed_pony)

/* event unavailable due to typing issues
 {:doh, %{argctype: "GObject*", argname: "event_object", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

fun get_priority(): I32 =>
"""
Get the tag priority.
"""
  @gtk_text_tag_get_priority[I32](widget)

fun set_priority(priority_pony: I32): None =>
"""
Sets the priority of a #GtkTextTag. Valid priorities
start at 0 and go to one less than gtk_text_tag_table_get_size().
Each tag in a table has a unique priority; setting the priority
of one tag shifts the priorities of all the other tags in the
table to maintain a unique priority for each tag. Higher priority
tags “win” if two tags both set the same text attribute. When adding
a tag to a tag table, it will be assigned the highest priority in
the table by default; so normally the precedence of a set of tags
is the order in which they were added to the table, or created with
gtk_text_buffer_create_tag(), which adds the tag to the buffer’s table
automatically.
"""
  @gtk_text_tag_set_priority[None](widget, priority_pony)


```````