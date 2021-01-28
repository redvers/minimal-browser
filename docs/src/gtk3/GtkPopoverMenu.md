```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkPopoverMenu val"]
*/
use "../gobject"
class val GtkPopoverMenu is GtkWidget
"""
GtkPopoverMenu is a subclass of #GtkPopover that treats its
children like menus and allows switching between them. It is
meant to be used primarily together with #GtkModelButton, but
any widget can be used, such as #GtkSpinButton or #GtkScale.
In this respect, GtkPopoverMenu is more flexible than popovers
that are created from a #GMenuModel with gtk_popover_new_from_model().

To add a child as a submenu, set the #GtkPopoverMenu:submenu
child property to the name of the submenu. To let the user open
this submenu, add a #GtkModelButton whose #GtkModelButton:menu-name
property is set to the name you've given to the submenu.

By convention, the first child of a submenu should be a #GtkModelButton
to switch back to the parent menu. Such a button should use the
#GtkModelButton:inverted and #GtkModelButton:centered properties
to achieve a title-like appearance and place the submenu indicator
at the opposite side. To switch back to the main menu, use "main"
as the menu name.

# Example

|[
<object class="GtkPopoverMenu">
  <child>
    <object class="GtkBox">
      <property name="visible">True</property>
      <property name="margin">10</property>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="action-name">win.frob</property>
          <property name="text" translatable="yes">Frob</property>
        </object>
      </child>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="menu-name">more</property>
          <property name="text" translatable="yes">More</property>
        </object>
      </child>
    </object>
  </child>
  <child>
    <object class="GtkBox">
      <property name="visible">True</property>
      <property name="margin">10</property>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="action-name">win.foo</property>
          <property name="text" translatable="yes">Foo</property>
        </object>
      </child>
      <child>
        <object class="GtkModelButton">
          <property name="visible">True</property>
          <property name="action-name">win.bar</property>
          <property name="text" translatable="yes">Bar</property>
        </object>
      </child>
    </object>
    <packing>
      <property name="submenu">more</property>
    </packing>
  </child>
</object>
]|

Just like normal popovers created using gtk_popover_new_from_model,
#GtkPopoverMenu instances have a single css node called "popover"
and get the .menu style class.
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
    widget = @gtk_popover_menu_new[GObjectREF]() //


/* open_submenu unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````