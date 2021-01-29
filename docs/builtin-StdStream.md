# StdStream
<span class="source-link">[[Source]](src/builtin/std_stream.md#L38)</span>

Asynchronous access to stdout and stderr. The constructors are private to
ensure that access is provided only via an environment.


```pony
actor tag StdStream
```

## Public Behaviours

### print
<span class="source-link">[[Source]](src/builtin/std_stream.md#L57)</span>


Print some bytes and insert a newline afterwards.


```pony
be print(
  data: (String val | Array[U8 val] val))
```
#### Parameters

*   data: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)

---

### write
<span class="source-link">[[Source]](src/builtin/std_stream.md#L63)</span>


Print some bytes without inserting a newline afterwards.


```pony
be write(
  data: (String val | Array[U8 val] val))
```
#### Parameters

*   data: ([String](builtin-String.md) val | [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val)

---

### printv
<span class="source-link">[[Source]](src/builtin/std_stream.md#L69)</span>


Print an iterable collection of ByteSeqs.


```pony
be printv(
  data: ByteSeqIter val)
```
#### Parameters

*   data: [ByteSeqIter](builtin-ByteSeqIter.md) val

---

### writev
<span class="source-link">[[Source]](src/builtin/std_stream.md#L77)</span>


Write an iterable collection of ByteSeqs.


```pony
be writev(
  data: ByteSeqIter val)
```
#### Parameters

*   data: [ByteSeqIter](builtin-ByteSeqIter.md) val

---

### flush
<span class="source-link">[[Source]](src/builtin/std_stream.md#L85)</span>


Flush any data out to the os (ignoring failures).


```pony
be flush()
```

---

