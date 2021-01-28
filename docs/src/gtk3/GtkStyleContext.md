```````pony-full-source
/*
   needs: ["I32", "None", "GObjectREF"]
provides: ["GtkStyleContext val"]
*/
use "../gobject"
class val GtkStyleContext is GtkWidget
"""
#GtkStyleContext is an object that stores styling information affecting
a widget defined by #GtkWidgetPath.

In order to construct the final style information, #GtkStyleContext
queries information from all attached #GtkStyleProviders. Style providers
can be either attached explicitly to the context through
gtk_style_context_add_provider(), or to the screen through
gtk_style_context_add_provider_for_screen(). The resulting style is a
combination of all providers’ information in priority order.

For GTK+ widgets, any #GtkStyleContext returned by
gtk_widget_get_style_context() will already have a #GtkWidgetPath, a
#GdkScreen and RTL/LTR information set. The style context will also be
updated automatically if any of these settings change on the widget.

If you are using the theming layer standalone, you will need to set a
widget path and a screen yourself to the created style context through
gtk_style_context_set_path() and possibly gtk_style_context_set_screen(). See
the “Foreign drawing“ example in gtk3-demo.

# Style Classes # {#gtkstylecontext-classes}

Widgets can add style classes to their context, which can be used to associate
different styles by class. The documentation for individual widgets lists
which style classes it uses itself, and which style classes may be added by
applications to affect their appearance.

GTK+ defines macros for a number of style classes.

# Style Regions

Widgets can also add regions with flags to their context. This feature is
deprecated and will be removed in a future GTK+ update. Please use style
classes instead.

GTK+ defines macros for a number of style regions.

# Custom styling in UI libraries and applications

If you are developing a library with custom #GtkWidgets that
render differently than standard components, you may need to add a
#GtkStyleProvider yourself with the %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK
priority, either a #GtkCssProvider or a custom object implementing the
#GtkStyleProvider interface. This way themes may still attempt
to style your UI elements in a different way if needed so.

If you are using custom styling on an applications, you probably want then
to make your style information prevail to the theme’s, so you must use
a #GtkStyleProvider with the %GTK_STYLE_PROVIDER_PRIORITY_APPLICATION
priority, keep in mind that the user settings in
`XDG_CONFIG_HOME/gtk-3.0/gtk.css` will
still take precedence over your changes, as it uses the
%GTK_STYLE_PROVIDER_PRIORITY_USER priority.
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
    widget = @gtk_style_context_new[GObjectREF]() //


/* add_class unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "class_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_provider unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleProvider*", argname: "provider", argtype: "StyleProvider", paramtype: :param, txo: "none"}}
*/

/* add_region unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "region_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRegionFlags", argname: "flags", argtype: "RegionFlags", paramtype: :param, txo: "none"}}
*/

/* cancel_animations unavailable due to typing issues
 {:doh, %{argctype: "gpointer", argname: "region_id", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* get unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_background_color unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* get_border unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "border", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* get_border_color unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* get_color unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* get_direction unavailable due to return typing issues
{:argctype, "GtkTextDirection"}
{:argname, "rv"}
{:argtype, "TextDirection"}
{:paramtype, :param}
{:txo, "none"} */

/* get_font unavailable due to return typing issues
{:argctype, "const PangoFontDescription*"}
{:argname, "rv"}
{:argtype, "Pango.FontDescription"}
{:paramtype, :param}
{:txo, "none"} */

/* get_frame_clock unavailable due to return typing issues
{:argctype, "GdkFrameClock*"}
{:argname, "rv"}
{:argtype, "Gdk.FrameClock"}
{:paramtype, :param}
{:txo, "none"} */

/* get_junction_sides unavailable due to return typing issues
{:argctype, "GtkJunctionSides"}
{:argname, "rv"}
{:argtype, "JunctionSides"}
{:paramtype, :param}
{:txo, "none"} */

/* get_margin unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "margin", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* get_padding unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "padding", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* get_parent unavailable due to return typing issues
{:argctype, "GtkStyleContext*"}
{:argname, "rv"}
{:argtype, "StyleContext"}
{:paramtype, :param}
{:txo, "none"} */

/* get_path unavailable due to return typing issues
{:argctype, "const GtkWidgetPath*"}
{:argname, "rv"}
{:argtype, "WidgetPath"}
{:paramtype, :param}
{:txo, "none"} */

/* get_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "full"}}
*/

fun get_scale(): I32 =>
"""
Returns the scale used for assets.
"""
  @gtk_style_context_get_scale[I32](widget)

/* get_screen unavailable due to return typing issues
{:argctype, "GdkScreen*"}
{:argname, "rv"}
{:argtype, "Gdk.Screen"}
{:paramtype, :param}
{:txo, "none"} */

/* get_section unavailable due to return typing issues
{:argctype, "GtkCssSection*"}
{:argname, "rv"}
{:argtype, "CssSection"}
{:paramtype, :param}
{:txo, "none"} */

/* get_state unavailable due to return typing issues
{:argctype, "GtkStateFlags"}
{:argname, "rv"}
{:argtype, "StateFlags"}
{:paramtype, :param}
{:txo, "none"} */

/* get_style unavailable due to typing issues
 {:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_style_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* get_style_valist unavailable due to typing issues
 {:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* get_valist unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* has_class unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "class_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* has_region unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "region_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRegionFlags*", argname: "flags_return", argtype: "RegionFlags", paramtype: :param, txo: "full"}}
*/

fun invalidate(): None =>
"""
Invalidates @context style information, so it will be reconstructed
again. It is useful if you modify the @context and need the new
information immediately.
"""
  @gtk_style_context_invalidate[None](widget)

/* list_classes unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* list_regions unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* lookup_color unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "color_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* lookup_icon_set unavailable due to return typing issues
{:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"} */

/* notify_state_change unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "region_id", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state", argtype: "StateType", paramtype: :param, txo: "none"}}
*/

fun pop_animatable_region(): None =>
"""
Pops an animatable region from @context.
See gtk_style_context_push_animatable_region().
"""
  @gtk_style_context_pop_animatable_region[None](widget)

/* push_animatable_region unavailable due to typing issues
 {:doh, %{argctype: "gpointer", argname: "region_id", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* remove_class unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "class_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* remove_provider unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleProvider*", argname: "provider", argtype: "StyleProvider", paramtype: :param, txo: "none"}}
*/

/* remove_region unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "region_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun restore(): None =>
"""
Restores @context state to a previous stage.
See gtk_style_context_save().
"""
  @gtk_style_context_restore[None](widget)

fun save(): None =>
"""
Saves the @context state, so temporary modifications done through
gtk_style_context_add_class(), gtk_style_context_remove_class(),
gtk_style_context_set_state(), etc. can quickly be reverted
in one go through gtk_style_context_restore().

The matching call to gtk_style_context_restore() must be done
before GTK returns to the main loop.
"""
  @gtk_style_context_save[None](widget)

/* scroll_animations unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

/* set_background unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

/* set_direction unavailable due to typing issues
 {:doh, %{argctype: "GtkTextDirection", argname: "direction", argtype: "TextDirection", paramtype: :param, txo: "none"}}
*/

/* set_frame_clock unavailable due to typing issues
 {:doh, %{argctype: "GdkFrameClock*", argname: "frame_clock", argtype: "Gdk.FrameClock", paramtype: :param, txo: "none"}}
*/

/* set_junction_sides unavailable due to typing issues
 {:doh, %{argctype: "GtkJunctionSides", argname: "sides", argtype: "JunctionSides", paramtype: :param, txo: "none"}}
*/

/* set_parent unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "parent", argtype: "StyleContext", paramtype: :param, txo: "none"}}
*/

/* set_path unavailable due to typing issues
 {:doh, %{argctype: "GtkWidgetPath*", argname: "path", argtype: "WidgetPath", paramtype: :param, txo: "none"}}
*/

fun set_scale(scale_pony: I32): None =>
"""
Sets the scale to use when getting image assets for the style.
"""
  @gtk_style_context_set_scale[None](widget, scale_pony)

/* set_screen unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

/* set_state unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "flags", argtype: "StateFlags", paramtype: :param, txo: "none"}}
*/

/* state_is_running unavailable due to typing issues
 {:doh, %{argctype: "GtkStateType", argname: "state", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "progress", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* to_string unavailable due to return typing issues
{:argctype, "char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */


```````