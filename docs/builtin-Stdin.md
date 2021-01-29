# Stdin
<span class="source-link">[[Source]](src/builtin/stdin.md#L43)</span>

Asynchronous access to stdin. The constructor is private to ensure that
access is provided only via an environment.

Reading from stdin is done by registering an `InputNotify`:

```pony
actor Main
  new create(env: Env) =>
    // do not forget to call `env.input.dispose` at some point
    env.input(
      object iso is InputNotify
        fun ref apply(data: Array[U8] iso) =>
          env.out.write(String.from_iso_array(consume data))

        fun ref dispose() =>
          env.out.print("Done.")
      end,
      512)
```

**Note:** For reading user input from a terminal, use the [term](term--index.md) package.


```pony
actor tag Stdin
```

## Public Behaviours

### apply
<span class="source-link">[[Source]](src/builtin/stdin.md#L78)</span>


Set the notifier. Optionally, also sets the chunk size, dictating the
maximum number of bytes of each chunk that will be passed to the notifier.


```pony
be apply(
  notify: (InputNotify iso | None val),
  chunk_size: USize val = 32)
```
#### Parameters

*   notify: ([InputNotify](builtin-InputNotify.md) iso | [None](builtin-None.md) val)
*   chunk_size: [USize](builtin-USize.md) val = 32

---

### dispose
<span class="source-link">[[Source]](src/builtin/stdin.md#L86)</span>


Clear the notifier in order to shut down input.


```pony
be dispose()
```

---

