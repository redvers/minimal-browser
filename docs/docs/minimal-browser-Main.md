# Main
<span class="source-link">[[Source]](src/minimal-browser/main.md#L18)</span>
```pony
actor tag Main
```

## Constructors

### create
<span class="source-link">[[Source]](src/minimal-browser/main.md#L27)</span>


Gtk is an Event Driven framework, which means that we configure how the
application should operate and then hand-over control of it to Gtk.

However, Pony is *also* Event Driven (it being an Actor-Model based
language), but since Pony is going to continue to operate using the
other schedulers - that shouldn't be a problem, right?

Wrong.

The issue is that Gtk is not thread-safe, which means that if you attempt
to send a message to Gtk from a thread other than the one that it owns
it has a better than even chance of a SEGV.

Thankfully, Gtk does have a way of safely injecting callbacks into the
main Gtk thread - and that is how we mitigate this issue.

Now they play nice!

In order to manage events that come not only from Gtk but potentially
other parts of your Pony application we have separated out our concerns
into a Model, a View, and a Controller.

Our Main actor execututes as follows:

1, We initialize the Gtk environment.
```
Gtk.init()
```

2, We create our default Model.
```
var appmodel: AppModel = AppModel
```
The Model in this context is just a class which contains references to
all of the items that our application will need to reference.  In this
example it contains references to the various Widgets that are needed
to provide the functionality we need.

3, We create a controller Actor
```
var appcontroller: AppController = AppController(appmodel)
```
As alluded to previously, this separation of control into a second Pony
Actor is only needed if we're taking additional events from pony as
a part of our application.

4, Lastly, we hand control of this schedular forever to Gtk.
```
Gtk.main()
```


```pony
new tag create(
  env: Env val)
: Main tag^
```
#### Parameters

*   env: [Env](builtin-Env.md) val

#### Returns

* [Main](minimal-browser-Main.md) tag^

---

## Public Functions

### runtime_override_defaults
<span class="source-link">[[Source]](src/minimal-browser/main.md#L19)</span>


When we execute Gtk it locks up one of Pony's schedulers.  It is vital
therefore that we override the pony default for ponyminthreads from its
default value of 1, to a minimum of two


```pony
fun runtime_override_defaults(
  rto: RuntimeOptions ref)
: None val
```
#### Parameters

*   rto: [RuntimeOptions](builtin-RuntimeOptions.md) ref

#### Returns

* [None](builtin-None.md) val

---

