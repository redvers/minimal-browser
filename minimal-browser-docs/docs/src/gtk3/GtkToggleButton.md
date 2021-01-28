```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF", "String"]
provides: ["GtkToggleButton val"]
*/
use "../gobject"
class val GtkToggleButton is GtkWidget
"""
A #GtkToggleButton is a #GtkButton which will remain “pressed-in” when
clicked. Clicking again will cause the toggle button to return to its
normal state.

A toggle button is created by calling either gtk_toggle_button_new() or
gtk_toggle_button_new_with_label(). If using the former, it is advisable to
pack a widget, (such as a #GtkLabel and/or a #GtkImage), into the toggle
button’s container. (See #GtkButton for more information).

The state of a #GtkToggleButton can be set specifically using
gtk_toggle_button_set_active(), and retrieved using
gtk_toggle_button_get_active().

To simply switch the state of a toggle button, use gtk_toggle_button_toggled().

# CSS nodes

GtkToggleButton has a single CSS node with name button. To differentiate
it from a plain #GtkButton, it gets the .toggle style class.

## Creating two #GtkToggleButton widgets.

|[<!-- language="C" -->
static void output_state (GtkToggleButton *source, gpointer user_data) {
  printf ("Active: %d\n", gtk_toggle_button_get_active (source));
}

void make_toggles (void) {
  GtkWidget *window, *toggle1, *toggle2;
  GtkWidget *box;
  const char *text;

  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 12);

  text = "Hi, I’m a toggle button.";
  toggle1 = gtk_toggle_button_new_with_label (text);

  // Makes this toggle button invisible
  gtk_toggle_button_set_mode (GTK_TOGGLE_BUTTON (toggle1),
                              TRUE);

  g_signal_connect (toggle1, "toggled",
                    G_CALLBACK (output_state),
                    NULL);
  gtk_container_add (GTK_CONTAINER (box), toggle1);

  text = "Hi, I’m a toggle button.";
  toggle2 = gtk_toggle_button_new_with_label (text);
  gtk_toggle_button_set_mode (GTK_TOGGLE_BUTTON (toggle2),
                              FALSE);
  g_signal_connect (toggle2, "toggled",
                    G_CALLBACK (output_state),
                    NULL);
  gtk_container_add (GTK_CONTAINER (box), toggle2);

  gtk_container_add (GTK_CONTAINER (window), box);
  gtk_widget_show_all (window);
}
]|
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
    widget = @gtk_toggle_button_new[GObjectREF]() //

  new val new_with_label(label_pony: String) =>
    widget = @gtk_toggle_button_new_with_label[GObjectREF](label_pony.cstring()) //

  new val new_with_mnemonic(label_pony: String) =>
    widget = @gtk_toggle_button_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun get_active(): Bool =>
"""
Queries a #GtkToggleButton and returns its current state. Returns %TRUE if
the toggle button is pressed in and %FALSE if it is raised.
"""
  @gtk_toggle_button_get_active[Bool](widget)

fun get_inconsistent(): Bool =>
"""
Gets the value set by gtk_toggle_button_set_inconsistent().
"""
  @gtk_toggle_button_get_inconsistent[Bool](widget)

fun get_mode(): Bool =>
"""
Retrieves whether the button is displayed as a separate indicator
and label. See gtk_toggle_button_set_mode().
"""
  @gtk_toggle_button_get_mode[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
"""
Sets the status of the toggle button. Set to %TRUE if you want the
GtkToggleButton to be “pressed in”, and %FALSE to raise it.
This action causes the #GtkToggleButton::toggled signal and the
#GtkButton::clicked signal to be emitted.
"""
  @gtk_toggle_button_set_active[None](widget, is_active_pony)

fun set_inconsistent(setting_pony: Bool): None =>
"""
If the user has selected a range of elements (such as some text or
spreadsheet cells) that are affected by a toggle button, and the
current values in that range are inconsistent, you may want to
display the toggle in an “in between” state. This function turns on
“in between” display.  Normally you would turn off the inconsistent
state again if the user toggles the toggle button. This has to be
done manually, gtk_toggle_button_set_inconsistent() only affects
visual appearance, it doesn’t affect the semantics of the button.
"""
  @gtk_toggle_button_set_inconsistent[None](widget, setting_pony)

fun set_mode(draw_indicator_pony: Bool): None =>
"""
Sets whether the button is displayed as a separate indicator and label.
You can call this function on a checkbutton or a radiobutton with
@draw_indicator = %FALSE to make the button look like a normal button.

This can be used to create linked strip of buttons that work like
a #GtkStackSwitcher.

This function only affects instances of classes like #GtkCheckButton
and #GtkRadioButton that derive from #GtkToggleButton,
not instances of #GtkToggleButton itself.
"""
  @gtk_toggle_button_set_mode[None](widget, draw_indicator_pony)

fun toggled(): None =>
"""
Emits the #GtkToggleButton::toggled signal on the
#GtkToggleButton. There is no good reason for an
application ever to call this function.
"""
  @gtk_toggle_button_toggled[None](widget)


```````