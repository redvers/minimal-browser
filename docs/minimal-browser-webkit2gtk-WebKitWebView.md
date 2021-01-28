# WebKitWebView
<span class="source-link">[[Source]](src/minimal-browser-webkit2gtk/WebKitWebView.md#L7)</span>
```pony
class val WebKitWebView is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create
<span class="source-link">[[Source]](src/minimal-browser-webkit2gtk/WebKitWebView.md#L10)</span>


```pony
new val create()
: WebKitWebView val^
```

#### Returns

* [WebKitWebView](minimal-browser-webkit2gtk-WebKitWebView.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/minimal-browser-webkit2gtk/WebKitWebView.md#L8)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/minimal-browser-webkit2gtk/WebKitWebView.md#L13)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### load_uri
<span class="source-link">[[Source]](src/minimal-browser-webkit2gtk/WebKitWebView.md#L16)</span>


```pony
fun val load_uri(
  uri: String val)
: None val
```
#### Parameters

*   uri: [String](builtin-String.md) val

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

