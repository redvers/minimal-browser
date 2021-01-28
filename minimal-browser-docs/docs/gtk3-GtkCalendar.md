# GtkCalendar
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L6)</span>

#GtkCalendar is a widget that displays a Gregorian calendar, one month
at a time. It can be created with gtk_calendar_new().

The month and year currently displayed can be altered with
gtk_calendar_select_month(). The exact day can be selected from the
displayed month using gtk_calendar_select_day().

To place a visual marker on a particular day, use gtk_calendar_mark_day()
and to remove the marker, gtk_calendar_unmark_day(). Alternative, all
marks can be cleared with gtk_calendar_clear_marks().

The way in which the calendar itself is displayed can be altered using
gtk_calendar_set_display_options().

The selected date can be retrieved from a #GtkCalendar using
gtk_calendar_get_date().

Users should be aware that, although the Gregorian calendar is the
legal calendar in most countries, it was adopted progressively
between 1582 and 1929. Display before these dates is likely to be
historically incorrect.


```pony
class val GtkCalendar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L34)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCalendar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCalendar](gtk3-GtkCalendar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L37)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCalendar val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCalendar](gtk3-GtkCalendar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L40)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCalendar val^
```

#### Returns

* [GtkCalendar](gtk3-GtkCalendar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L44)</span>


```pony
new val create()
: GtkCalendar val^
```

#### Returns

* [GtkCalendar](gtk3-GtkCalendar.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L30)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L32)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### clear_marks
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L48)</span>


Remove all visual markers.


```pony
fun box clear_marks()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_day_is_marked
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L60)</span>


Returns if the @day of the @calendar is already marked.


```pony
fun box get_day_is_marked(
  day_pony: U32 val)
: Bool val
```
#### Parameters

*   day_pony: [U32](builtin-U32.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_detail_height_rows
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L66)</span>


Queries the height of detail cells, in rows.
See #GtkCalendar:detail-width-chars.


```pony
fun box get_detail_height_rows()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_detail_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L73)</span>


Queries the width of detail cells, in characters.
See #GtkCalendar:detail-width-chars.


```pony
fun box get_detail_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### mark_day
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L87)</span>


Places a visual marker on a particular day.


```pony
fun box mark_day(
  day_pony: U32 val)
: None val
```
#### Parameters

*   day_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### select_day
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L93)</span>


Selects a day from the current month.


```pony
fun box select_day(
  day_pony: U32 val)
: None val
```
#### Parameters

*   day_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### select_month
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L99)</span>


Shifts the calendar to a different month.


```pony
fun box select_month(
  month_pony: U32 val,
  year_pony: U32 val)
: None val
```
#### Parameters

*   month_pony: [U32](builtin-U32.md) val
*   year_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_detail_height_rows
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L111)</span>


Updates the height of detail cells.
See #GtkCalendar:detail-height-rows.


```pony
fun box set_detail_height_rows(
  rows_pony: I32 val)
: None val
```
#### Parameters

*   rows_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_detail_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L118)</span>


Updates the width of detail cells.
See #GtkCalendar:detail-width-chars.


```pony
fun box set_detail_width_chars(
  chars_pony: I32 val)
: None val
```
#### Parameters

*   chars_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### unmark_day
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L129)</span>


Removes the visual marker from a particular day.


```pony
fun box unmark_day(
  day_pony: U32 val)
: None val
```
#### Parameters

*   day_pony: [U32](builtin-U32.md) val

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

