# Env
<span class="source-link">[[Source]](src/builtin/env.md#L1)</span>

An environment holds the command line and other values injected into the
program by default by the runtime.


```pony
class val Env
```

## Constructors

### create
<span class="source-link">[[Source]](src/builtin/env.md#L57)</span>


Build an artificial environment. A root capability may be supplied.


```pony
new val create(
  root': (AmbientAuth val | None val),
  input': InputStream tag,
  out': OutStream tag,
  err': OutStream tag,
  args': Array[String val] val,
  vars': Array[String val] val,
  exitcode': {(I32)} val)
: Env val^
```
#### Parameters

*   root': ([AmbientAuth](builtin-AmbientAuth.md) val | [None](builtin-None.md) val)
*   input': [InputStream](builtin-InputStream.md) tag
*   out': [OutStream](builtin-OutStream.md) tag
*   err': [OutStream](builtin-OutStream.md) tag
*   args': [Array](builtin-Array.md)\[[String](builtin-String.md) val\] val
*   vars': [Array](builtin-Array.md)\[[String](builtin-String.md) val\] val
*   exitcode': {(I32)} val

#### Returns

* [Env](builtin-Env.md) val^

---

## Public fields

### let root: ([AmbientAuth](builtin-AmbientAuth.md) val | [None](builtin-None.md) val)
<span class="source-link">[[Source]](src/builtin/env.md#L6)</span>

The root capability.

Can be `None` for artificially constructed `Env` instances.




---

### let input: [InputStream](builtin-InputStream.md) tag
<span class="source-link">[[Source]](src/builtin/env.md#L13)</span>

Stdin represented as an actor.




---

### let out: [OutStream](builtin-OutStream.md) tag
<span class="source-link">[[Source]](src/builtin/env.md#L18)</span>

Stdout



---

### let err: [OutStream](builtin-OutStream.md) tag
<span class="source-link">[[Source]](src/builtin/env.md#L21)</span>

Stderr



---

### let args: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] val
<span class="source-link">[[Source]](src/builtin/env.md#L24)</span>

The command line used to start the program.



---

### let vars: [Array](builtin-Array.md)\[[String](builtin-String.md) val\] val
<span class="source-link">[[Source]](src/builtin/env.md#L27)</span>

The program's environment variables.



---

### let exitcode: {(I32)} val
<span class="source-link">[[Source]](src/builtin/env.md#L30)</span>

Sets the environment's exit code. The exit code of the root environment will
be the exit code of the application, which defaults to 0.




---

