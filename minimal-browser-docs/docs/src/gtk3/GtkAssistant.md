```````pony-full-source
/*
   needs: ["None", "GtkWidget val", "I32", "GObjectREF", "Bool", "Pointer[U8 val] ref", "String"]
provides: ["GtkAssistant val"]
*/
use "../gobject"
class val GtkAssistant is GtkWidget
"""
A #GtkAssistant is a widget used to represent a generally complex
operation splitted in several steps, guiding the user through its
pages and controlling the page flow to collect the necessary data.

The design of GtkAssistant is that it controls what buttons to show
and to make sensitive, based on what it knows about the page sequence
and the [type][GtkAssistantPageType] of each page,
in addition to state information like the page
[completion][gtk-assistant-set-page-complete]
and [committed][gtk-assistant-commit] status.

If you have a case that doesn’t quite fit in #GtkAssistants way of
handling buttons, you can use the #GTK_ASSISTANT_PAGE_CUSTOM page
type and handle buttons yourself.

# GtkAssistant as GtkBuildable

The GtkAssistant implementation of the #GtkBuildable interface
exposes the @action_area as internal children with the name
“action_area”.

To add pages to an assistant in #GtkBuilder, simply add it as a
child to the GtkAssistant object, and set its child properties
as necessary.

# CSS nodes

GtkAssistant has a single CSS node with the name assistant.
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
    widget = @gtk_assistant_new[GObjectREF]() //


fun add_action_widget(child_pony: GtkWidget val): None =>
"""
Adds a widget to the action area of a #GtkAssistant.
"""
  @gtk_assistant_add_action_widget[None](widget, child_pony.gtkwidget())

fun append_page(page_pony: GtkWidget val): I32 =>
"""
Appends a page to the @assistant.
"""
  @gtk_assistant_append_page[I32](widget, page_pony.gtkwidget())

fun commit(): None =>
"""
Erases the visited page history so the back button is not
shown on the current page, and removes the cancel button
from subsequent pages.

Use this when the information provided up to the current
page is hereafter deemed permanent and cannot be modified
or undone. For example, showing a progress page to track
a long-running, unreversible operation after the user has
clicked apply on a confirmation page.
"""
  @gtk_assistant_commit[None](widget)

fun get_current_page(): I32 =>
"""
Returns the page number of the current page.
"""
  @gtk_assistant_get_current_page[I32](widget)

fun get_n_pages(): I32 =>
"""
Returns the number of pages in the @assistant
"""
  @gtk_assistant_get_n_pages[I32](widget)

/* Needs conversion code 
  fun get_nth_page(page_num_pony: I32): GtkWidget val =>
    @gtk_assistant_get_nth_page[GObjectREF](widget, page_num_pony)
*/

fun get_page_complete(page_pony: GtkWidget val): Bool =>
"""
Gets whether @page is complete.
"""
  @gtk_assistant_get_page_complete[Bool](widget, page_pony.gtkwidget())

fun get_page_has_padding(page_pony: GtkWidget val): Bool =>
"""
Gets whether page has padding.
"""
  @gtk_assistant_get_page_has_padding[Bool](widget, page_pony.gtkwidget())

/* get_page_header_image unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_side_image unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"} */

fun get_page_title(page_pony: GtkWidget val): String =>
"""
Gets the title for @page.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_assistant_get_page_title[Pointer[U8 val] ref](widget, page_pony.gtkwidget())
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_page_type unavailable due to return typing issues
{:argctype, "GtkAssistantPageType"}
{:argname, "rv"}
{:argtype, "AssistantPageType"}
{:paramtype, :param}
{:txo, "none"} */

fun insert_page(page_pony: GtkWidget val, position_pony: I32): I32 =>
"""
Inserts a page in the @assistant at a given position.
"""
  @gtk_assistant_insert_page[I32](widget, page_pony.gtkwidget(), position_pony)

fun next_page(): None =>
"""
Navigate to the next page.

It is a programming error to call this function when
there is no next page.

This function is for use when creating pages of the
#GTK_ASSISTANT_PAGE_CUSTOM type.
"""
  @gtk_assistant_next_page[None](widget)

fun prepend_page(page_pony: GtkWidget val): I32 =>
"""
Prepends a page to the @assistant.
"""
  @gtk_assistant_prepend_page[I32](widget, page_pony.gtkwidget())

fun previous_page(): None =>
"""
Navigate to the previous visited page.

It is a programming error to call this function when
no previous page is available.

This function is for use when creating pages of the
#GTK_ASSISTANT_PAGE_CUSTOM type.
"""
  @gtk_assistant_previous_page[None](widget)

fun remove_action_widget(child_pony: GtkWidget val): None =>
"""
Removes a widget from the action area of a #GtkAssistant.
"""
  @gtk_assistant_remove_action_widget[None](widget, child_pony.gtkwidget())

fun remove_page(page_num_pony: I32): None =>
"""
Removes the @page_num’s page from @assistant.
"""
  @gtk_assistant_remove_page[None](widget, page_num_pony)

fun set_current_page(page_num_pony: I32): None =>
"""
Switches the page to @page_num.

Note that this will only be necessary in custom buttons,
as the @assistant flow can be set with
gtk_assistant_set_forward_page_func().
"""
  @gtk_assistant_set_current_page[None](widget, page_num_pony)

/* set_forward_page_func unavailable due to typing issues
 {:doh, %{argctype: "GtkAssistantPageFunc", argname: "page_func", argtype: "AssistantPageFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_page_complete(page_pony: GtkWidget val, complete_pony: Bool): None =>
"""
Sets whether @page contents are complete.

This will make @assistant update the buttons state
to be able to continue the task.
"""
  @gtk_assistant_set_page_complete[None](widget, page_pony.gtkwidget(), complete_pony)

fun set_page_has_padding(page_pony: GtkWidget val, has_padding_pony: Bool): None =>
"""
Sets whether the assistant is adding padding around
the page.
"""
  @gtk_assistant_set_page_has_padding[None](widget, page_pony.gtkwidget(), has_padding_pony)

/* set_page_header_image unavailable due to typing issues
 {:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_page_side_image unavailable due to typing issues
 {:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_page_title unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_page_type unavailable due to typing issues
 {:doh, %{argctype: "GtkAssistantPageType", argname: "gtype", argtype: "AssistantPageType", paramtype: :param, txo: "none"}}
*/

fun update_buttons_state(): None =>
"""
Forces @assistant to recompute the buttons state.

GTK+ automatically takes care of this in most situations,
e.g. when the user goes to a different page, or when the
visibility or completeness of a page changes.

One situation where it can be necessary to call this
function is when changing a value on the current page
affects the future page flow of the assistant.
"""
  @gtk_assistant_update_buttons_state[None](widget)


```````