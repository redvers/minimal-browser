```````pony-full-source
/*
   needs: ["None", "GObjectREF", "GtkWidget val"]
provides: ["GtkAccessible val"]
*/
use "../gobject"
class val GtkAccessible is GtkWidget
"""
The #GtkAccessible class is the base class for accessible
implementations for #GtkWidget subclasses. It is a thin
wrapper around #AtkObject, which adds facilities for associating
a widget with its accessible object.

An accessible implementation for a third-party widget should
derive from #GtkAccessible and implement the suitable interfaces
from ATK, such as #AtkText or #AtkSelection. To establish
the connection between the widget class and its corresponding
acccessible implementation, override the get_accessible vfunc
in #GtkWidgetClass.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




fun connect_widget_destroyed(): None =>
"""
This function specifies the callback function to be called
when the widget corresponding to a GtkAccessible is destroyed.
"""
  @gtk_accessible_connect_widget_destroyed[None](widget)

/* Needs conversion code 
  fun get_widget(): GtkWidget val =>
    @gtk_accessible_get_widget[GObjectREF](widget)
*/

fun set_widget(widget_pony: GtkWidget val): None =>
"""
Sets the #GtkWidget corresponding to the #GtkAccessible.

@accessible will not hold a reference to @widget.
It is the caller’s responsibility to ensure that when @widget
is destroyed, the widget is unset by calling this function
again with @widget set to %NULL.
"""
  @gtk_accessible_set_widget[None](widget, widget_pony.gtkwidget())


```````