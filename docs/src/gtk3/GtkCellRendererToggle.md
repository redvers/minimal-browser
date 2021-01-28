```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkCellRendererToggle val"]
*/
use "../gobject"
class val GtkCellRendererToggle is GtkWidget
"""
#GtkCellRendererToggle renders a toggle button in a cell. The
button is drawn as a radio or a checkbutton, depending on the
#GtkCellRendererToggle:radio property.
When activated, it emits the #GtkCellRendererToggle::toggled signal.
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
    widget = @gtk_cell_renderer_toggle_new[GObjectREF]() //


fun get_activatable(): Bool =>
"""
Returns whether the cell renderer is activatable. See
gtk_cell_renderer_toggle_set_activatable().
"""
  @gtk_cell_renderer_toggle_get_activatable[Bool](widget)

fun get_active(): Bool =>
"""
Returns whether the cell renderer is active. See
gtk_cell_renderer_toggle_set_active().
"""
  @gtk_cell_renderer_toggle_get_active[Bool](widget)

fun get_radio(): Bool =>
"""
Returns whether we’re rendering radio toggles rather than checkboxes.
"""
  @gtk_cell_renderer_toggle_get_radio[Bool](widget)

fun set_activatable(setting_pony: Bool): None =>
"""
Makes the cell renderer activatable.
"""
  @gtk_cell_renderer_toggle_set_activatable[None](widget, setting_pony)

fun set_active(setting_pony: Bool): None =>
"""
Activates or deactivates a cell renderer.
"""
  @gtk_cell_renderer_toggle_set_active[None](widget, setting_pony)

fun set_radio(radio_pony: Bool): None =>
"""
If @radio is %TRUE, the cell renderer renders a radio toggle
(i.e. a toggle in a group of mutually-exclusive toggles).
If %FALSE, it renders a check toggle (a standalone boolean option).
This can be set globally for the cell renderer, or changed just
before rendering each cell in the model (for #GtkTreeView, you set
up a per-row setting using #GtkTreeViewColumn to associate model
columns with cell renderer properties).
"""
  @gtk_cell_renderer_toggle_set_radio[None](widget, radio_pony)


```````