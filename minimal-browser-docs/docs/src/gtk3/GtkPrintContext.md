```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkPrintContext val"]
*/
use "../gobject"
class val GtkPrintContext is GtkWidget
"""
A GtkPrintContext encapsulates context information that is required when
drawing pages for printing, such as the cairo context and important
parameters like page size and resolution. It also lets you easily
create #PangoLayout and #PangoContext objects that match the font metrics
of the cairo surface.

GtkPrintContext objects gets passed to the #GtkPrintOperation::begin-print,
#GtkPrintOperation::end-print, #GtkPrintOperation::request-page-setup and
#GtkPrintOperation::draw-page signals on the #GtkPrintOperation.

## Using GtkPrintContext in a #GtkPrintOperation::draw-page callback

|[<!-- language="C" -->
static void
draw_page (GtkPrintOperation *operation,
	   GtkPrintContext   *context,
	   int                page_nr)
{
  cairo_t *cr;
  PangoLayout *layout;
  PangoFontDescription *desc;

  cr = gtk_print_context_get_cairo_context (context);

  // Draw a red rectangle, as wide as the paper (inside the margins)
  cairo_set_source_rgb (cr, 1.0, 0, 0);
  cairo_rectangle (cr, 0, 0, gtk_print_context_get_width (context), 50);

  cairo_fill (cr);

  // Draw some lines
  cairo_move_to (cr, 20, 10);
  cairo_line_to (cr, 40, 20);
  cairo_arc (cr, 60, 60, 20, 0, M_PI);
  cairo_line_to (cr, 80, 20);

  cairo_set_source_rgb (cr, 0, 0, 0);
  cairo_set_line_width (cr, 5);
  cairo_set_line_cap (cr, CAIRO_LINE_CAP_ROUND);
  cairo_set_line_join (cr, CAIRO_LINE_JOIN_ROUND);

  cairo_stroke (cr);

  // Draw some text
  layout = gtk_print_context_create_pango_layout (context);
  pango_layout_set_text (layout, "Hello World! Printing is easy", -1);
  desc = pango_font_description_from_string ("sans 28");
  pango_layout_set_font_description (layout, desc);
  pango_font_description_free (desc);

  cairo_move_to (cr, 30, 20);
  pango_cairo_layout_path (cr, layout);

  // Font Outline
  cairo_set_source_rgb (cr, 0.93, 1.0, 0.47);
  cairo_set_line_width (cr, 0.5);
  cairo_stroke_preserve (cr);

  // Font Fill
  cairo_set_source_rgb (cr, 0, 0.0, 1.0);
  cairo_fill (cr);

  g_object_unref (layout);
}
]|

Printing support was added in GTK+ 2.10.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* create_pango_context unavailable due to return typing issues
{:argctype, "PangoContext*"}
{:argname, "rv"}
{:argtype, "Pango.Context"}
{:paramtype, :param}
{:txo, "full"} */

/* create_pango_layout unavailable due to return typing issues
{:argctype, "PangoLayout*"}
{:argname, "rv"}
{:argtype, "Pango.Layout"}
{:paramtype, :param}
{:txo, "full"} */

/* get_cairo_context unavailable due to return typing issues
{:argctype, "cairo_t*"}
{:argname, "rv"}
{:argtype, "cairo.Context"}
{:paramtype, :param}
{:txo, "none"} */

/* get_dpi_x unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_dpi_y unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_hard_margins unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "top", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "bottom", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "left", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "right", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_height unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_setup unavailable due to return typing issues
{:argctype, "GtkPageSetup*"}
{:argname, "rv"}
{:argtype, "PageSetup"}
{:paramtype, :param}
{:txo, "none"} */

/* get_pango_fontmap unavailable due to return typing issues
{:argctype, "PangoFontMap*"}
{:argname, "rv"}
{:argtype, "Pango.FontMap"}
{:paramtype, :param}
{:txo, "none"} */

/* get_width unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* set_cairo_context unavailable due to typing issues
 {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "dpi_x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "dpi_y", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```````