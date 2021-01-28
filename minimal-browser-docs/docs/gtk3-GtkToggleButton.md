# GtkToggleButton
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L6)</span>

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


```pony
class val GtkToggleButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L73)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkToggleButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L76)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToggleButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L79)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkToggleButton val^
```

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L83)</span>


```pony
new val create()
: GtkToggleButton val^
```

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) val^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L86)</span>


```pony
new val new_with_label(
  label_pony: String val)
: GtkToggleButton val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) val^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L89)</span>


```pony
new val new_with_mnemonic(
  label_pony: String val)
: GtkToggleButton val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L69)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L71)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L93)</span>


Queries a #GtkToggleButton and returns its current state. Returns %TRUE if
the toggle button is pressed in and %FALSE if it is raised.


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_inconsistent
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L100)</span>


Gets the value set by gtk_toggle_button_set_inconsistent().


```pony
fun box get_inconsistent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_mode
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L106)</span>


Retrieves whether the button is displayed as a separate indicator
and label. See gtk_toggle_button_set_mode().


```pony
fun box get_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L113)</span>


Sets the status of the toggle button. Set to %TRUE if you want the
GtkToggleButton to be “pressed in”, and %FALSE to raise it.
This action causes the #GtkToggleButton::toggled signal and the
#GtkButton::clicked signal to be emitted.


```pony
fun box set_active(
  is_active_pony: Bool val)
: None val
```
#### Parameters

*   is_active_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_inconsistent
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L122)</span>


If the user has selected a range of elements (such as some text or
spreadsheet cells) that are affected by a toggle button, and the
current values in that range are inconsistent, you may want to
display the toggle in an “in between” state. This function turns on
“in between” display.  Normally you would turn off the inconsistent
state again if the user toggles the toggle button. This has to be
done manually, gtk_toggle_button_set_inconsistent() only affects
visual appearance, it doesn’t affect the semantics of the button.


```pony
fun box set_inconsistent(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_mode
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L135)</span>


Sets whether the button is displayed as a separate indicator and label.
You can call this function on a checkbutton or a radiobutton with
@draw_indicator = %FALSE to make the button look like a normal button.

This can be used to create linked strip of buttons that work like
a #GtkStackSwitcher.

This function only affects instances of classes like #GtkCheckButton
and #GtkRadioButton that derive from #GtkToggleButton,
not instances of #GtkToggleButton itself.


```pony
fun box set_mode(
  draw_indicator_pony: Bool val)
: None val
```
#### Parameters

*   draw_indicator_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### toggled
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L150)</span>


Emits the #GtkToggleButton::toggled signal on the
#GtkToggleButton. There is no good reason for an
application ever to call this function.


```pony
fun box toggled()
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

