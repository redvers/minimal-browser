# GtkRecentManager
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L6)</span>

#GtkRecentManager provides a facility for adding, removing and
looking up recently used files. Each recently used file is
identified by its URI, and has meta-data associated to it, like
the names and command lines of the applications that have
registered it, the number of time each application has registered
the same file, the mime type of the file and whether the file
should be displayed only by the applications that have
registered it.

The recently used files list is per user.

The #GtkRecentManager acts like a database of all the recently
used files. You can create new #GtkRecentManager objects, but
it is more efficient to use the default manager created by GTK+.

Adding a new recently used file is as simple as:

|[<!-- language="C" -->
GtkRecentManager *manager;

manager = gtk_recent_manager_get_default ();
gtk_recent_manager_add_item (manager, file_uri);
]|

The #GtkRecentManager will try to gather all the needed information
from the file itself through GIO.

Looking up the meta-data associated with a recently used file
given its URI requires calling gtk_recent_manager_lookup_item():

|[<!-- language="C" -->
GtkRecentManager *manager;
GtkRecentInfo *info;
GError *error = NULL;

manager = gtk_recent_manager_get_default ();
info = gtk_recent_manager_lookup_item (manager, file_uri, &error);
if (error)
  {
    g_warning ("Could not find the file: %s", error->message);
    g_error_free (error);
  }
else
 {
   // Use the info object
   gtk_recent_info_unref (info);
 }
]|

In order to retrieve the list of recently used files, you can use
gtk_recent_manager_get_items(), which returns a list of #GtkRecentInfo-structs.

A #GtkRecentManager is the model used to populate the contents of
one, or more #GtkRecentChooser implementations.

Note that the maximum age of the recently used files list is
controllable through the #GtkSettings:gtk-recent-files-max-age
property.

Recently used files are supported since GTK+ 2.10.


```pony
class val GtkRecentManager is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L73)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRecentManager val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRecentManager](gtk3-GtkRecentManager.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L76)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRecentManager val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRecentManager](gtk3-GtkRecentManager.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L79)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRecentManager val^
```

#### Returns

* [GtkRecentManager](gtk3-GtkRecentManager.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L83)</span>


```pony
new val create()
: GtkRecentManager val^
```

#### Returns

* [GtkRecentManager](gtk3-GtkRecentManager.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L69)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L71)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### purge_items
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L119)</span>


Purges every item from the recently used resources list.


```pony
fun box purge_items()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

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

