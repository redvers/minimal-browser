```````pony-full-source
/*
   needs: ["None", "GObjectREF"]
provides: ["GtkSpinner val"]
*/
use "../gobject"
class val GtkSpinner is GtkWidget
"""
A GtkSpinner widget displays an icon-size spinning animation.
It is often used as an alternative to a #GtkProgressBar for
displaying indefinite activity, instead of actual progress.

To start the animation, use gtk_spinner_start(), to stop it
use gtk_spinner_stop().

# CSS nodes

GtkSpinner has a single CSS node with the name spinner. When the animation is
active, the :checked pseudoclass is added to this node.
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
    widget = @gtk_spinner_new[GObjectREF]() //


fun start(): None =>
"""
Starts the animation of the spinner.
"""
  @gtk_spinner_start[None](widget)

fun stop(): None =>
"""
Stops the animation of the spinner.
"""
  @gtk_spinner_stop[None](widget)


```````