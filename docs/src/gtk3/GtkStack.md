```````pony-full-source
/*
   needs: ["Bool", "U32", "GObjectREF", "GtkWidget val", "Pointer[U8 val] ref", "String", "None"]
provides: ["GtkStack val"]
*/
use "../gobject"
class val GtkStack is GtkWidget
"""
The GtkStack widget is a container which only shows
one of its children at a time. In contrast to GtkNotebook,
GtkStack does not provide a means for users to change the
visible child. Instead, the #GtkStackSwitcher widget can be
used with GtkStack to provide this functionality.

Transitions between pages can be animated as slides or
fades. This can be controlled with gtk_stack_set_transition_type().
These animations respect the #GtkSettings:gtk-enable-animations
setting.

The GtkStack widget was added in GTK+ 3.10.

# CSS nodes

GtkStack has a single CSS node named stack.
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
    widget = @gtk_stack_new[GObjectREF]() //


/* add_named unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_titled unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* get_child_by_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun get_hhomogeneous(): Bool =>
"""
Gets whether @stack is horizontally homogeneous.
See gtk_stack_set_hhomogeneous().
"""
  @gtk_stack_get_hhomogeneous[Bool](widget)

fun get_homogeneous(): Bool =>
"""
Gets whether @stack is homogeneous.
See gtk_stack_set_homogeneous().
"""
  @gtk_stack_get_homogeneous[Bool](widget)

fun get_interpolate_size(): Bool =>
"""
Returns wether the #GtkStack is set up to interpolate between
the sizes of children on page switch.
"""
  @gtk_stack_get_interpolate_size[Bool](widget)

fun get_transition_duration(): U32 =>
"""
Returns the amount of time (in milliseconds) that
transitions between pages in @stack will take.
"""
  @gtk_stack_get_transition_duration[U32](widget)

fun get_transition_running(): Bool =>
"""
Returns whether the @stack is currently in a transition from one page to
another.
"""
  @gtk_stack_get_transition_running[Bool](widget)

/* get_transition_type unavailable due to return typing issues
{:argctype, "GtkStackTransitionType"}
{:argname, "rv"}
{:argtype, "StackTransitionType"}
{:paramtype, :param}
{:txo, "none"} */

fun get_vhomogeneous(): Bool =>
"""
Gets whether @stack is vertically homogeneous.
See gtk_stack_set_vhomogeneous().
"""
  @gtk_stack_get_vhomogeneous[Bool](widget)

/* Needs conversion code 
  fun get_visible_child(): GtkWidget val =>
    @gtk_stack_get_visible_child[GObjectREF](widget)
*/

fun get_visible_child_name(): String =>
"""
Returns the name of the currently visible child of @stack, or
%NULL if there is no visible child.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_stack_get_visible_child_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun set_hhomogeneous(hhomogeneous_pony: Bool): None =>
"""
Sets the #GtkStack to be horizontally homogeneous or not.
If it is homogeneous, the #GtkStack will request the same
width for all its children. If it isn't, the stack
may change width when a different child becomes visible.
"""
  @gtk_stack_set_hhomogeneous[None](widget, hhomogeneous_pony)

fun set_homogeneous(homogeneous_pony: Bool): None =>
"""
Sets the #GtkStack to be homogeneous or not. If it
is homogeneous, the #GtkStack will request the same
size for all its children. If it isn't, the stack
may change size when a different child becomes visible.

Since 3.16, homogeneity can be controlled separately
for horizontal and vertical size, with the
#GtkStack:hhomogeneous and #GtkStack:vhomogeneous.
"""
  @gtk_stack_set_homogeneous[None](widget, homogeneous_pony)

fun set_interpolate_size(interpolate_size_pony: Bool): None =>
"""
Sets whether or not @stack will interpolate its size when
changing the visible child. If the #GtkStack:interpolate-size
property is set to %TRUE, @stack will interpolate its size between
the current one and the one it'll take after changing the
visible child, according to the set transition duration.
"""
  @gtk_stack_set_interpolate_size[None](widget, interpolate_size_pony)

fun set_transition_duration(duration_pony: U32): None =>
"""
Sets the duration that transitions between pages in @stack
will take.
"""
  @gtk_stack_set_transition_duration[None](widget, duration_pony)

/* set_transition_type unavailable due to typing issues
 {:doh, %{argctype: "GtkStackTransitionType", argname: "transition", argtype: "StackTransitionType", paramtype: :param, txo: "none"}}
*/

fun set_vhomogeneous(vhomogeneous_pony: Bool): None =>
"""
Sets the #GtkStack to be vertically homogeneous or not.
If it is homogeneous, the #GtkStack will request the same
height for all its children. If it isn't, the stack
may change height when a different child becomes visible.
"""
  @gtk_stack_set_vhomogeneous[None](widget, vhomogeneous_pony)

fun set_visible_child(child_pony: GtkWidget val): None =>
"""
Makes @child the visible child of @stack.

If @child is different from the currently
visible child, the transition between the
two will be animated with the current
transition type of @stack.

Note that the @child widget has to be visible itself
(see gtk_widget_show()) in order to become the visible
child of @stack.
"""
  @gtk_stack_set_visible_child[None](widget, child_pony.gtkwidget())

/* set_visible_child_full unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStackTransitionType", argname: "transition", argtype: "StackTransitionType", paramtype: :param, txo: "none"}}
*/

/* set_visible_child_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````