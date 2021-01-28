# AppController
<span class="source-link">[[Source]](src/minimal-browser/minimal-controller.md#L2)</span>
```pony
actor tag AppController
```

## Constructors

### create
<span class="source-link">[[Source]](src/minimal-browser/minimal-controller.md#L10)</span>


```pony
new tag create(
  appmodel': AppModel val)
: AppController tag^
```
#### Parameters

*   appmodel': [AppModel](minimal-browser-AppModel.md) val

#### Returns

* [AppController](minimal-browser-AppController.md) tag^

---

## Public fields

### var appmodel: [AppModel](minimal-browser-AppModel.md) val
<span class="source-link">[[Source]](src/minimal-browser/minimal-controller.md#L3)</span>



---

### var callbacka: @{(AppModel): I32} val
<span class="source-link">[[Source]](src/minimal-browser/minimal-controller.md#L4)</span>



---

## Public Behaviours

### activate_uri
<span class="source-link">[[Source]](src/minimal-browser/minimal-controller.md#L16)</span>


```pony
be activate_uri()
```

---

