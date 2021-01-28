```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkStackSwitcher val"]
*/
use "../gobject"
class val GtkStackSwitcher is GtkWidget
"""
The GtkStackSwitcher widget acts as a controller for a
#GtkStack; it shows a row of buttons to switch between
the various pages of the associated stack widget.

All the content for the buttons comes from the child properties
of the #GtkStack; the button visibility in a #GtkStackSwitcher
widget is controlled by the visibility of the child in the
#GtkStack.

It is possible to associate multiple #GtkStackSwitcher widgets
with the same #GtkStack widget.

The GtkStackSwitcher widget was added in 3.10.

# CSS nodes

GtkStackSwitcher has a single CSS node named stackswitcher and
style class .stack-switcher.

When circumstances require it, GtkStackSwitcher adds the
.needs-attention style class to the widgets representing the
stack pages.
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
    widget = @gtk_stack_switcher_new[GObjectREF]() //


/* get_stack unavailable due to return typing issues
{:argctype, "GtkStack*"}
{:argname, "rv"}
{:argtype, "Stack"}
{:paramtype, :param}
{:txo, "none"} */

/* set_stack unavailable due to typing issues
 {:doh, %{argctype: "GtkStack*", argname: "stack", argtype: "Stack", paramtype: :param, txo: "none"}}
*/


```````