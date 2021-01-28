# Gtk
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L2)</span>
```pony
primitive val Gtk
```

## Constructors

### create
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L2)</span>


```pony
new val create()
: Gtk val^
```

#### Returns

* [Gtk](gtk3-Gtk.md) val^

---

## Public Functions

### check_version
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L147)</span>


Checks that the GTK+ library in use is compatible with the
given version. Generally you would pass in the constants
#GTK_MAJOR_VERSION, #GTK_MINOR_VERSION, #GTK_MICRO_VERSION
as the three arguments to this function; that produces
a check that the library in use is compatible with
the version of GTK+ the application or module was compiled
against.

Compatibility is defined by two things: first the version
of the running library is newer than the version
@required_major.required_minor.@required_micro. Second
the running library must be binary compatible with the
version @required_major.required_minor.@required_micro
(same major version.)

This function is primarily for GTK+ modules; the module
can call this function to check that it wasn’t loaded
into an incompatible version of GTK+. However, such a
check isn’t completely reliable, since the module may be
linked against an old version of GTK+ and calling the
old version of gtk_check_version(), but still get loaded
into an application using a newer version of GTK+.


```pony
fun box check_version(
  required_major_pony: U32 val,
  required_minor_pony: U32 val,
  required_micro_pony: U32 val)
: String val
```
#### Parameters

*   required_major_pony: [U32](builtin-U32.md) val
*   required_minor_pony: [U32](builtin-U32.md) val
*   required_micro_pony: [U32](builtin-U32.md) val

#### Returns

* [String](builtin-String.md) val

---

### disable_setlocale
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L191)</span>


Prevents gtk_init(), gtk_init_check(), gtk_init_with_args() and
gtk_parse_args() from automatically
calling `setlocale (LC_ALL, "")`. You would
want to use this function if you wanted to set the locale for
your program to something other than the user’s locale, or if
you wanted to set different values for different locale categories.

Most programs should not need to call this function.


```pony
fun box disable_setlocale()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### events_pending
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L260)</span>


Checks if any events are pending.

This can be used to update the UI and invoke timeouts etc.
while doing some time intensive computation.

## Updating the UI during a long computation

|[<!-- language="C" -->
 // computation going on...

 while (gtk_events_pending ())
   gtk_main_iteration ();

 // ...computation continued
]|


```pony
fun box events_pending()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### gfalse
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L280)</span>


Analogical to gtk_true(), this function does nothing
but always returns %FALSE.


```pony
fun box gfalse()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_binary_age
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L294)</span>


Returns the binary age as passed to `libtool`
when building the GTK+ library the process is running against.
If `libtool` means nothing to you, don't
worry about it.


```pony
fun box get_binary_age()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_debug_flags
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L328)</span>


Returns the GTK+ debug flags.

This function is intended for GTK+ modules that want
to adjust their debug output based on GTK+ debug flags.


```pony
fun box get_debug_flags()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_interface_age
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L348)</span>


Returns the interface age as passed to `libtool`
when building the GTK+ library the process is running against.
If `libtool` means nothing to you, don't
worry about it.


```pony
fun box get_interface_age()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_major_version
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L364)</span>


Returns the major version number of the GTK+ library.
(e.g. in GTK+ version 3.1.5 this is 3.)

This function is in the library, so it represents the GTK+ library
your code is running against. Contrast with the #GTK_MAJOR_VERSION
macro, which represents the major version of the GTK+ headers you
have included when compiling your code.


```pony
fun box get_major_version()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_micro_version
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L376)</span>


Returns the micro version number of the GTK+ library.
(e.g. in GTK+ version 3.1.5 this is 5.)

This function is in the library, so it represents the GTK+ library
your code is are running against. Contrast with the
#GTK_MICRO_VERSION macro, which represents the micro version of the
GTK+ headers you have included when compiling your code.


```pony
fun box get_micro_version()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_minor_version
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L388)</span>


Returns the minor version number of the GTK+ library.
(e.g. in GTK+ version 3.1.5 this is 1.)

This function is in the library, so it represents the GTK+ library
your code is are running against. Contrast with the
#GTK_MINOR_VERSION macro, which represents the minor version of the
GTK+ headers you have included when compiling your code.


