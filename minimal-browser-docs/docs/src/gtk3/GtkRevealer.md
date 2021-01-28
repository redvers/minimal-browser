```````pony-full-source
/*
   needs: ["Bool", "U32", "None", "GObjectREF"]
provides: ["GtkRevealer val"]
*/
use "../gobject"
class val GtkRevealer is GtkWidget
"""
The GtkRevealer widget is a container which animates
the transition of its child from invisible to visible.

The style of transition can be controlled with
gtk_revealer_set_transition_type().

These animations respect the #GtkSettings:gtk-enable-animations
setting.

# CSS nodes

GtkRevealer has a single CSS node with name revealer.

The GtkRevealer widget was added in GTK+ 3.10.
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
    widget = @gtk_revealer_new[GObjectREF]() //


fun get_child_revealed(): Bool =>
"""
Returns whether the child is fully revealed, in other words whether
the transition to the revealed state is completed.
"""
  @gtk_revealer_get_child_revealed[Bool](widget)

fun get_reveal_child(): Bool =>
"""
Returns whether the child is currently
revealed. See gtk_revealer_set_reveal_child().

This function returns %TRUE as soon as the transition
is to the revealed state is started. To learn whether
the child is fully revealed (ie the transition is completed),
use gtk_revealer_get_child_revealed().
"""
  @gtk_revealer_get_reveal_child[Bool](widget)

fun get_transition_duration(): U32 =>
"""
Returns the amount of time (in milliseconds) that
transitions will take.
"""
  @gtk_revealer_get_transition_duration[U32](widget)

/* get_transition_type unavailable due to return typing issues
{:argctype, "GtkRevealerTransitionType"}
{:argname, "rv"}
{:argtype, "RevealerTransitionType"}
{:paramtype, :param}
{:txo, "none"} */

fun set_reveal_child(reveal_child_pony: Bool): None =>
"""
Tells the #GtkRevealer to reveal or conceal its child.

The transition will be animated with the current
transition type of @revealer.
"""
  @gtk_revealer_set_reveal_child[None](widget, reveal_child_pony)

fun set_transition_duration(duration_pony: U32): None =>
"""
Sets the duration that transitions will take.
"""
  @gtk_revealer_set_transition_duration[None](widget, duration_pony)

/* set_transition_type unavailable due to typing issues
 {:doh, %{argctype: "GtkRevealerTransitionType", argname: "transition", argtype: "RevealerTransitionType", paramtype: :param, txo: "none"}}
*/


```````