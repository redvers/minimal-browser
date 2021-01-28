# GtkNativeDialog
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L6)</span>

Native dialogs are platform dialogs that don't use #GtkDialog or
#GtkWindow. They are used in order to integrate better with a
platform, by looking the same as other native applications and
supporting platform specific features.

The #GtkDialog functions cannot be used on such objects, but we
need a similar API in order to drive them. The #GtkNativeDialog
object is an API that allows you to do this. It allows you to set
various common properties on the dialog, as well as show and hide
it and get a #GtkNativeDialog::response signal when the user finished
with the dialog.

There is also a gtk_native_dialog_run() helper that makes it easy
to run any native dialog in a modal way with a recursive mainloop,
similar to gtk_dialog_run().


```pony
class val GtkNativeDialog is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L28)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkNativeDialog val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkNativeDialog](gtk3-GtkNativeDialog.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L31)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkNativeDialog val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkNativeDialog](gtk3-GtkNativeDialog.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L34)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkNativeDialog val^
```

#### Returns

* [GtkNativeDialog](gtk3-GtkNativeDialog.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L24)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L26)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### destroy
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L40)</span>


Destroys a dialog.

When a dialog is destroyed, it will break any references it holds
to other objects. If it is visible it will be hidden and any underlying
window system resources will be destroyed.

Note that this does not release any reference to the object (as opposed to
destroying a GtkWindow) because there is no reference from the windowing
system to the #GtkNativeDialog.


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_modal
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L54)</span>


Returns whether the dialog is modal. See gtk_native_dialog_set_modal().


```pony
fun box get_modal()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L74)</span>


Determines whether the dialog is visible.


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### hide
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L80)</span>


Hides the dialog if it is visilbe, aborting any interaction. Once this
is called the  #GtkNativeDialog::response signal will not be emitted
until after the next call to gtk_native_dialog_show().

If the dialog is not visible this does nothing.


```pony
fun box hide()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### run
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L90)</span>


Blocks in a recursive main loop until @self emits the
#GtkNativeDialog::response signal. It then returns the response ID
from the ::response signal emission.

Before entering the recursive main loop, gtk_native_dialog_run()
calls gtk_native_dialog_show() on the dialog for you.

After gtk_native_dialog_run() returns, then dialog will be hidden.

Typical usage of this function might be:
|[<!-- language="C" -->
  gint result = gtk_native_dialog_run (GTK_NATIVE_DIALOG (dialog));
  switch (result)
    {
      case GTK_RESPONSE_ACCEPT:
         do_application_specific_something ();
         break;
      default:
         do_nothing_since_dialog_was_cancelled ();
         break;
    }
  g_object_unref (dialog);
]|

Note that even though the recursive main loop gives the effect of a
modal dialog (it prevents the user from interacting with other
windows in the same window group while the dialog is run), callbacks
such as timeouts, IO channel watches, DND drops, etc, will
be triggered during a gtk_nautilus_dialog_run() call.


```pony
fun box run()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### set_modal
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L124)</span>


Sets a dialog modal or non-modal. Modal dialogs prevent interaction
with other windows in the same application. To keep modal dialogs
on top of main application windows, use
gtk_native_dialog_set_transient_for() to make the dialog transient for the
parent; most [window managers][gtk-X11-arch]
will then disallow lowering the dialog below the parent.


```pony
fun box set_modal(
  modal_pony: Bool val)
: None val
```
#### Parameters

*   modal_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### show
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L143)</span>


Shows the dialog on the display, allowing the user to interact with
it. When the user accepts the state of the dialog the dialog will
be automatically hidden and the #GtkNativeDialog::response signal
will be emitted.

Multiple calls while the dialog is visible will be ignored.


```pony
fun box show()
: None val
```

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

