# GtkStyleContext
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L6)</span>

#GtkStyleContext is an object that stores styling information affecting
a widget defined by #GtkWidgetPath.

In order to construct the final style information, #GtkStyleContext
queries information from all attached #GtkStyleProviders. Style providers
can be either attached explicitly to the context through
gtk_style_context_add_provider(), or to the screen through
gtk_style_context_add_provider_for_screen(). The resulting style is a
combination of all providers’ information in priority order.

For GTK+ widgets, any #GtkStyleContext returned by
gtk_widget_get_style_context() will already have a #GtkWidgetPath, a
#GdkScreen and RTL/LTR information set. The style context will also be
updated automatically if any of these settings change on the widget.

If you are using the theming layer standalone, you will need to set a
widget path and a screen yourself to the created style context through
gtk_style_context_set_path() and possibly gtk_style_context_set_screen(). See
the “Foreign drawing“ example in gtk3-demo.

# Style Classes # {#gtkstylecontext-classes}

Widgets can add style classes to their context, which can be used to associate
different styles by class. The documentation for individual widgets lists
which style classes it uses itself, and which style classes may be added by
applications to affect their appearance.

GTK+ defines macros for a number of style classes.

# Style Regions

Widgets can also add regions with flags to their context. This feature is
deprecated and will be removed in a future GTK+ update. Please use style
classes instead.

GTK+ defines macros for a number of style regions.

# Custom styling in UI libraries and applications

If you are developing a library with custom #GtkWidgets that
render differently than standard components, you may need to add a
#GtkStyleProvider yourself with the %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK
priority, either a #GtkCssProvider or a custom object implementing the
#GtkStyleProvider interface. This way themes may still attempt
to style your UI elements in a different way if needed so.

If you are using custom styling on an applications, you probably want then
to make your style information prevail to the theme’s, so you must use
a #GtkStyleProvider with the %GTK_STYLE_PROVIDER_PRIORITY_APPLICATION
priority, keep in mind that the user settings in
`XDG_CONFIG_HOME/gtk-3.0/gtk.css` will
still take precedence over your changes, as it uses the
%GTK_STYLE_PROVIDER_PRIORITY_USER priority.


```pony
class val GtkStyleContext is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L66)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkStyleContext val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkStyleContext](gtk3-GtkStyleContext.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L69)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStyleContext val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStyleContext](gtk3-GtkStyleContext.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L72)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkStyleContext val^
```

#### Returns

* [GtkStyleContext](gtk3-GtkStyleContext.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L76)</span>


```pony
new val create()
: GtkStyleContext val^
```

#### Returns

* [GtkStyleContext](gtk3-GtkStyleContext.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L62)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L64)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_scale
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L180)</span>


Returns the scale used for assets.


```pony
fun box get_scale()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### invalidate
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L234)</span>


Invalidates @context style information, so it will be reconstructed
again. It is useful if you modify the @context and need the new
information immediately.


```pony
fun box invalidate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pop_animatable_region
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L274)</span>


Pops an animatable region from @context.
See gtk_style_context_push_animatable_region().


```pony
fun box pop_animatable_region()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### restore
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L297)</span>


Restores @context state to a previous stage.
See gtk_style_context_save().


```pony
fun box restore()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### save
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L304)</span>


Saves the @context state, so temporary modifications done through
gtk_style_context_add_class(), gtk_style_context_remove_class(),
gtk_style_context_set_state(), etc. can quickly be reverted
in one go through gtk_style_context_restore().

The matching call to gtk_style_context_restore() must be done
before GTK returns to the main loop.


```pony
fun box save()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_scale
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L344)</span>


Sets the scale to use when getting image assets for the style.


```pony
fun box set_scale(
  scale_pony: I32 val)
: None val
```
#### Parameters

*   scale_pony: [I32](builtin-I32.md) val

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

