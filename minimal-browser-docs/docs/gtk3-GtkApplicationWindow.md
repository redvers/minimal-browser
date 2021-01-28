# GtkApplicationWindow
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L6)</span>

#GtkApplicationWindow is a #GtkWindow subclass that offers some
extra functionality for better integration with #GtkApplication
features.  Notably, it can handle both the application menu as well
as the menubar. See gtk_application_set_app_menu() and
gtk_application_set_menubar().

This class implements the #GActionGroup and #GActionMap interfaces,
to let you add window-specific actions that will be exported by the
associated #GtkApplication, together with its application-wide
actions.  Window-specific actions are prefixed with the “win.”
prefix and application-wide actions are prefixed with the “app.”
prefix.  Actions must be addressed with the prefixed name when
referring to them from a #GMenuModel.

Note that widgets that are placed inside a #GtkApplicationWindow
can also activate these actions, if they implement the
#GtkActionable interface.

As with #GtkApplication, the GDK lock will be acquired when
processing actions arriving from other processes and should therefore
be held when activating actions locally (if GDK threads are enabled).

The settings #GtkSettings:gtk-shell-shows-app-menu and
#GtkSettings:gtk-shell-shows-menubar tell GTK+ whether the
desktop environment is showing the application menu and menubar
models outside the application as part of the desktop shell.
For instance, on OS X, both menus will be displayed remotely;
on Windows neither will be. gnome-shell (starting with version 3.4)
will display the application menu, but not the menubar.

If the desktop environment does not display the menubar, then
#GtkApplicationWindow will automatically show a #GtkMenuBar for it.
This behaviour can be overridden with the #GtkApplicationWindow:show-menubar
property. If the desktop environment does not display the application
menu, then it will automatically be included in the menubar or in the
windows client-side decorations.

## A GtkApplicationWindow with a menubar

|[<!-- language="C" -->
GtkApplication *app = gtk_application_new ("org.gtk.test", 0);

GtkBuilder *builder = gtk_builder_new_from_string (
    "<interface>"
    "  <menu id='menubar'>"
    "    <submenu label='_Edit'>"
    "      <item label='_Copy' action='win.copy'/>"
    "      <item label='_Paste' action='win.paste'/>"
    "    </submenu>"
    "  </menu>"
    "</interface>",
    -1);

GMenuModel *menubar = G_MENU_MODEL (gtk_builder_get_object (builder,
                                                            "menubar"));
gtk_application_set_menubar (GTK_APPLICATION (app), menubar);
g_object_unref (builder);

// ...

GtkWidget *window = gtk_application_window_new (app);
]|

## Handling fallback yourself

[A simple example](https://git.gnome.org/browse/gtk+/tree/examples/sunny.c)

The XML format understood by #GtkBuilder for #GMenuModel consists
of a toplevel `<menu>` element, which contains one or more `<item>`
elements. Each `<item>` element contains `<attribute>` and `<link>`
elements with a mandatory name attribute. `<link>` elements have the
same content model as `<menu>`. Instead of `<link name="submenu>` or
`<link name="section">`, you can use `<submenu>` or `<section>`
elements.

Attribute values can be translated using gettext, like other #GtkBuilder
content. `<attribute>` elements can be marked for translation with a
`translatable="yes"` attribute. It is also possible to specify message
context and translator comments, using the context and comments attributes.
To make use of this, the #GtkBuilder must have been given the gettext
domain to use.

The following attributes are used when constructing menu items:
- "label": a user-visible string to display
- "action": the prefixed name of the action to trigger
- "target": the parameter to use when activating the action
- "icon" and "verb-icon": names of icons that may be displayed
- "submenu-action": name of an action that may be used to determine
     if a submenu can be opened
- "hidden-when": a string used to determine when the item will be hidden.
     Possible values include "action-disabled", "action-missing", "macos-menubar".

The following attributes are used when constructing sections:
- "label": a user-visible string to use as section heading
- "display-hint": a string used to determine special formatting for the section.
    Possible values include "horizontal-buttons".
- "text-direction": a string used to determine the #GtkTextDirection to use
    when "display-hint" is set to "horizontal-buttons". Possible values
    include "rtl", "ltr", and "none".

The following attributes are used when constructing submenus:
- "label": a user-visible string to display
- "icon": icon name to display


```pony
class val GtkApplicationWindow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L116)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkApplicationWindow val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkApplicationWindow](gtk3-GtkApplicationWindow.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L119)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkApplicationWindow val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkApplicationWindow](gtk3-GtkApplicationWindow.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L122)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkApplicationWindow val^
```

#### Returns

* [GtkApplicationWindow](gtk3-GtkApplicationWindow.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L126)</span>


```pony
new val create(
  application_pony: GtkApplication val)
: GtkApplicationWindow val^
```
#### Parameters

*   application_pony: [GtkApplication](gtk3-GtkApplication.md) val

#### Returns

* [GtkApplicationWindow](gtk3-GtkApplicationWindow.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L112)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L114)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_id
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L137)</span>


Returns the unique ID of the window. If the window has not yet been added to
a #GtkApplication, returns `0`.


```pony
fun box get_id()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_show_menubar
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L144)</span>


Returns whether the window will display a menubar for the app menu
and menubar as needed.


```pony
fun box get_show_menubar()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_menubar
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L155)</span>


Sets whether the window will display a menubar for the app menu
and menubar as needed.


```pony
fun box set_show_menubar(
  show_menubar_pony: Bool val)
: None val
```
#### Parameters

*   show_menubar_pony: [Bool](builtin-Bool.md) val

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

