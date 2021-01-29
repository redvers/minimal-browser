# Pointer\[A: A\]
<span class="source-link">[[Source]](src/builtin/pointer.md#L1)</span>

A Pointer[A] is a raw memory pointer. It has no descriptor and thus can't be
included in a union or intersection, or be a subtype of any interface. Most
functions on a Pointer[A] are private to maintain memory safety.


```pony
struct ref Pointer[A: A]
```

## Constructors

### create
<span class="source-link">[[Source]](src/builtin/pointer.md#L7)</span>


A null pointer.


```pony
new ref create()
: Pointer[A] ref^
```

#### Returns

* [Pointer](builtin-Pointer.md)\[A\] ref^

---

## Public Functions

### offset
<span class="source-link">[[Source]](src/builtin/pointer.md#L55)</span>


Return a tag pointer to the n-th element.


```pony
fun tag offset(
  n: USize val)
: Pointer[A] tag
```
#### Parameters

*   n: [USize](builtin-USize.md) val

#### Returns

* [Pointer](builtin-Pointer.md)\[A\] tag

---

### usize
<span class="source-link">[[Source]](src/builtin/pointer.md#L89)</span>


Convert the pointer into an integer.


```pony
fun tag usize()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### is_null
<span class="source-link">[[Source]](src/builtin/pointer.md#L95)</span>


Return true for a null pointer, false for anything else.


```pony
fun tag is_null()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/builtin/pointer.md#L101)</span>


Return true if this address is that address.


```pony
fun tag eq(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer.md)\[A\] tag

#### Returns

* [Bool](builtin-Bool.md) val

---

### lt
<span class="source-link">[[Source]](src/builtin/pointer.md#L107)</span>


Return true if this address is less than that address.


```pony
fun tag lt(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer.md)\[A\] tag

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/builtin/pointer.md#L113)</span>


```pony
fun tag ne(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer.md)\[A\] tag

#### Returns

* [Bool](builtin-Bool.md) val

---

### le
<span class="source-link">[[Source]](src/builtin/pointer.md#L114)</span>


```pony
fun tag le(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer.md)\[A\] tag

#### Returns

* [Bool](builtin-Bool.md) val

---

### ge
<span class="source-link">[[Source]](src/builtin/pointer.md#L115)</span>


```pony
fun tag ge(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer.md)\[A\] tag

#### Returns

* [Bool](builtin-Bool.md) val

---

### gt
<span class="source-link">[[Source]](src/builtin/pointer.md#L116)</span>


```pony
fun tag gt(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer.md)\[A\] tag

#### Returns

* [Bool](builtin-Bool.md) val

---

### hash
<span class="source-link">[[Source]](src/builtin/pointer.md#L118)</span>


Returns a hash of the address.


```pony
fun tag hash()
: USize val
```

#### Returns

* [USize](builtin-USize.md) val

---

### hash64
<span class="source-link">[[Source]](src/builtin/pointer.md#L124)</span>


Returns a 64-bit hash of the address.


```pony
fun tag hash64()
: U64 val
```

#### Returns

* [U64](builtin-U64.md) val

---

