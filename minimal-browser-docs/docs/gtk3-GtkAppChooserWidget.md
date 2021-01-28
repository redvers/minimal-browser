# GtkAppChooserWidget
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L6)</span>

#GtkAppChooserWidget is a widget for selecting applications.
It is the main building block for #GtkAppChooserDialog. Most
applications only need to use the latter; but you can use
this widget as part of a larger widget if you have special needs.

#GtkAppChooserWidget offers detailed control over what applications
are shown, using the
#GtkAppChooserWidget:show-default,
#GtkAppChooserWidget:show-recommended,
#GtkAppChooserWidget:show-fallback,
#GtkAppChooserWidget:show-other and
#GtkAppChooserWidget:show-all
properties. See the #GtkAppChooser documentation for more information
about these groups of applications.

To keep track of the selected application, use the
#GtkAppChooserWidget::application-selected and #GtkAppChooserWidget::application-activated signals.

# CSS nodes

GtkAppChooserWidget has a single CSS node with name appchooser.


```pony
class val GtkAppChooserWidget is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L34)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAppChooserWidget val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAppChooserWidget](gtk3-GtkAppChooserWidget.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L37)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAppChooserWidget val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAppChooserWidget](gtk3-GtkAppChooserWidget.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L40)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAppChooserWidget val^
```

#### Returns

* [GtkAppChooserWidget](gtk3-GtkAppChooserWidget.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L44)</span>


```pony
new val create(
  content_type_pony: String val)
: GtkAppChooserWidget val^
```
#### Parameters

*   content_type_pony: [String](builtin-String.md) val

#### Returns

* [GtkAppChooserWidget](gtk3-GtkAppChooserWidget.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L30)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L32)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_default_text
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L48)</span>


Returns the text that is shown if there are not applications
that can handle the content type.


```pony
fun box get_default_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_show_all
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L57)</span>


Returns the current value of the #GtkAppChooserWidget:show-all
property.


```pony
fun box get_show_all()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_default
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L64)</span>


Returns the current value of the #GtkAppChooserWidget:show-default
property.


```pony
fun box get_show_default()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_fallback
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L71)</span>


Returns the current value of the #GtkAppChooserWidget:show-fallback
property.


```pony
fun box get_show_fallback()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_other
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L78)</span>


Returns the current value of the #GtkAppChooserWidget:show-other
property.


```pony
fun box get_show_other()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_recommended
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L85)</span>


Returns the current value of the #GtkAppChooserWidget:show-recommended
property.


```pony
fun box get_show_recommended()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_all
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L96)</span>


Sets whether the app chooser should show all applications
in a flat list.


```pony
fun box set_show_all(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_default
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L103)</span>


Sets whether the app chooser should show the default handler
for the content type in a separate section.


```pony
fun box set_show_default(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_fallback
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L110)</span>


Sets whether the app chooser should show related applications
for the content type in a separate section.


```pony
fun box set_show_fallback(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_other
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L117)</span>


Sets whether the app chooser should show applications
which are unrelated to the content type.


```pony
fun box set_show_other(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_recommended
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L124)</span>


Sets whether the app chooser should show recommended applications
for the content type in a separate section.


```pony
fun box set_show_recommended(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

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

