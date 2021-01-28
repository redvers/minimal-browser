```````pony-full-source
/*
   needs: ["None", "GObjectREF"]
provides: ["GtkToolPalette val"]
*/
use "../gobject"
class val GtkToolPalette is GtkWidget
"""
A #GtkToolPalette allows you to add #GtkToolItems to a palette-like
container with different categories and drag and drop support.

A #GtkToolPalette is created with a call to gtk_tool_palette_new().

#GtkToolItems cannot be added directly to a #GtkToolPalette -
instead they are added to a #GtkToolItemGroup which can than be added
to a #GtkToolPalette. To add a #GtkToolItemGroup to a #GtkToolPalette,
use gtk_container_add().

|[<!-- language="C" -->
GtkWidget *palette, *group;
GtkToolItem *item;

palette = gtk_tool_palette_new ();
group = gtk_tool_item_group_new (_("Test Category"));
gtk_container_add (GTK_CONTAINER (palette), group);

item = gtk_tool_button_new (NULL, _("_Open"));
gtk_tool_button_set_icon_name (GTK_TOOL_BUTTON (item), "document-open");
gtk_tool_item_group_insert (GTK_TOOL_ITEM_GROUP (group), item, -1);
]|

The easiest way to use drag and drop with #GtkToolPalette is to call
gtk_tool_palette_add_drag_dest() with the desired drag source @palette
and the desired drag target @widget. Then gtk_tool_palette_get_drag_item()
can be used to get the dragged item in the #GtkWidget::drag-data-received
signal handler of the drag target.

|[<!-- language="C" -->
static void
passive_canvas_drag_data_received (GtkWidget        *widget,
                                   GdkDragContext   *context,
                                   gint              x,
                                   gint              y,
                                   GtkSelectionData *selection,
                                   guint             info,
                                   guint             time,
                                   gpointer          data)
{
  GtkWidget *palette;
  GtkWidget *item;

  // Get the dragged item
  palette = gtk_widget_get_ancestor (gtk_drag_get_source_widget (context),
                                     GTK_TYPE_TOOL_PALETTE);
  if (palette != NULL)
    item = gtk_tool_palette_get_drag_item (GTK_TOOL_PALETTE (palette),
                                           selection);

  // Do something with item
}

GtkWidget *target, palette;

palette = gtk_tool_palette_new ();
target = gtk_drawing_area_new ();

g_signal_connect (G_OBJECT (target), "drag-data-received",
                  G_CALLBACK (passive_canvas_drag_data_received), NULL);
gtk_tool_palette_add_drag_dest (GTK_TOOL_PALETTE (palette), target,
                                GTK_DEST_DEFAULT_ALL,
                                GTK_TOOL_PALETTE_DRAG_ITEMS,
                                GDK_ACTION_COPY);
]|

# CSS nodes

GtkToolPalette has a single CSS node named toolpalette.
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
    widget = @gtk_tool_palette_new[GObjectREF]() //


/* add_drag_dest unavailable due to typing issues
 {:doh, %{argctype: "GtkDestDefaults", argname: "flags", argtype: "DestDefaults", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkToolPaletteDragTargets", argname: "targets", argtype: "ToolPaletteDragTargets", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkDragAction", argname: "actions", argtype: "Gdk.DragAction", paramtype: :param, txo: "none"}}
*/

/* get_drag_item unavailable due to typing issues
 {:doh, %{argctype: "const GtkSelectionData*", argname: "selection", argtype: "SelectionData", paramtype: :param, txo: "none"}}
*/

/* get_drop_group unavailable due to return typing issues
{:argctype, "GtkToolItemGroup*"}
{:argname, "rv"}
{:argtype, "ToolItemGroup"}
{:paramtype, :param}
{:txo, "none"} */

/* get_drop_item unavailable due to return typing issues
{:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"} */

/* get_exclusive unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* get_expand unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* get_group_position unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* get_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_size unavailable due to return typing issues
{:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "gint"}
{:paramtype, :param}
{:txo, "none"} */

/* get_style unavailable due to return typing issues
{:argctype, "GtkToolbarStyle"}
{:argname, "rv"}
{:argtype, "ToolbarStyle"}
{:paramtype, :param}
{:txo, "none"} */

/* get_vadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* set_drag_source unavailable due to typing issues
 {:doh, %{argctype: "GtkToolPaletteDragTargets", argname: "targets", argtype: "ToolPaletteDragTargets", paramtype: :param, txo: "none"}}
*/

/* set_exclusive unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* set_expand unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* set_group_position unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* set_icon_size unavailable due to typing issues
 {:doh, %{argctype: "GtkIconSize", argname: "icon_size", argtype: "gint", paramtype: :param, txo: "none"}}
*/

/* set_style unavailable due to typing issues
 {:doh, %{argctype: "GtkToolbarStyle", argname: "style", argtype: "ToolbarStyle", paramtype: :param, txo: "none"}}
*/

fun unset_icon_size(): None =>
"""
Unsets the tool palette icon size set with gtk_tool_palette_set_icon_size(),
so that user preferences will be used to determine the icon size.
"""
  @gtk_tool_palette_unset_icon_size[None](widget)

fun unset_style(): None =>
"""
Unsets a toolbar style set with gtk_tool_palette_set_style(),
so that user preferences will be used to determine the toolbar style.
"""
  @gtk_tool_palette_unset_style[None](widget)


```````