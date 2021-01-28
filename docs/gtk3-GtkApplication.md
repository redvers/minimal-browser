# GtkApplication
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L6)</span>

#GtkApplication is a class that handles many important aspects
of a GTK+ application in a convenient fashion, without enforcing
a one-size-fits-all application model.

Currently, GtkApplication handles GTK+ initialization, application
uniqueness, session management, provides some basic scriptability and
desktop shell integration by exporting actions and menus and manages a
list of toplevel windows whose life-cycle is automatically tied to the
life-cycle of your application.

While GtkApplication works fine with plain #GtkWindows, it is recommended
to use it together with #GtkApplicationWindow.

When GDK threads are enabled, GtkApplication will acquire the GDK
lock when invoking actions that arrive from other processes.  The GDK
lock is not touched for local action invocations.  In order to have
actions invoked in a predictable context it is therefore recommended
that the GDK lock be held while invoking actions locally with
g_action_group_activate_action().  The same applies to actions
associated with #GtkApplicationWindow and to the “activate” and
“open” #GApplication methods.

## Automatic resources ## {#automatic-resources}

#GtkApplication will automatically load menus from the #GtkBuilder
resource located at "gtk/menus.ui", relative to the application's
resource base path (see g_application_set_resource_base_path()).  The
menu with the ID "app-menu" is taken as the application's app menu
and the menu with the ID "menubar" is taken as the application's
menubar.  Additional menus (most interesting submenus) can be named
and accessed via gtk_application_get_menu_by_id() which allows for
dynamic population of a part of the menu structure.

If the resources "gtk/menus-appmenu.ui" or "gtk/menus-traditional.ui" are
present then these files will be used in preference, depending on the value
of gtk_application_prefers_app_menu(). If the resource "gtk/menus-common.ui"
is present it will be loaded as well. This is useful for storing items that
are referenced from both "gtk/menus-appmenu.ui" and
"gtk/menus-traditional.ui".

It is also possible to provide the menus manually using
gtk_application_set_app_menu() and gtk_application_set_menubar().

#GtkApplication will also automatically setup an icon search path for
the default icon theme by appending "icons" to the resource base
path.  This allows your application to easily store its icons as
resources.  See gtk_icon_theme_add_resource_path() for more
information.

If there is a resource located at "gtk/help-overlay.ui" which
defines a #GtkShortcutsWindow with ID "help_overlay" then GtkApplication
associates an instance of this shortcuts window with each
#GtkApplicationWindow and sets up keyboard accelerators (Control-F1
and Control-?) to open it. To create a menu item that displays the
shortcuts window, associate the item with the action win.show-help-overlay.

## A simple application ## {#gtkapplication}

[A simple example](https://git.gnome.org/browse/gtk+/tree/examples/bp/bloatpad.c)

GtkApplication optionally registers with a session manager
of the users session (if you set the #GtkApplication:register-session
property) and offers various functionality related to the session
life-cycle.

An application can block various ways to end the session with
the gtk_application_inhibit() function. Typical use cases for
this kind of inhibiting are long-running, uninterruptible operations,
such as burning a CD or performing a disk backup. The session
manager may not honor the inhibitor, but it can be expected to
inform the user about the negative consequences of ending the
session while inhibitors are present.

## See Also ## {#seealso}
[HowDoI: Using GtkApplication](https://wiki.gnome.org/HowDoI/GtkApplication),
[Getting Started with GTK+: Basics](https://developer.gnome.org/gtk3/stable/gtk-getting-started.html#id-1.2.3.3)


```pony
class val GtkApplication is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L89)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkApplication val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L92)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkApplication val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L95)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkApplication val^
```

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L99)</span>


```pony
new val create(
  application_id_pony: String val,
  flags_pony: GApplicationFlags val)
: GtkApplication val^
```
#### Parameters

*   application_id_pony: [String](builtin-String.md) val
*   flags_pony: [GApplicationFlags](gtk3-GApplicationFlags.md) val

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L85)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L87)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### prefers_app_menu
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L186)</span>


Determines if the desktop environment in which the application is
running would prefer an application menu be shown.

If this function returns %TRUE then the application should call
gtk_application_set_app_menu() with the contents of an application
menu, which will be shown by the desktop environment.  If it returns
%FALSE then you should consider using an alternate approach, such as
a menubar.

The value returned by this function is purely advisory and you are
free to ignore it.  If you call gtk_application_set_app_menu() even
if the desktop environment doesn't support app menus, then a fallback
will be provided.

Applications are similarly free not to set an app menu even if the
desktop environment wants to show one.  In that case, a fallback will
also be created by the desktop environment (GNOME, for example, uses
a menu with only a "Quit" item in it).

The value returned by this function never changes.  Once it returns a
particular value, it is guaranteed to always return the same value.

You may only call this function after the application has been
registered and after the base startup handler has run.  You're most
likely to want to use this from your own startup handler.  It may
also make sense to consult this function while constructing UI (in
activate, open or an action activation handler) in order to determine
if you should show a gear menu or not.

This function will return %FALSE on Mac OS and a default app menu
will be created automatically with the "usual" contents of that menu
typical to most Mac OS applications.  If you call
gtk_application_set_app_menu() anyway, then this menu will be
replaced with your own.


```pony
fun box prefers_app_menu()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### uninhibit
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L247)</span>


Removes an inhibitor that has been established with gtk_application_inhibit().
Inhibitors are also cleared when the application exits.


```pony
fun box uninhibit(
  cookie_pony: U32 val)
: None val
```
#### Parameters

*   cookie_pony: [U32](builtin-U32.md) val

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