```pony
fun box get_minor_version()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### init
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L455)</span>


 Call this function before using any other GTK+ functions in your GUI
applications.  It will initialize everything needed to operate the
toolkit and parses some standard command line options.

Although you are expected to pass the @argc, @argv parameters from main() to
this function, it is possible to pass %NULL if @argv is not available or
commandline handling is not required.

@argc and @argv are adjusted accordingly so your own code will
never see those standard arguments.

Note that there are some alternative ways to initialize GTK+:
if you are calling gtk_parse_args(), gtk_init_check(),
gtk_init_with_args() or g_option_context_parse() with
the option group returned by gtk_get_option_group(),
you don’t have to call gtk_init().

And if you are using #GtkApplication, you don't have to call any of the
initialization functions either; the #GtkApplication::startup handler
does it for you.

This function will terminate your program if it was unable to
initialize the windowing system for some reason. If you want
your program to fall back to a textual interface you want to
call gtk_init_check() instead.

Since 2.18, GTK+ calls `signal (SIGPIPE, SIG_IGN)`
during initialization, to ignore SIGPIPE signals, since these are
almost never wanted in graphical applications. If you do need to
handle SIGPIPE for some reason, reset the handler after gtk_init(),
but notice that other libraries (e.g. libdbus or gvfs) might do
similar things.


```pony
fun box init()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### key_snooper_remove
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L510)</span>


Removes the key snooper function with the given id.


```pony
fun box key_snooper_remove(
  snooper_handler_id_pony: U32 val)
: None val
```
#### Parameters

*   snooper_handler_id_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### main
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L516)</span>


Runs the main loop until gtk_main_quit() is called.

You can nest calls to gtk_main(). In that case gtk_main_quit()
will make the innermost invocation of the main loop return.


```pony
fun box main()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### main_iteration
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L529)</span>


Runs a single iteration of the mainloop.

If no events are waiting to be processed GTK+ will block
until the next event is noticed. If you don’t want to block
look at gtk_main_iteration_do() or check if any events are
pending with gtk_events_pending() first.


```pony
fun box main_iteration()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### main_iteration_do
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L540)</span>


Runs a single iteration of the mainloop.
If no events are available either return or block depending on
the value of @blocking.


```pony
fun box main_iteration_do(
  blocking_pony: Bool val)
: Bool val
```
#### Parameters

*   blocking_pony: [Bool](builtin-Bool.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### main_level
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L548)</span>


Asks for the current nesting level of the main loop.


```pony
fun box main_level()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### main_quit
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L554)</span>


Makes the innermost invocation of the main loop return
when it regains control.


```pony
fun box main_quit()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### paper_size_get_default
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L723)</span>


Returns the name of the default paper size, which
depends on the current locale.


```pony
fun box paper_size_get_default()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### rc_reparse_all
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L896)</span>


If the modification time on any previously read file for the
default #GtkSettings has changed, discard all style information
and then reread all previously read RC files.


```pony
fun box rc_reparse_all()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### selection_remove_all
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L1149)</span>


Removes all handlers and unsets ownership of all
selections for a widget. Called when widget is being
destroyed. This function will not generally be
called by applications.


```pony
fun box selection_remove_all(
  widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_debug_flags
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L1158)</span>


Sets the GTK+ debug flags.


```pony
fun box set_debug_flags(
  flags_pony: U32 val)
: None val
```
#### Parameters

*   flags_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### test_register_all_types
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L1280)</span>


Force registration of all core Gtk+ and Gdk object types.
This allowes to refer to any of those object types via
g_type_from_name() after calling this function.


```pony
fun box test_register_all_types()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### test_widget_wait_for_draw
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L1322)</span>


Enters the main loop and waits for @widget to be “drawn”. In this
context that means it waits for the frame clock of @widget to have
run a full styling, layout and drawing cycle.

This function is intended to be used for syncing with actions that
depend on @widget relayouting or on interaction with the display
server.


```pony
fun box test_widget_wait_for_draw(
  widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### gtrue
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L1363)</span>


All this function does it to return %TRUE.

This can be useful for example if you want to inhibit the deletion
of a window. Of course you should not do this as the user expects
a reaction from clicking the close icon of the window...

## A persistent window

|[<!-- language="C" -->
#include <gtk/gtk.h>

int
main (int argc, char **argv)
{
  GtkWidget *win, *but;
  const char *text = "Close yourself. I mean it!";

  gtk_init (&argc, &argv);

  win = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  g_signal_connect (win,
                    "delete-event",
                    G_CALLBACK (gtk_true),
                    NULL);
  g_signal_connect (win, "destroy",
                    G_CALLBACK (gtk_main_quit),
                    NULL);

  but = gtk_button_new_with_label (text);
  g_signal_connect_swapped (but, "clicked",
                            G_CALLBACK (gtk_object_destroy),
                            win);
  gtk_container_add (GTK_CONTAINER (win), but);

  gtk_widget_show_all (win);

  gtk_main ();

  return 0;
}
]|


```pony
fun box gtrue()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L147)</span>


```pony
fun box eq(
  that: Gtk val)
: Bool val
```
#### Parameters

*   that: [Gtk](gtk3-Gtk.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L147)</span>


```pony
fun box ne(
  that: Gtk val)
: Bool val
```
#### Parameters

*   that: [Gtk](gtk3-Gtk.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

