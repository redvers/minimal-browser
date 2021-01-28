# GtkAboutDialog
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L6)</span>

The GtkAboutDialog offers a simple way to display information about
a program like its logo, name, copyright, website and license. It is
also possible to give credits to the authors, documenters, translators
and artists who have worked on the program. An about dialog is typically
opened when the user selects the `About` option from the `Help` menu.
All parts of the dialog are optional.

About dialogs often contain links and email addresses. GtkAboutDialog
displays these as clickable links. By default, it calls gtk_show_uri_on_window()
when a user clicks one. The behaviour can be overridden with the
#GtkAboutDialog::activate-link signal.

To specify a person with an email address, use a string like
"Edgar Allan Poe <edgar\@poe.com>". To specify a website with a title,
use a string like "GTK+ team http://www.gtk.org".

To make constructing a GtkAboutDialog as convenient as possible, you can
use the function gtk_show_about_dialog() which constructs and shows a dialog
and keeps it around so that it can be shown again.

Note that GTK+ sets a default title of `_("About %s")` on the dialog
window (where \%s is replaced by the name of the application, but in
order to ensure proper translation of the title, applications should
set the title property explicitly when constructing a GtkAboutDialog,
as shown in the following example:
|[<!-- language="C" -->
GdkPixbuf *example_logo = gdk_pixbuf_new_from_file ("./logo.png", NULL);
gtk_show_about_dialog (NULL,
                       "program-name", "ExampleCode",
                       "logo", example_logo,
                       "title", _("About ExampleCode"),
                       NULL);
]|

It is also possible to show a #GtkAboutDialog like any other #GtkDialog,
e.g. using gtk_dialog_run(). In this case, you might need to know that
the “Close” button returns the #GTK_RESPONSE_CANCEL response id.


```pony
class val GtkAboutDialog is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L50)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAboutDialog val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L53)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAboutDialog val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L56)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAboutDialog val^
```

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L60)</span>


```pony
new val create()
: GtkAboutDialog val^
```

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L46)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L48)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_comments
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L83)</span>


Returns the comments string.


```pony
fun box get_comments()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_copyright
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L91)</span>


Returns the copyright string.


```pony
fun box get_copyright()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L106)</span>


Returns the license information.


```pony
fun box get_license()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_logo_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L128)</span>


Returns the icon name displayed as logo in the about dialog.


```pony
fun box get_logo_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_program_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L136)</span>


Returns the program name displayed in the about dialog.


```pony
fun box get_program_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_translator_credits
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L144)</span>


Returns the translator credits string which is displayed
in the translators tab of the secondary credits dialog.


```pony
fun box get_translator_credits()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_version
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L153)</span>


Returns the version string.


```pony
fun box get_version()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_website
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L161)</span>


Returns the website URL.


```pony
fun box get_website()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_website_label
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L169)</span>


Returns the label used for the website link.


```pony
fun box get_website_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_wrap_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L177)</span>


Returns whether the license text in @about is
automatically wrapped.


```pony
fun box get_wrap_license()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_wrap_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L240)</span>


Sets whether the license text in @about is
automatically wrapped.


```pony
fun box set_wrap_license(
  wrap_license_pony: Bool val)
: None val
```
#### Parameters

*   wrap_license_pony: [Bool](builtin-Bool.md) val

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

