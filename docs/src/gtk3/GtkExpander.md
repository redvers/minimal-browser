```````pony-full-source
/*
   needs: ["Bool", "Pointer[U8 val] ref", "String", "GObjectREF", "GtkWidget val", "I32", "None"]
provides: ["GtkExpander val"]
*/
use "../gobject"
class val GtkExpander is GtkWidget
"""
A #GtkExpander allows the user to hide or show its child by clicking
on an expander triangle similar to the triangles used in a #GtkTreeView.

Normally you use an expander as you would use any other descendant
of #GtkBin; you create the child widget and use gtk_container_add()
to add it to the expander. When the expander is toggled, it will take
care of showing and hiding the child automatically.

# Special Usage

There are situations in which you may prefer to show and hide the
expanded widget yourself, such as when you want to actually create
the widget at expansion time. In this case, create a #GtkExpander
but do not add a child to it. The expander widget has an
#GtkExpander:expanded property which can be used to monitor
its expansion state. You should watch this property with a signal
connection as follows:

|[<!-- language="C" -->
static void
expander_callback (GObject    *object,
                   GParamSpec *param_spec,
                   gpointer    user_data)
{
  GtkExpander *expander;

  expander = GTK_EXPANDER (object);

  if (gtk_expander_get_expanded (expander))
    {
      // Show or create widgets
    }
  else
    {
      // Hide or destroy widgets
    }
}

static void
create_expander (void)
{
  GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
  g_signal_connect (expander, "notify::expanded",
                    G_CALLBACK (expander_callback), NULL);

  // ...
}
]|

# GtkExpander as GtkBuildable

The GtkExpander implementation of the GtkBuildable interface supports
placing a child in the label position by specifying “label” as the
“type” attribute of a <child> element. A normal content child can be
specified without specifying a <child> type attribute.

An example of a UI definition fragment with GtkExpander:
|[
<object class="GtkExpander">
  <child type="label">
    <object class="GtkLabel" id="expander-label"/>
  </child>
  <child>
    <object class="GtkEntry" id="expander-content"/>
  </child>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
expander
├── title
│   ├── arrow
│   ╰── <label widget>
╰── <child>
]|

GtkExpander has three CSS nodes, the main node with the name expander,
a subnode with name title and node below it with name arrow. The arrow of an
expander that is showing its child gets the :checked pseudoclass added to it.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(label_pony: String) =>
    widget = @gtk_expander_new[GObjectREF](label_pony.cstring()) //

  new val new_with_mnemonic(label_pony: String) =>
    widget = @gtk_expander_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun get_expanded(): Bool =>
"""
Queries a #GtkExpander and returns its current state. Returns %TRUE
if the child widget is revealed.

See gtk_expander_set_expanded().
"""
  @gtk_expander_get_expanded[Bool](widget)

fun get_label(): String =>
"""
Fetches the text from a label widget including any embedded
underlines indicating mnemonics and Pango markup, as set by
gtk_expander_set_label(). If the label text has not been set the
return value will be %NULL. This will be the case if you create an
empty button with gtk_button_new() to use as a container.

Note that this function behaved differently in versions prior to
2.14 and used to return the label text stripped of embedded
underlines indicating mnemonics and Pango markup. This problem can
be avoided by fetching the label text directly from the label
widget.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_expander_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_label_fill(): Bool =>
"""
Returns whether the label widget will fill all available
horizontal space allocated to @expander.
"""
  @gtk_expander_get_label_fill[Bool](widget)

/* Needs conversion code 
  fun get_label_widget(): GtkWidget val =>
    @gtk_expander_get_label_widget[GObjectREF](widget)
*/

fun get_resize_toplevel(): Bool =>
"""
Returns whether the expander will resize the toplevel widget
containing the expander upon resizing and collpasing.
"""
  @gtk_expander_get_resize_toplevel[Bool](widget)

fun get_spacing(): I32 =>
"""
Gets the value set by gtk_expander_set_spacing().
"""
  @gtk_expander_get_spacing[I32](widget)

fun get_use_markup(): Bool =>
"""
Returns whether the label’s text is interpreted as marked up with
the [Pango text markup language][PangoMarkupFormat].
See gtk_expander_set_use_markup().
"""
  @gtk_expander_get_use_markup[Bool](widget)

fun get_use_underline(): Bool =>
"""
Returns whether an embedded underline in the expander label
indicates a mnemonic. See gtk_expander_set_use_underline().
"""
  @gtk_expander_get_use_underline[Bool](widget)

fun set_expanded(expanded_pony: Bool): None =>
"""
Sets the state of the expander. Set to %TRUE, if you want
the child widget to be revealed, and %FALSE if you want the
child widget to be hidden.
"""
  @gtk_expander_set_expanded[None](widget, expanded_pony)

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_label_fill(label_fill_pony: Bool): None =>
"""
Sets whether the label widget should fill all available
horizontal space allocated to @expander.

Note that this function has no effect since 3.20.
"""
  @gtk_expander_set_label_fill[None](widget, label_fill_pony)

fun set_label_widget(label_widget_pony: GtkWidget val): None =>
"""
Set the label widget for the expander. This is the widget
that will appear embedded alongside the expander arrow.
"""
  @gtk_expander_set_label_widget[None](widget, label_widget_pony.gtkwidget())

fun set_resize_toplevel(resize_toplevel_pony: Bool): None =>
"""
Sets whether the expander will resize the toplevel widget
containing the expander upon resizing and collpasing.
"""
  @gtk_expander_set_resize_toplevel[None](widget, resize_toplevel_pony)

fun set_spacing(spacing_pony: I32): None =>
"""
Sets the spacing field of @expander, which is the number of
pixels to place between expander and the child.
"""
  @gtk_expander_set_spacing[None](widget, spacing_pony)

fun set_use_markup(use_markup_pony: Bool): None =>
"""
Sets whether the text of the label contains markup in
[Pango’s text markup language][PangoMarkupFormat].
See gtk_label_set_markup().
"""
  @gtk_expander_set_use_markup[None](widget, use_markup_pony)

fun set_use_underline(use_underline_pony: Bool): None =>
"""
If true, an underline in the text of the expander label indicates
the next character should be used for the mnemonic accelerator key.
"""
  @gtk_expander_set_use_underline[None](widget, use_underline_pony)


```````