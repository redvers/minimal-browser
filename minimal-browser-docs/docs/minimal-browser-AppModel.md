# AppModel
<span class="source-link">[[Source]](src/minimal-browser/minimal-model.md#L7)</span>

# AppModel

The purpose of this class is to be a single structure to contain all of
the data that the application needs to run.

The Class is a val because it contains ONLY references to Gtk objects
which "should never change"™

Classes in Pony are **Pointers** so can be passed cleanly in and out of
C functions.  This is how we pass multiple arguments around in callbacks.

One structure to rule them all.


```pony
class val AppModel
```

## Constructors

### create
<span class="source-link">[[Source]](src/minimal-browser/minimal-model.md#L29)</span>


The Model creates the Application's (Read Only) global state
which includes all of the Gtk widget data.

This is how we build our UI:

1, Read our Glade XML file which contains our UI definition
and generate all the widgets in memory.

```
builder = GtkBuilder.new_from_file("minimal-browser.glade")
```
(The other way to do this is by creating and arranging widgets
by hand - we chose the easier way for this example).

2, Create our GtkWindow instance from the GtkBuilder data.
```
mainwin = GtkWindow.create_from_GtkBuilder(builder, "GtkWindow")
```

3, Create our GtkEntry instance from the GtkBuilder data.
```
urientry = GtkEntry.create_from_GtkBuilder(builder, "uri_entrybox")
```

4, Create our GtkBox instance from the GtkBuilder data.
```
var hbox:     GtkBox    = GtkBox.create_from_GtkBuilder(builder, "hbox")
```
(We left an intentional gap in this GtkBox so we can place
the webkit2 widget in place)

5, Create the WebKit2 Widget and pack it into the GtkBox
```
webkit = WebKitWebView
hbox.pack_end(webkit, true, true, U32(0))
```

6, Lastly, we capture the default GMainContext.  This is a tag which
represents the main Gtk thread so we can use it for future function
dispatch.


```pony
new val create()
: AppModel val^
```

#### Returns

* [AppModel](minimal-browser-AppModel.md) val^

---

## Public fields

### var builder: [GtkBuilder](gtk3-GtkBuilder.md) val
<span class="source-link">[[Source]](src/minimal-browser/minimal-model.md#L23)</span>



---

### var mainwin: [GtkWindow](gtk3-GtkWindow.md) val
<span class="source-link">[[Source]](src/minimal-browser/minimal-model.md#L24)</span>



---

### var urientry: [GtkEntry](gtk3-GtkEntry.md) val
<span class="source-link">[[Source]](src/minimal-browser/minimal-model.md#L25)</span>



---

### var webkit: [WebKitWebView](minimal-browser-webkit2gtk-WebKitWebView.md) val
<span class="source-link">[[Source]](src/minimal-browser/minimal-model.md#L26)</span>



---

### var gmain: [GMainContext](minimal-browser-webkit2gtk-GMainContext.md) val
<span class="source-link">[[Source]](src/minimal-browser/minimal-model.md#L27)</span>



---

