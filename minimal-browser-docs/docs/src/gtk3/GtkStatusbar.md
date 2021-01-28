```````pony-full-source
/*
   needs: ["None", "U32", "GObjectREF"]
provides: ["GtkStatusbar val"]
*/
use "../gobject"
class val GtkStatusbar is GtkWidget
"""
A #GtkStatusbar is usually placed along the bottom of an application's
main #GtkWindow. It may provide a regular commentary of the application's
status (as is usually the case in a web browser, for example), or may be
used to simply output a message when the status changes, (when an upload
is complete in an FTP client, for example).

Status bars in GTK+ maintain a stack of messages. The message at
the top of the each bar’s stack is the one that will currently be displayed.

Any messages added to a statusbar’s stack must specify a
context id that is used to uniquely identify
the source of a message. This context id can be generated by
gtk_statusbar_get_context_id(), given a message and the statusbar that
it will be added to. Note that messages are stored in a stack, and when
choosing which message to display, the stack structure is adhered to,
regardless of the context identifier of a message.

One could say that a statusbar maintains one stack of messages for
display purposes, but allows multiple message producers to maintain
sub-stacks of the messages they produced (via context ids).

Status bars are created using gtk_statusbar_new().

Messages are added to the bar’s stack with gtk_statusbar_push().

The message at the top of the stack can be removed using
gtk_statusbar_pop(). A message can be removed from anywhere in the
stack if its message id was recorded at the time it was added. This
is done using gtk_statusbar_remove().

# CSS node

GtkStatusbar has a single CSS node with name statusbar.
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
    widget = @gtk_statusbar_new[GObjectREF]() //


/* get_context_id unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "context_description", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* get_message_area unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Box"}
{:paramtype, :param}
{:txo, "none"} */

fun pop(context_id_pony: U32): None =>
"""
Removes the first message in the #GtkStatusbar’s stack
with the given context id.

Note that this may not change the displayed message, if
the message at the top of the stack has a different
context id.
"""
  @gtk_statusbar_pop[None](widget, context_id_pony)

/* push unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun remove(context_id_pony: U32, message_id_pony: U32): None =>
"""
Forces the removal of a message from a statusbar’s stack.
The exact @context_id and @message_id must be specified.
"""
  @gtk_statusbar_remove[None](widget, context_id_pony, message_id_pony)

fun remove_all(context_id_pony: U32): None =>
"""
Forces the removal of all messages from a statusbar's
stack with the exact @context_id.
"""
  @gtk_statusbar_remove_all[None](widget, context_id_pony)


```````