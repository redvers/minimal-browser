```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkColorSelection val"]
*/
use "../gobject"
class val GtkColorSelection is GtkWidget
"""
No documentation provided
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
    widget = @gtk_color_selection_new[GObjectREF]() //


/* get_current_alpha unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

/* get_current_color unavailable due to typing issues
 {:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* get_current_rgba unavailable due to typing issues
 {:doh, %{argctype: "GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

fun get_has_opacity_control(): Bool =>
"""
Determines whether the colorsel has an opacity control.
"""
  @gtk_color_selection_get_has_opacity_control[Bool](widget)

fun get_has_palette(): Bool =>
"""
Determines whether the color selector has a color palette.
"""
  @gtk_color_selection_get_has_palette[Bool](widget)

/* get_previous_alpha unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

/* get_previous_color unavailable due to typing issues
 {:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* get_previous_rgba unavailable due to typing issues
 {:doh, %{argctype: "GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

fun is_adjusting(): Bool =>
"""
Gets the current state of the @colorsel.
"""
  @gtk_color_selection_is_adjusting[Bool](widget)

/* set_current_alpha unavailable due to typing issues
 {:doh, %{argctype: "guint16", argname: "alpha", argtype: "guint16", paramtype: :param, txo: "none"}}
*/

/* set_current_color unavailable due to typing issues
 {:doh, %{argctype: "const GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* set_current_rgba unavailable due to typing issues
 {:doh, %{argctype: "const GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

fun set_has_opacity_control(has_opacity_pony: Bool): None =>
"""
Sets the @colorsel to use or not use opacity.
"""
  @gtk_color_selection_set_has_opacity_control[None](widget, has_opacity_pony)

fun set_has_palette(has_palette_pony: Bool): None =>
"""
Shows and hides the palette based upon the value of @has_palette.
"""
  @gtk_color_selection_set_has_palette[None](widget, has_palette_pony)

/* set_previous_alpha unavailable due to typing issues
 {:doh, %{argctype: "guint16", argname: "alpha", argtype: "guint16", paramtype: :param, txo: "none"}}
*/

/* set_previous_color unavailable due to typing issues
 {:doh, %{argctype: "const GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* set_previous_rgba unavailable due to typing issues
 {:doh, %{argctype: "const GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```````