# GtkRange
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L6)</span>

#GtkRange is the common base class for widgets which visualize an
adjustment, e.g #GtkScale or #GtkScrollbar.

Apart from signals for monitoring the parameters of the adjustment,
#GtkRange provides properties and methods for influencing the sensitivity
of the “steppers”. It also provides properties and methods for setting a
“fill level” on range widgets. See gtk_range_set_fill_level().


```pony
class val GtkRange is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L20)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRange val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRange](gtk3-GtkRange.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L23)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRange val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRange](gtk3-GtkRange.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L26)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRange val^
```

#### Returns

* [GtkRange](gtk3-GtkRange.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L18)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_flippable
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L46)</span>


Gets the value set by gtk_range_set_flippable().


```pony
fun box get_flippable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_inverted
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L52)</span>


Gets the value set by gtk_range_set_inverted().


```pony
fun box get_inverted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_min_slider_size
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L65)</span>


This function is useful mainly for #GtkRange subclasses.

See gtk_range_set_min_slider_size().


```pony
fun box get_min_slider_size()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_restrict_to_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L77)</span>


Gets whether the range is restricted to the fill level.


```pony
fun box get_restrict_to_fill_level()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_round_digits
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L83)</span>


Gets the number of digits to round the value to when
it changes. See #GtkRange::change-value.


```pony
fun box get_round_digits()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_show_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L90)</span>


Gets whether the range displays the fill level graphically.


```pony
fun box get_show_fill_level()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_slider_size_fixed
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L101)</span>


This function is useful mainly for #GtkRange subclasses.

See gtk_range_set_slider_size_fixed().


```pony
fun box get_slider_size_fixed()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_flippable
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L131)</span>


If a range is flippable, it will switch its direction if it is
horizontal and its direction is %GTK_TEXT_DIR_RTL.

See gtk_widget_get_direction().


```pony
fun box set_flippable(
  flippable_pony: Bool val)
: None val
```
#### Parameters

*   flippable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_inverted
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L145)</span>


Ranges normally move from lower to higher values as the
slider moves from top to bottom or left to right. Inverted
ranges have higher values at the top or on the right rather than
on the bottom or left.


```pony
fun box set_inverted(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_slider_size
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L158)</span>


Sets the minimum size of the range’s slider.

This function is useful mainly for #GtkRange subclasses.


```pony
fun box set_min_slider_size(
  min_size_pony: I32 val)
: None val
```
#### Parameters

*   min_size_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_restrict_to_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L171)</span>


Sets whether the slider is restricted to the fill level. See
gtk_range_set_fill_level() for a general description of the fill
level concept.


```pony
fun box set_restrict_to_fill_level(
  restrict_to_fill_level_pony: Bool val)
: None val
```
#### Parameters

*   restrict_to_fill_level_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_round_digits
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L179)</span>


Sets the number of digits to round the value to when
it changes. See #GtkRange::change-value.


```pony
fun box set_round_digits(
  round_digits_pony: I32 val)
: None val
```
#### Parameters

*   round_digits_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L186)</span>


Sets whether a graphical fill level is show on the trough. See
gtk_range_set_fill_level() for a general description of the fill
level concept.


```pony
fun box set_show_fill_level(
  show_fill_level_pony: Bool val)
: None val
```
#### Parameters

*   show_fill_level_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_slider_size_fixed
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L194)</span>


Sets whether the range’s slider has a fixed size, or a size that
depends on its adjustment’s page size.

This function is useful mainly for #GtkRange subclasses.


```pony
fun box set_slider_size_fixed(
  size_fixed_pony: Bool val)
: None val
```
#### Parameters

*   size_fixed_pony: [Bool](builtin-Bool.md) val

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

