```````pony-full-source
/*
   needs: ["None", "Bool", "GObjectREF"]
provides: ["GtkClipboard val"]
*/
use "../gobject"
class val GtkClipboard is GtkWidget
"""
The #GtkClipboard object represents a clipboard of data shared
between different processes or between different widgets in
the same process. Each clipboard is identified by a name encoded as a
#GdkAtom. (Conversion to and from strings can be done with
gdk_atom_intern() and gdk_atom_name().) The default clipboard
corresponds to the “CLIPBOARD” atom; another commonly used clipboard
is the “PRIMARY” clipboard, which, in X, traditionally contains
the currently selected text.

To support having a number of different formats on the clipboard
at the same time, the clipboard mechanism allows providing
callbacks instead of the actual data.  When you set the contents
of the clipboard, you can either supply the data directly (via
functions like gtk_clipboard_set_text()), or you can supply a
callback to be called at a later time when the data is needed (via
gtk_clipboard_set_with_data() or gtk_clipboard_set_with_owner().)
Providing a callback also avoids having to make copies of the data
when it is not needed.

gtk_clipboard_set_with_data() and gtk_clipboard_set_with_owner()
are quite similar; the choice between the two depends mostly on
which is more convenient in a particular situation.
The former is most useful when you want to have a blob of data
with callbacks to convert it into the various data types that you
advertise. When the @clear_func you provided is called, you
simply free the data blob. The latter is more useful when the
contents of clipboard reflect the internal state of a #GObject
(As an example, for the PRIMARY clipboard, when an entry widget
provides the clipboard’s contents the contents are simply the
text within the selected region.) If the contents change, the
entry widget can call gtk_clipboard_set_with_owner() to update
the timestamp for clipboard ownership, without having to worry
about @clear_func being called.

Requesting the data from the clipboard is essentially
asynchronous. If the contents of the clipboard are provided within
the same process, then a direct function call will be made to
retrieve the data, but if they are provided by another process,
then the data needs to be retrieved from the other process, which
may take some time. To avoid blocking the user interface, the call
to request the selection, gtk_clipboard_request_contents() takes a
callback that will be called when the contents are received (or
when the request fails.) If you don’t want to deal with providing
a separate callback, you can also use gtk_clipboard_wait_for_contents().
What this does is run the GLib main loop recursively waiting for
the contents. This can simplify the code flow, but you still have
to be aware that other callbacks in your program can be called
while this recursive mainloop is running.

Along with the functions to get the clipboard contents as an
arbitrary data chunk, there are also functions to retrieve
it as text, gtk_clipboard_request_text() and
gtk_clipboard_wait_for_text(). These functions take care of
determining which formats are advertised by the clipboard
provider, asking for the clipboard in the best available format
and converting the results into the UTF-8 encoding. (The standard
form for representing strings in GTK+.)
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




fun clear(): None =>
"""
Clears the contents of the clipboard. Generally this should only
be called between the time you call gtk_clipboard_set_with_owner()
or gtk_clipboard_set_with_data(),
and when the @clear_func you supplied is called. Otherwise, the
clipboard may be owned by someone else.
"""
  @gtk_clipboard_clear[None](widget)

/* get_display unavailable due to return typing issues
{:argctype, "GdkDisplay*"}
{:argname, "rv"}
{:argtype, "Gdk.Display"}
{:paramtype, :param}
{:txo, "none"} */

/* get_owner unavailable due to return typing issues
{:argctype, "GObject*"}
{:argname, "rv"}
{:argtype, "GObject.Object"}
{:paramtype, :param}
{:txo, "none"} */

/* get_selection unavailable due to return typing issues
{:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "notpresent"} */

/* request_contents unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "target", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardReceivedFunc", argname: "callback", argtype: "ClipboardReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_image unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboardImageReceivedFunc", argname: "callback", argtype: "ClipboardImageReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_rich_text unavailable due to typing issues
 {:doh, %{argctype: "GtkTextBuffer*", argname: "buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardRichTextReceivedFunc", argname: "callback", argtype: "ClipboardRichTextReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_targets unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboardTargetsReceivedFunc", argname: "callback", argtype: "ClipboardTargetsReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_text unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboardTextReceivedFunc", argname: "callback", argtype: "ClipboardTextReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_uris unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboardURIReceivedFunc", argname: "callback", argtype: "ClipboardURIReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* set_can_store unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/

/* set_image unavailable due to typing issues
 {:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_with_data unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardGetFunc", argname: "get_func", argtype: "ClipboardGetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardClearFunc", argname: "clear_func", argtype: "ClipboardClearFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* set_with_owner unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardGetFunc", argname: "get_func", argtype: "ClipboardGetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardClearFunc", argname: "clear_func", argtype: "ClipboardClearFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GObject*", argname: "owner", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
*/

fun store(): None =>
"""
Stores the current clipboard data somewhere so that it will stay
around after the application has quit.
"""
  @gtk_clipboard_store[None](widget)

/* wait_for_contents unavailable due to return typing issues
{:argctype, "GtkSelectionData*"}
{:argname, "rv"}
{:argtype, "SelectionData"}
{:paramtype, :param}
{:txo, "full"} */

/* wait_for_image unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* wait_for_rich_text unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

/* wait_for_targets unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "container"}}
{:doh, %{argctype: "gint*", argname: "n_targets", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* wait_for_text unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* wait_for_uris unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

fun wait_is_image_available(): Bool =>
"""
Test to see if there is an image available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains any of the supported image targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.

This function is a little faster than calling
gtk_clipboard_wait_for_image() since it doesn’t need to retrieve
the actual image data.
"""
  @gtk_clipboard_wait_is_image_available[Bool](widget)

/* wait_is_rich_text_available unavailable due to typing issues
 {:doh, %{argctype: "GtkTextBuffer*", argname: "buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
*/

/* wait_is_target_available unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "target", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/

fun wait_is_text_available(): Bool =>
"""
Test to see if there is text available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains any of the supported text targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.

This function is a little faster than calling
gtk_clipboard_wait_for_text() since it doesn’t need to retrieve
the actual text.
"""
  @gtk_clipboard_wait_is_text_available[Bool](widget)

fun wait_is_uris_available(): Bool =>
"""
Test to see if there is a list of URIs available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains the URI targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.

This function is a little faster than calling
gtk_clipboard_wait_for_uris() since it doesn’t need to retrieve
the actual URI data.
"""
  @gtk_clipboard_wait_is_uris_available[Bool](widget)


```````