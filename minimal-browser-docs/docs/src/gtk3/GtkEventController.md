```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val", "None"]
provides: ["GtkEventController val"]
*/
use "../gobject"
class val GtkEventController is GtkWidget
"""
#GtkEventController is a base, low-level implementation for event
controllers. Those react to a series of #GdkEvents, and possibly trigger
actions as a consequence of those.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* get_propagation_phase unavailable due to return typing issues
{:argctype, "GtkPropagationPhase"}
{:argname, "rv"}
{:argtype, "PropagationPhase"}
{:paramtype, :param}
{:txo, "none"} */

/* Needs conversion code 
  fun get_widget(): GtkWidget val =>
    @gtk_event_controller_get_widget[GObjectREF](widget)
*/

/* handle_event unavailable due to typing issues
 {:doh, %{argctype: "const GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/

fun reset(): None =>
"""
Resets the @controller to a clean state. Every interaction
the controller did through #GtkEventController::handle-event
will be dropped at this point.
"""
  @gtk_event_controller_reset[None](widget)

/* set_propagation_phase unavailable due to typing issues
 {:doh, %{argctype: "GtkPropagationPhase", argname: "phase", argtype: "PropagationPhase", paramtype: :param, txo: "none"}}
*/


```````