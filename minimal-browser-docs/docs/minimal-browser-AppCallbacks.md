# AppCallbacks
<span class="source-link">[[Source]](src/minimal-browser/main.md#L90)</span>
```pony
class ref AppCallbacks
```

## Constructors

### create
<span class="source-link">[[Source]](src/minimal-browser/main.md#L90)</span>


```pony
new iso create()
: AppCallbacks iso^
```

#### Returns

* [AppCallbacks](minimal-browser-AppCallbacks.md) iso^

---

## Public Functions

### activate_uri
<span class="source-link">[[Source]](src/minimal-browser/main.md#L91)</span>


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

