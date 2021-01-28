```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF", "String"]
provides: ["GtkToggleToolButton val"]
*/
use "../gobject"
class val GtkToggleToolButton is GtkWidget
"""
A #GtkToggleToolButton is a #GtkToolItem that contains a toggle
button.

Use gtk_toggle_tool_button_new() to create a new GtkToggleToolButton.

# CSS nodes

GtkToggleToolButton has a single CSS node with name togglebutton.
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
    widget = @gtk_toggle_tool_button_new[GObjectREF]() //

  new val new_from_stock(stock_id_pony: String) =>
    widget = @gtk_toggle_tool_button_new_from_stock[GObjectREF](stock_id_pony.cstring()) //


fun get_active(): Bool =>
"""
Queries a #GtkToggleToolButton and returns its current state.
Returns %TRUE if the toggle button is pressed in and %FALSE if it is raised.
"""
  @gtk_toggle_tool_button_get_active[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
"""
Sets the status of the toggle tool button. Set to %TRUE if you
want the GtkToggleButton to be “pressed in”, and %FALSE to raise it.
This action causes the toggled signal to be emitted.
"""
  @gtk_toggle_tool_button_set_active[None](widget, is_active_pony)


```````