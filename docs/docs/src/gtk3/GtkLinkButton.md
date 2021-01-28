```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkLinkButton val"]
*/
use "../gobject"
class val GtkLinkButton is GtkWidget
"""
A GtkLinkButton is a #GtkButton with a hyperlink, similar to the one
used by web browsers, which triggers an action when clicked. It is useful
to show quick links to resources.

A link button is created by calling either gtk_link_button_new() or
gtk_link_button_new_with_label(). If using the former, the URI you pass
to the constructor is used as a label for the widget.

The URI bound to a GtkLinkButton can be set specifically using
gtk_link_button_set_uri(), and retrieved using gtk_link_button_get_uri().

By default, GtkLinkButton calls gtk_show_uri_on_window() when the button is
clicked. This behaviour can be overridden by connecting to the
#GtkLinkButton::activate-link signal and returning %TRUE from the
signal handler.

# CSS nodes

GtkLinkButton has a single CSS node with name button. To differentiate
it from a plain #GtkButton, it gets the .link style class.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(uri_pony: String) =>
    widget = @gtk_link_button_new[GObjectREF](uri_pony.cstring()) //

  new val new_with_label(uri_pony: String, label_pony: String) =>
    widget = @gtk_link_button_new_with_label[GObjectREF](uri_pony.cstring(), label_pony.cstring()) //


fun get_uri(): String =>
"""
Retrieves the URI set using gtk_link_button_set_uri().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_link_button_get_uri[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_visited(): Bool =>
"""
Retrieves the “visited” state of the URI where the #GtkLinkButton
points. The button becomes visited when it is clicked. If the URI
is changed on the button, the “visited” state is unset again.

The state may also be changed using gtk_link_button_set_visited().
"""
  @gtk_link_button_get_visited[Bool](widget)

/* set_uri unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_visited(visited_pony: Bool): None =>
"""
Sets the “visited” state of the URI where the #GtkLinkButton
points.  See gtk_link_button_get_visited() for more details.
"""
  @gtk_link_button_set_visited[None](widget, visited_pony)


```````