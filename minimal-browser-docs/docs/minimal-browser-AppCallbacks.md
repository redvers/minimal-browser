# AppCallbacks
<span class="source-link">[[Source]](src/minimal-browser/main.md#L91)</span>

When a user performs an action like clicking a button, or hitting return in
a text entry field, Gtk generates a signal on that widget.

The AppController is responsible during its instantiation for registering all
of the events that it is interested in responding to and providing a callback
function to be called when executed.

This class contains the callbacks in one convenient place.

Note:

1. All callbacks passed to Gtk must be BARE functions (start with an @ symbol)
2. The arguments and types pass to the callback are Widget and Signal Dependent!  Check the Docs!



```pony
primitive val AppCallbacks
```

## Constructors

### create
<span class="source-link">[[Source]](src/minimal-browser/main.md#L91)</span>


```pony
new val create()
: AppCallbacks val^
```

#### Returns

* [AppCallbacks](minimal-browser-AppCallbacks.md) val^

---

## Public Functions

### activate_uri
<span class="source-link">[[Source]](src/minimal-browser/main.md#L109)</span>


This callback is called when the user hits the return key in the Address Bar.

It's function is to take the value in the Address Bar and direct the WebKit
Widget to download and display the content at that URI


```pony
fun activate_uri(
  urientryref: GObjectREF val,
  controllertag: AppController tag)
: None val
```
#### Parameters

*   urientryref: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
*   controllertag: [AppController](minimal-browser-AppController.md) tag

#### Returns

* [None](builtin-None.md) val

---

### eq
<span class="source-link">[[Source]](src/minimal-browser/main.md#L109)</span>


```pony
fun box eq(
  that: AppCallbacks val)
: Bool val
```
#### Parameters

*   that: [AppCallbacks](minimal-browser-AppCallbacks.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/minimal-browser/main.md#L109)</span>


```pony
fun box ne(
  that: AppCallbacks val)
: Bool val
```
#### Parameters

*   that: [AppCallbacks](minimal-browser-AppCallbacks.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

