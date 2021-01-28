```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkTearoffMenuItem val"]
*/
use "../gobject"
class val GtkTearoffMenuItem is GtkWidget
"""
A #GtkTearoffMenuItem is a special #GtkMenuItem which is used to
tear off and reattach its menu.

When its menu is shown normally, the #GtkTearoffMenuItem is drawn as a
dotted line indicating that the menu can be torn off.  Activating it
causes its menu to be torn off and displayed in its own window
as a tearoff menu.

When its menu is shown as a tearoff menu, the #GtkTearoffMenuItem is drawn
as a dotted line which has a left pointing arrow graphic indicating that
the tearoff menu can be reattached.  Activating it will erase the tearoff
menu window.

> #GtkTearoffMenuItem is deprecated and should not be used in newly
> written code. Menus are not meant to be torn around.
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
    widget = @gtk_tearoff_menu_item_new[GObjectREF]() //




```````