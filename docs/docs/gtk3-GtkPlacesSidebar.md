# GtkPlacesSidebar
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L6)</span>

#GtkPlacesSidebar is a widget that displays a list of frequently-used places in the
file system:  the user’s home directory, the user’s bookmarks, and volumes and drives.
This widget is used as a sidebar in #GtkFileChooser and may be used by file managers
and similar programs.

The places sidebar displays drives and volumes, and will automatically mount
or unmount them when the user selects them.

Applications can hook to various signals in the places sidebar to customize
its behavior.  For example, they can add extra commands to the context menu
of the sidebar.

While bookmarks are completely in control of the user, the places sidebar also
allows individual applications to provide extra shortcut folders that are unique
to each application.  For example, a Paint program may want to add a shortcut
for a Clipart folder.  You can do this with gtk_places_sidebar_add_shortcut().

To make use of the places sidebar, an application at least needs to connect
to the #GtkPlacesSidebar::open-location signal.  This is emitted when the
user selects in the sidebar a location to open.  The application should also
call gtk_places_sidebar_set_location() when it changes the currently-viewed
location.

# CSS nodes

GtkPlacesSidebar uses a single CSS node with name placessidebar and style
class .sidebar.

Among the children of the places sidebar, the following style classes can
be used:
- .sidebar-new-bookmark-row for the 'Add new bookmark' row
- .sidebar-placeholder-row for a row that is a placeholder
- .has-open-popup when a popup is open for a row


```pony
class val GtkPlacesSidebar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L46)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkPlacesSidebar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L49)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkPlacesSidebar val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L52)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkPlacesSidebar val^
```

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L56)</span>


```pony
new val create()
: GtkPlacesSidebar val^
```

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L42)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L44)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### get_local_only
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L64)</span>


Returns the value previously set with gtk_places_sidebar_set_local_only().


```pony
fun box get_local_only()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_connect_to_server
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L91)</span>


Returns the value previously set with gtk_places_sidebar_set_show_connect_to_server()


```pony
fun box get_show_connect_to_server()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_desktop
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L97)</span>


Returns the value previously set with gtk_places_sidebar_set_show_desktop()


```pony
fun box get_show_desktop()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_enter_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L103)</span>


Returns the value previously set with gtk_places_sidebar_set_show_enter_location()


```pony
fun box get_show_enter_location()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_other_locations
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L109)</span>


Returns the value previously set with gtk_places_sidebar_set_show_other_locations()


```pony
fun box get_show_other_locations()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_recent
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L115)</span>


Returns the value previously set with gtk_places_sidebar_set_show_recent()


```pony
fun box get_show_recent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_starred_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L121)</span>


Returns the value previously set with gtk_places_sidebar_set_show_starred_location()


```pony
fun box get_show_starred_location()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_trash
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L127)</span>


Returns the value previously set with gtk_places_sidebar_set_show_trash()


```pony
fun box get_show_trash()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_local_only
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L148)</span>


Sets whether the @sidebar should only show local files.


```pony
fun box set_local_only(
  local_only_pony: Bool val)
: None val
```
#### Parameters

*   local_only_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_connect_to_server
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L162)</span>


Sets whether the @sidebar should show an item for connecting to a network server;
this is off by default. An application may want to turn this on if it implements
a way for the user to connect to network servers directly.

If you enable this, you should connect to the
#GtkPlacesSidebar::show-connect-to-server signal.


```pony
fun box set_show_connect_to_server(
  show_connect_to_server_pony: Bool val)
: None val
```
#### Parameters

*   show_connect_to_server_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_desktop
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L173)</span>


Sets whether the @sidebar should show an item for the Desktop folder.
The default value for this option is determined by the desktop
environment and the user’s configuration, but this function can be
used to override it on a per-application basis.


```pony
fun box set_show_desktop(
  show_desktop_pony: Bool val)
: None val
```
#### Parameters

*   show_desktop_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_enter_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L182)</span>


Sets whether the @sidebar should show an item for entering a location;
this is off by default. An application may want to turn this on if manually
entering URLs is an expected user action.

If you enable this, you should connect to the
#GtkPlacesSidebar::show-enter-location signal.


```pony
fun box set_show_enter_location(
  show_enter_location_pony: Bool val)
: None val
```
#### Parameters

*   show_enter_location_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_other_locations
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L193)</span>


Sets whether the @sidebar should show an item for the application to show
an Other Locations view; this is off by default. When set to %TRUE, persistent
devices such as hard drives are hidden, otherwise they are shown in the sidebar.
An application may want to turn this on if it implements a way for the user to
see and interact with drives and network servers directly.

If you enable this, you should connect to the
#GtkPlacesSidebar::show-other-locations signal.


```pony
fun box set_show_other_locations(
  show_other_locations_pony: Bool val)
: None val
```
#### Parameters

*   show_other_locations_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_recent
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L206)</span>


Sets whether the @sidebar should show an item for recent files.
The default value for this option is determined by the desktop
environment, but this function can be used to override it on a
per-application basis.


```pony
fun box set_show_recent(
  show_recent_pony: Bool val)
: None val
```
#### Parameters

*   show_recent_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_starred_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L215)</span>


If you enable this, you should connect to the
#GtkPlacesSidebar::show-starred-location signal.


```pony
fun box set_show_starred_location(
  show_starred_location_pony: Bool val)
: None val
```
#### Parameters

*   show_starred_location_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_trash
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L222)</span>


Sets whether the @sidebar should show an item for the Trash location.


```pony
fun box set_show_trash(
  show_trash_pony: Bool val)
: None val
```
#### Parameters

*   show_trash_pony: [Bool](builtin-Bool.md) val

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

