```````pony-full-source
/*
   needs: ["None", "GtkWidget val", "Bool", "GObjectREF", "I32", "GtkAdjustment val"]
provides: ["GtkScrolledWindow val"]
*/
use "../gobject"
class val GtkScrolledWindow is GtkWidget
"""
GtkScrolledWindow is a container that accepts a single child widget, makes
that child scrollable using either internally added scrollbars or externally
associated adjustments, and optionally draws a frame around the child.

Widgets with native scrolling support, i.e. those whose classes implement the
#GtkScrollable interface, are added directly. For other types of widget, the
class #GtkViewport acts as an adaptor, giving scrollability to other widgets.
GtkScrolledWindow’s implementation of gtk_container_add() intelligently
accounts for whether or not the added child is a #GtkScrollable. If it isn’t,
#GtkScrolledWindow wraps the child in a #GtkViewport and adds that for you.
Therefore, you can just add any child widget and not worry about the details.

If gtk_container_add() has added a #GtkViewport for you, you can remove
both your added child widget from the #GtkViewport, and the #GtkViewport
from the GtkScrolledWindow, like this:

|[<!-- language="C" -->
GtkWidget *scrolled_window = gtk_scrolled_window_new (NULL, NULL);
GtkWidget *child_widget = gtk_button_new ();

// GtkButton is not a GtkScrollable, so GtkScrolledWindow will automatically
// add a GtkViewport.
gtk_container_add (GTK_CONTAINER (scrolled_window),
                   child_widget);

// Either of these will result in child_widget being unparented:
gtk_container_remove (GTK_CONTAINER (scrolled_window),
                      child_widget);
// or
gtk_container_remove (GTK_CONTAINER (scrolled_window),
                      gtk_bin_get_child (GTK_BIN (scrolled_window)));
]|

Unless #GtkScrolledWindow:policy is GTK_POLICY_NEVER or GTK_POLICY_EXTERNAL,
GtkScrolledWindow adds internal #GtkScrollbar widgets around its child. The
scroll position of the child, and if applicable the scrollbars, is controlled
by the #GtkScrolledWindow:hadjustment and #GtkScrolledWindow:vadjustment
that are associated with the GtkScrolledWindow. See the docs on #GtkScrollbar
for the details, but note that the “step_increment” and “page_increment”
fields are only effective if the policy causes scrollbars to be present.

If a GtkScrolledWindow doesn’t behave quite as you would like, or
doesn’t have exactly the right layout, it’s very possible to set up
your own scrolling with #GtkScrollbar and for example a #GtkGrid.

# Touch support

GtkScrolledWindow has built-in support for touch devices. When a
touchscreen is used, swiping will move the scrolled window, and will
expose 'kinetic' behavior. This can be turned off with the
#GtkScrolledWindow:kinetic-scrolling property if it is undesired.

GtkScrolledWindow also displays visual 'overshoot' indication when
the content is pulled beyond the end, and this situation can be
captured with the #GtkScrolledWindow::edge-overshot signal.

If no mouse device is present, the scrollbars will overlayed as
narrow, auto-hiding indicators over the content. If traditional
scrollbars are desired although no mouse is present, this behaviour
can be turned off with the #GtkScrolledWindow:overlay-scrolling
property.

# CSS nodes

GtkScrolledWindow has a main CSS node with name scrolledwindow.

It uses subnodes with names overshoot and undershoot to
draw the overflow and underflow indications. These nodes get
the .left, .right, .top or .bottom style class added depending
on where the indication is drawn.

GtkScrolledWindow also sets the positional style classes (.left,
.right, .top, .bottom) and style classes related to overlay
scrolling (.overlay-indicator, .dragging, .hovering) on its scrollbars.

If both scrollbars are visible, the area where they meet is drawn
with a subnode named junction.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(hadjustment_pony: GtkAdjustment val, vadjustment_pony: GtkAdjustment val) =>
    widget = @gtk_scrolled_window_new[GObjectREF](hadjustment_pony.gtkwidget(), vadjustment_pony.gtkwidget()) //


fun add_with_viewport(child_pony: GtkWidget val): None =>
"""
Used to add children without native scrolling capabilities. This
is simply a convenience function; it is equivalent to adding the
unscrollable child to a viewport, then adding the viewport to the
scrolled window. If a child has native scrolling, use
gtk_container_add() instead of this function.

The viewport scrolls the child by moving its #GdkWindow, and takes
the size of the child to be the size of its toplevel #GdkWindow.
This will be very wrong for most widgets that support native scrolling;
for example, if you add a widget such as #GtkTreeView with a viewport,
the whole widget will scroll, including the column headings. Thus,
widgets with native scrolling support should not be used with the
#GtkViewport proxy.

A widget supports scrolling natively if it implements the
#GtkScrollable interface.
"""
  @gtk_scrolled_window_add_with_viewport[None](widget, child_pony.gtkwidget())

fun get_capture_button_press(): Bool =>
"""
Return whether button presses are captured during kinetic
scrolling. See gtk_scrolled_window_set_capture_button_press().
"""
  @gtk_scrolled_window_get_capture_button_press[Bool](widget)

/* get_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* Needs conversion code 
  fun get_hscrollbar(): GtkWidget val =>
    @gtk_scrolled_window_get_hscrollbar[GObjectREF](widget)
*/

fun get_kinetic_scrolling(): Bool =>
"""
Returns the specified kinetic scrolling behavior.
"""
  @gtk_scrolled_window_get_kinetic_scrolling[Bool](widget)

fun get_max_content_height(): I32 =>
"""
Returns the maximum content height set.
"""
  @gtk_scrolled_window_get_max_content_height[I32](widget)

fun get_max_content_width(): I32 =>
"""
Returns the maximum content width set.
"""
  @gtk_scrolled_window_get_max_content_width[I32](widget)

fun get_min_content_height(): I32 =>
"""
Gets the minimal content height of @scrolled_window, or -1 if not set.
"""
  @gtk_scrolled_window_get_min_content_height[I32](widget)

fun get_min_content_width(): I32 =>
"""
Gets the minimum content width of @scrolled_window, or -1 if not set.
"""
  @gtk_scrolled_window_get_min_content_width[I32](widget)

fun get_overlay_scrolling(): Bool =>
"""
Returns whether overlay scrolling is enabled for this scrolled window.
"""
  @gtk_scrolled_window_get_overlay_scrolling[Bool](widget)

/* get_placement unavailable due to return typing issues
{:argctype, "GtkCornerType"}
{:argname, "rv"}
{:argtype, "CornerType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_policy unavailable due to typing issues
 {:doh, %{argctype: "GtkPolicyType*", argname: "hscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "GtkPolicyType*", argname: "vscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "full"}}
*/

fun get_propagate_natural_height(): Bool =>
"""
Reports whether the natural height of the child will be calculated and propagated
through the scrolled window’s requested natural height.
"""
  @gtk_scrolled_window_get_propagate_natural_height[Bool](widget)

fun get_propagate_natural_width(): Bool =>
"""
Reports whether the natural width of the child will be calculated and propagated
through the scrolled window’s requested natural width.
"""
  @gtk_scrolled_window_get_propagate_natural_width[Bool](widget)

/* get_shadow_type unavailable due to return typing issues
{:argctype, "GtkShadowType"}
{:argname, "rv"}
{:argtype, "ShadowType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_vadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* Needs conversion code 
  fun get_vscrollbar(): GtkWidget val =>
    @gtk_scrolled_window_get_vscrollbar[GObjectREF](widget)
*/

fun set_capture_button_press(capture_button_press_pony: Bool): None =>
"""
Changes the behaviour of @scrolled_window with regard to the initial
event that possibly starts kinetic scrolling. When @capture_button_press
is set to %TRUE, the event is captured by the scrolled window, and
then later replayed if it is meant to go to the child widget.

This should be enabled if any child widgets perform non-reversible
actions on #GtkWidget::button-press-event. If they don't, and handle
additionally handle #GtkWidget::grab-broken-event, it might be better
to set @capture_button_press to %FALSE.

This setting only has an effect if kinetic scrolling is enabled.
"""
  @gtk_scrolled_window_set_capture_button_press[None](widget, capture_button_press_pony)

/* set_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "hadjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_kinetic_scrolling(kinetic_scrolling_pony: Bool): None =>
"""
Turns kinetic scrolling on or off.
Kinetic scrolling only applies to devices with source
%GDK_SOURCE_TOUCHSCREEN.
"""
  @gtk_scrolled_window_set_kinetic_scrolling[None](widget, kinetic_scrolling_pony)

fun set_max_content_height(height_pony: I32): None =>
"""
Sets the maximum height that @scrolled_window should keep visible. The
@scrolled_window will grow up to this height before it starts scrolling
the content.

It is a programming error to set the maximum content height to a value
smaller than #GtkScrolledWindow:min-content-height.
"""
  @gtk_scrolled_window_set_max_content_height[None](widget, height_pony)

fun set_max_content_width(width_pony: I32): None =>
"""
Sets the maximum width that @scrolled_window should keep visible. The
@scrolled_window will grow up to this width before it starts scrolling
the content.

It is a programming error to set the maximum content width to a value
smaller than #GtkScrolledWindow:min-content-width.
"""
  @gtk_scrolled_window_set_max_content_width[None](widget, width_pony)

fun set_min_content_height(height_pony: I32): None =>
"""
Sets the minimum height that @scrolled_window should keep visible.
Note that this can and (usually will) be smaller than the minimum
size of the content.

It is a programming error to set the minimum content height to a
value greater than #GtkScrolledWindow:max-content-height.
"""
  @gtk_scrolled_window_set_min_content_height[None](widget, height_pony)

fun set_min_content_width(width_pony: I32): None =>
"""
Sets the minimum width that @scrolled_window should keep visible.
Note that this can and (usually will) be smaller than the minimum
size of the content.

It is a programming error to set the minimum content width to a
value greater than #GtkScrolledWindow:max-content-width.
"""
  @gtk_scrolled_window_set_min_content_width[None](widget, width_pony)

fun set_overlay_scrolling(overlay_scrolling_pony: Bool): None =>
"""
Enables or disables overlay scrolling for this scrolled window.
"""
  @gtk_scrolled_window_set_overlay_scrolling[None](widget, overlay_scrolling_pony)

/* set_placement unavailable due to typing issues
 {:doh, %{argctype: "GtkCornerType", argname: "window_placement", argtype: "CornerType", paramtype: :param, txo: "none"}}
*/

/* set_policy unavailable due to typing issues
 {:doh, %{argctype: "GtkPolicyType", argname: "hscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPolicyType", argname: "vscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "none"}}
*/

fun set_propagate_natural_height(propagate_pony: Bool): None =>
"""
Sets whether the natural height of the child should be calculated and propagated
through the scrolled window’s requested natural height.
"""
  @gtk_scrolled_window_set_propagate_natural_height[None](widget, propagate_pony)

fun set_propagate_natural_width(propagate_pony: Bool): None =>
"""
Sets whether the natural width of the child should be calculated and propagated
through the scrolled window’s requested natural width.
"""
  @gtk_scrolled_window_set_propagate_natural_width[None](widget, propagate_pony)

/* set_shadow_type unavailable due to typing issues
 {:doh, %{argctype: "GtkShadowType", argname: "gtype", argtype: "ShadowType", paramtype: :param, txo: "none"}}
*/

/* set_vadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "vadjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun unset_placement(): None =>
"""
Unsets the placement of the contents with respect to the scrollbars
for the scrolled window. If no window placement is set for a scrolled
window, it defaults to %GTK_CORNER_TOP_LEFT.

See also gtk_scrolled_window_set_placement() and
gtk_scrolled_window_get_placement().
"""
  @gtk_scrolled_window_unset_placement[None](widget)


```````