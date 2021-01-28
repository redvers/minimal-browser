# GtkIconTheme
<span class="source-link">[[Source]](src/gtk3/GtkIconTheme.md#L6)</span>

#GtkIconTheme provides a facility for looking up icons by name
and size. The main reason for using a name rather than simply
providing a filename is to allow different icons to be used
depending on what “icon theme” is selected
by the user. The operation of icon themes on Linux and Unix
follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
There is a fallback icon theme, named `hicolor`, where applications
should install their icons, but additional icon themes can be installed
as operating system vendors and users choose.

Named icons are similar to the deprecated [Stock Items][gtkstock],
and the distinction between the two may be a bit confusing.
A few things to keep in mind:

- Stock images usually are used in conjunction with
  [Stock Items][gtkstock], such as %GTK_STOCK_OK or
  %GTK_STOCK_OPEN. Named icons are easier to set up and therefore
  are more useful for new icons that an application wants to
  add, such as application icons or window icons.

- Stock images can only be loaded at the symbolic sizes defined
  by the #GtkIconSize enumeration, or by custom sizes defined
  by gtk_icon_size_register(), while named icons are more flexible
  and any pixel size can be specified.

- Because stock images are closely tied to stock items, and thus
  to actions in the user interface, stock images may come in
  multiple variants for different widget states or writing
  directions.

A good rule of thumb is that if there is a stock image for what
you want to use, use it, otherwise use a named icon. It turns
out that internally stock images are generally defined in
terms of one or more named icons. (An example of the
more than one case is icons that depend on writing direction;
%GTK_STOCK_GO_FORWARD uses the two themed icons
“gtk-stock-go-forward-ltr” and “gtk-stock-go-forward-rtl”.)

In many cases, named themes are used indirectly, via #GtkImage
or stock items, rather than directly, but looking up icons
directly is also simple. The #GtkIconTheme object acts
as a database of all the icons in the current theme. You
can create new #GtkIconTheme objects, but it’s much more
efficient to use the standard icon theme for the #GdkScreen
so that the icon information is shared with other people
looking up icons.
|[<!-- language="C" -->
GError *error = NULL;
GtkIconTheme *icon_theme;
GdkPixbuf *pixbuf;

icon_theme = gtk_icon_theme_get_default ();
pixbuf = gtk_icon_theme_load_icon (icon_theme,
                                   "my-icon-name", // icon name
                                   48, // icon size
                                   0,  // flags
                                   &error);
if (!pixbuf)
  {
    g_warning ("Couldn’t load icon: %s", error->message);
    g_error_free (error);
  }
else
  {
    // Use the pixbuf
    g_object_unref (pixbuf);
  }
]|


```pony
class val GtkIconTheme is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkIconTheme.md#L81)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkIconTheme val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkIconTheme](gtk3-GtkIconTheme.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkIconTheme.md#L84)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkIconTheme val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkIconTheme](gtk3-GtkIconTheme.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkIconTheme.md#L87)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkIconTheme val^
```

#### Returns

* [GtkIconTheme](gtk3-GtkIconTheme.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkIconTheme.md#L91)</span>


```pony
new val create()
: GtkIconTheme val^
```

#### Returns

* [GtkIconTheme](gtk3-GtkIconTheme.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkIconTheme.md#L77)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkIconTheme.md#L79)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### rescan_if_needed
<span class="source-link">[[Source]](src/gtk3/GtkIconTheme.md#L207)</span>


Checks to see if the icon theme has changed; if it has, any
currently cached information is discarded and will be reloaded
next time @icon_theme is accessed.


```pony
fun box rescan_if_needed()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

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

