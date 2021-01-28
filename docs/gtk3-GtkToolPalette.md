# GtkToolPalette
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L6)</span>

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


```pony
class val GtkToolPalette is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L82)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkToolPalette val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkToolPalette](gtk3-GtkToolPalette.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L85)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolPalette val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolPalette](gtk3-GtkToolPalette.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L88)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkToolPalette val^
```

#### Returns

* [GtkToolPalette](gtk3-GtkToolPalette.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L92)</span>


```pony
new val create()
: GtkToolPalette val^
```

#### Returns

* [GtkToolPalette](gtk3-GtkToolPalette.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L78)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L80)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### unset_icon_size
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L184)</span>


Unsets the tool palette icon size set with gtk_tool_palette_set_icon_size(),
so that user preferences will be used to determine the icon size.


```pony
fun box unset_icon_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unset_style
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L191)</span>


Unsets a toolbar style set with gtk_tool_palette_set_style(),
so that user preferences will be used to determine the toolbar style.


```pony
fun box unset_style()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### show_all
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L4)</span>


```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L7)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


```pony
fun box signal_connect[V: Any #share](
  detailed_signal: String val,
  c_handler: @{(GObjectREF, V)}[V] val,
  data: V)
: U64 val
```
#### Parameters

*   detailed_signal: [String](builtin-String.md) val
*   c_handler: @{(GObjectREF, V)}[V] val
*   data: V

#### Returns

* [U64](builtin-U64.md) val

---

