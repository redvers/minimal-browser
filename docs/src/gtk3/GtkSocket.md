```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkSocket val"]
*/
use "../gobject"
class val GtkSocket is GtkWidget
"""
Together with #GtkPlug, #GtkSocket provides the ability to embed
widgets from one process into another process in a fashion that
is transparent to the user. One process creates a #GtkSocket widget
and passes that widget’s window ID to the other process, which then
creates a #GtkPlug with that window ID. Any widgets contained in the
#GtkPlug then will appear inside the first application’s window.

The socket’s window ID is obtained by using gtk_socket_get_id().
Before using this function, the socket must have been realized,
and for hence, have been added to its parent.

## Obtaining the window ID of a socket.

|[<!-- language="C" -->
GtkWidget *socket = gtk_socket_new ();
gtk_widget_show (socket);
gtk_container_add (GTK_CONTAINER (parent), socket);

// The following call is only necessary if one of
// the ancestors of the socket is not yet visible.
gtk_widget_realize (socket);
g_print ("The ID of the sockets window is %#x\n",
         gtk_socket_get_id (socket));
]|

Note that if you pass the window ID of the socket to another
process that will create a plug in the socket, you must make
sure that the socket widget is not destroyed until that plug
is created. Violating this rule will cause unpredictable
consequences, the most likely consequence being that the plug
will appear as a separate toplevel window. You can check if
the plug has been created by using gtk_socket_get_plug_window().
If it returns a non-%NULL value, then the plug has been
successfully created inside of the socket.

When GTK+ is notified that the embedded window has been destroyed,
then it will destroy the socket as well. You should always,
therefore, be prepared for your sockets to be destroyed at any
time when the main event loop is running. To prevent this from
happening, you can connect to the #GtkSocket::plug-removed signal.

The communication between a #GtkSocket and a #GtkPlug follows the
[XEmbed Protocol](http://www.freedesktop.org/Standards/xembed-spec).
This protocol has also been implemented in other toolkits, e.g. Qt,
allowing the same level of integration when embedding a Qt widget
in GTK or vice versa.

The #GtkPlug and #GtkSocket widgets are only available when GTK+
is compiled for the X11 platform and %GDK_WINDOWING_X11 is defined.
They can only be used on a #GdkX11Display. To use #GtkPlug and
#GtkSocket, you need to include the `gtk/gtkx.h` header.
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
    widget = @gtk_socket_new[GObjectREF]() //


/* add_id unavailable due to typing issues
 {:doh, %{argctype: "Window", argname: "window", argtype: "xlib.Window", paramtype: :param, txo: "none"}}
*/

/* get_id unavailable due to return typing issues
{:argctype, "Window"}
{:argname, "rv"}
{:argtype, "xlib.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_plug_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */


```````