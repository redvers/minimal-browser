# GtkProgressBar
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L6)</span>

The #GtkProgressBar is typically used to display the progress of a long
running operation. It provides a visual clue that processing is underway.
The GtkProgressBar can be used in two different modes: percentage mode
and activity mode.

When an application can determine how much work needs to take place
(e.g. read a fixed number of bytes from a file) and can monitor its
progress, it can use the GtkProgressBar in percentage mode and the
user sees a growing bar indicating the percentage of the work that
has been completed. In this mode, the application is required to call
gtk_progress_bar_set_fraction() periodically to update the progress bar.

When an application has no accurate way of knowing the amount of work
to do, it can use the #GtkProgressBar in activity mode, which shows
activity by a block moving back and forth within the progress area. In
this mode, the application is required to call gtk_progress_bar_pulse()
periodically to update the progress bar.

There is quite a bit of flexibility provided to control the appearance
of the #GtkProgressBar. Functions are provided to control the orientation
of the bar, optional text can be displayed along with the bar, and the
step size used in activity mode can be set.

# CSS nodes

|[<!-- language="plain" -->
progressbar[.osd]
├── [text]
╰── trough[.empty][.full]
    ╰── progress[.pulse]
]|

GtkProgressBar has a main CSS node with name progressbar and subnodes with
names text and trough, of which the latter has a subnode named progress. The
text subnode is only present if text is shown. The progress subnode has the
style class .pulse when in activity mode. It gets the style classes .left,
.right, .top or .bottom added when the progress 'touches' the corresponding
end of the GtkProgressBar. The .osd class on the progressbar node is for use
in overlays like the one Epiphany has for page loading progress.


```pony
class val GtkProgressBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L52)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkProgressBar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L55)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkProgressBar val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L58)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkProgressBar val^
```

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L62)</span>


```pony
new val create()
: GtkProgressBar val^
```

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L48)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L50)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_inverted
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L80)</span>


Gets the value set by gtk_progress_bar_set_inverted().


```pony
fun box get_inverted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_text
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L93)</span>


Gets the value of the #GtkProgressBar:show-text property.
See gtk_progress_bar_set_show_text().


```pony
fun box get_show_text()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L100)</span>


Retrieves the text that is displayed with the progress bar,
if any, otherwise %NULL. The return value is a reference
to the text, not a copy of it, so will become invalid
if you change the text in the progress bar.


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pulse
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L111)</span>


Indicates that some progress has been made, but you don’t know how much.
Causes the progress bar to enter “activity mode,” where a block
bounces back and forth. Each call to gtk_progress_bar_pulse()
causes the block to move by a little bit (the amount of movement
per pulse is determined by gtk_progress_bar_set_pulse_step()).


```pony
fun box pulse()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_inverted
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L129)</span>


Progress bars normally grow from top to bottom or left to right.
Inverted progress bars grow in the opposite direction.


```pony
fun box set_inverted(
  inverted_pony: Bool val)
: None val
```
#### Parameters

*   inverted_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_text
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L140)</span>


Sets whether the progress bar will show text next to the bar.
The shown text is either the value of the #GtkProgressBar:text
property or, if that is %NULL, the #GtkProgressBar:fraction value,
as a percentage.

To make a progress bar that is styled and sized suitably for containing
text (even if the actual text is blank), set #GtkProgressBar:show-text to
%TRUE and #GtkProgressBar:text to the empty string (not %NULL).


```pony
fun box set_show_text(
  show_text_pony: Bool val)
: None val
```
#### Parameters

*   show_text_pony: [Bool](builtin-Bool.md) val

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

