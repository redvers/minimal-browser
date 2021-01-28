# GtkSpinButton
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L6)</span>

A #GtkSpinButton is an ideal way to allow the user to set the value of
some attribute. Rather than having to directly type a number into a
#GtkEntry, GtkSpinButton allows the user to click on one of two arrows
to increment or decrement the displayed value. A value can still be
typed in, with the bonus that it can be checked to ensure it is in a
given range.

The main properties of a GtkSpinButton are through an adjustment.
See the #GtkAdjustment section for more details about an adjustment's
properties. Note that GtkSpinButton will by default make its entry
large enough to accomodate the lower and upper bounds of the adjustment,
which can lead to surprising results. Best practice is to set both
the #GtkEntry:width-chars and #GtkEntry:max-width-chars poperties
to the desired number of characters to display in the entry.

# CSS nodes

|[<!-- language="plain" -->
spinbutton.horizontal
├── undershoot.left
├── undershoot.right
├── entry
│   ╰── ...
├── button.down
╰── button.up
]|

|[<!-- language="plain" -->
spinbutton.vertical
├── undershoot.left
├── undershoot.right
├── button.up
├── entry
│   ╰── ...
╰── button.down
]|

GtkSpinButtons main CSS node has the name spinbutton. It creates subnodes
for the entry and the two buttons, with these names. The button nodes have
the style classes .up and .down. The GtkEntry subnodes (if present) are put
below the entry node. The orientation of the spin button is reflected in
the .vertical or .horizontal style class on the main node.

## Using a GtkSpinButton to get an integer

|[<!-- language="C" -->
// Provides a function to retrieve an integer value from a GtkSpinButton
// and creates a spin button to model percentage values.

gint
grab_int_value (GtkSpinButton *button,
                gpointer       user_data)
{
  return gtk_spin_button_get_value_as_int (button);
}

void
create_integer_spin_button (void)
{

  GtkWidget *window, *button;
  GtkAdjustment *adjustment;

  adjustment = gtk_adjustment_new (50.0, 0.0, 100.0, 1.0, 5.0, 0.0);

  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  gtk_container_set_border_width (GTK_CONTAINER (window), 5);

  // creates the spinbutton, with no decimal places
  button = gtk_spin_button_new (adjustment, 1.0, 0);
  gtk_container_add (GTK_CONTAINER (window), button);

  gtk_widget_show_all (window);
}
]|

## Using a GtkSpinButton to get a floating point value

|[<!-- language="C" -->
// Provides a function to retrieve a floating point value from a
// GtkSpinButton, and creates a high precision spin button.

gfloat
grab_float_value (GtkSpinButton *button,
                  gpointer       user_data)
{
  return gtk_spin_button_get_value (button);
}

void
create_floating_spin_button (void)
{
  GtkWidget *window, *button;
  GtkAdjustment *adjustment;

  adjustment = gtk_adjustment_new (2.500, 0.0, 5.0, 0.001, 0.1, 0.0);

  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  gtk_container_set_border_width (GTK_CONTAINER (window), 5);

  // creates the spinbutton, with three decimal places
  button = gtk_spin_button_new (adjustment, 0.001, 3);
  gtk_container_add (GTK_CONTAINER (window), button);

  gtk_widget_show_all (window);
}
]|


```pony
class val GtkSpinButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L120)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkSpinButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L123)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSpinButton val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L126)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkSpinButton val^
```

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L130)</span>


```pony
new val create(
  adjustment_pony: GtkAdjustment val,
  climb_rate_pony: F64 val,
  digits_pony: U32 val)
: GtkSpinButton val^
```
#### Parameters

*   adjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) val
*   climb_rate_pony: [F64](builtin-F64.md) val
*   digits_pony: [U32](builtin-U32.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) val^

---

### new_with_range
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L133)</span>


```pony
new val new_with_range(
  min_pony: F64 val,
  max_pony: F64 val,
  step_pony: F64 val)
: GtkSpinButton val^
```
#### Parameters

*   min_pony: [F64](builtin-F64.md) val
*   max_pony: [F64](builtin-F64.md) val
*   step_pony: [F64](builtin-F64.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L116)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L118)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_digits
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L149)</span>


Fetches the precision of @spin_button. See gtk_spin_button_set_digits().


```pony
fun box get_digits()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_numeric
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L160)</span>


Returns whether non-numeric text can be typed into the spin button.
See gtk_spin_button_set_numeric().


```pony
fun box get_numeric()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_snap_to_ticks
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L172)</span>


Returns whether the values are corrected to the nearest step.
See gtk_spin_button_set_snap_to_ticks().


```pony
fun box get_snap_to_ticks()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_value_as_int
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L193)</span>


Get the value @spin_button represented as an integer.


```pony
fun box get_value_as_int()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_wrap
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L199)</span>


Returns whether the spin button’s value wraps around to the
opposite limit when the upper or lower limit of the range is
exceeded. See gtk_spin_button_set_wrap().


```pony
fun box get_wrap()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_digits
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L211)</span>


Set the precision to be displayed by @spin_button. Up to 20 digit precision
is allowed.


```pony
fun box set_digits(
  digits_pony: U32 val)
: None val
```
#### Parameters

*   digits_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_numeric
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L223)</span>


Sets the flag that determines if non-numeric text can be typed
into the spin button.


```pony
fun box set_numeric(
  numeric_pony: Bool val)
: None val
```
#### Parameters

*   numeric_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_snap_to_ticks
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L235)</span>


Sets the policy as to whether values are corrected to the
nearest step increment when a spin button is activated after
providing an invalid value.


```pony
fun box set_snap_to_ticks(
  snap_to_ticks_pony: Bool val)
: None val
```
#### Parameters

*   snap_to_ticks_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_wrap
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L251)</span>


Sets the flag that determines if a spin button value wraps
around to the opposite limit when the upper or lower limit
of the range is exceeded.


```pony
fun box set_wrap(
  wrap_pony: Bool val)
: None val
```
#### Parameters

*   wrap_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### update
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L264)</span>


Manually force an update of the spin button.


```pony
fun box update()
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

