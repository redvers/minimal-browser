```````pony-full-source
/*
   needs: ["GObjectREF", "String"]
provides: ["GtkCheckButton val"]
*/
use "../gobject"
class val GtkCheckButton is GtkWidget
"""
A #GtkCheckButton places a discrete #GtkToggleButton next to a widget,
(usually a #GtkLabel). See the section on #GtkToggleButton widgets for
more information about toggle/check buttons.

The important signal ( #GtkToggleButton::toggled ) is also inherited from
#GtkToggleButton.

# CSS nodes

|[<!-- language="plain" -->
checkbutton
├── check
╰── <child>
]|

A GtkCheckButton with indicator (see gtk_toggle_button_set_mode()) has a
main CSS node with name checkbutton and a subnode with name check.

|[<!-- language="plain" -->
button.check
├── check
╰── <child>
]|

A GtkCheckButton without indicator changes the name of its main node
to button and adds a .check style class to it. The subnode is invisible
in this case.
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
    widget = @gtk_check_button_new[GObjectREF]() //

  new val new_with_label(label_pony: String) =>
    widget = @gtk_check_button_new_with_label[GObjectREF](label_pony.cstring()) //

  new val new_with_mnemonic(label_pony: String) =>
    widget = @gtk_check_button_new_with_mnemonic[GObjectREF](label_pony.cstring()) //




```````