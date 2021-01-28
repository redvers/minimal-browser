# GtkSettings
<span class="source-link">[[Source]](src/gtk3/GtkSettings.md#L6)</span>

GtkSettings provide a mechanism to share global settings between
applications.

On the X window system, this sharing is realized by an
[XSettings](http://www.freedesktop.org/wiki/Specifications/xsettings-spec)
manager that is usually part of the desktop environment, along with
utilities that let the user change these settings. In the absence of
an Xsettings manager, GTK+ reads default values for settings from
`settings.ini` files in
`/etc/gtk-3.0`, `$XDG_CONFIG_DIRS/gtk-3.0`
and `$XDG_CONFIG_HOME/gtk-3.0`.
These files must be valid key files (see #GKeyFile), and have
a section called Settings. Themes can also provide default values
for settings by installing a `settings.ini` file
next to their `gtk.css` file.

Applications can override system-wide settings by setting the property
of the GtkSettings object with g_object_set(). This should be restricted
to special cases though; GtkSettings are not meant as an application
configuration facility. When doing so, you need to be aware that settings
that are specific to individual widgets may not be available before the
widget type has been realized at least once. The following example
demonstrates a way to do this:
|[<!-- language="C" -->
  gtk_init (&argc, &argv);

  // make sure the type is realized
  g_type_class_unref (g_type_class_ref (GTK_TYPE_IMAGE_MENU_ITEM));

  g_object_set (gtk_settings_get_default (), "gtk-enable-animations", FALSE, NULL);
]|

There is one GtkSettings instance per screen. It can be obtained with
gtk_settings_get_for_screen(), but in many cases, it is more convenient
to use gtk_widget_get_settings(). gtk_settings_get_default() returns the
GtkSettings instance for the default screen.


```pony
class val GtkSettings is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkSettings.md#L49)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkSettings val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkSettings](gtk3-GtkSettings.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSettings.md#L52)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSettings val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSettings](gtk3-GtkSettings.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSettings.md#L55)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkSettings val^
```

#### Returns

* [GtkSettings](gtk3-GtkSettings.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSettings.md#L45)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSettings.md#L47)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

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

