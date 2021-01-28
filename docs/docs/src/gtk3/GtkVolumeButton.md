```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkVolumeButton val"]
*/
use "../gobject"
class val GtkVolumeButton is GtkWidget
"""
#GtkVolumeButton is a subclass of #GtkScaleButton that has
been tailored for use as a volume control widget with suitable
icons, tooltips and accessible labels.
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
    widget = @gtk_volume_button_new[GObjectREF]() //




```````