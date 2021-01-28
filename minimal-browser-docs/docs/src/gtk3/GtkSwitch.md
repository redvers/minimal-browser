```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkSwitch val"]
*/
use "../gobject"
class val GtkSwitch is GtkWidget
"""
#GtkSwitch is a widget that has two states: on or off. The user can control
which state should be active by clicking the empty area, or by dragging the
handle.

GtkSwitch can also handle situations where the underlying state changes with
a delay. See #GtkSwitch::state-set for details.

# CSS nodes

|[<!-- language="plain" -->
switch
╰── slider
]|

GtkSwitch has two css nodes, the main node with the name switch and a subnode
named slider. Neither of them is using any style classes.
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
    widget = @gtk_switch_new[GObjectREF]() //


fun get_active(): Bool =>
"""
Gets whether the #GtkSwitch is in its “on” or “off” state.
"""
  @gtk_switch_get_active[Bool](widget)

fun get_state(): Bool =>
"""
Gets the underlying state of the #GtkSwitch.
"""
  @gtk_switch_get_state[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
"""
Changes the state of @sw to the desired one.
"""
  @gtk_switch_set_active[None](widget, is_active_pony)

fun set_state(state_pony: Bool): None =>
"""
Sets the underlying state of the #GtkSwitch.

Normally, this is the same as #GtkSwitch:active, unless the switch
is set up for delayed state changes. This function is typically
called from a #GtkSwitch::state-set signal handler.

See #GtkSwitch::state-set for details.
"""
  @gtk_switch_set_state[None](widget, state_pony)


```````