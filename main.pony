"""
# Minimal Browser

This purpose of this project is to provide a simple application example
so you can start using pony-gtk3 straight away.

It's a simple WebKit2 Web Browser.
"""

use "gtk3"
use "gobject"
use "webkit2gtk"
use "debug"
use "lib:glib-2.0"

use "lib:webkit2gtk-4.0"

actor Main
  fun @runtime_override_defaults(rto: RuntimeOptions) =>
    """
    When we execute Gtk it locks up one of Pony's schedulers.  It is vital
    therefore that we override the pony default for ponyminthreads from its
    default value of 1, to a minimum of two
    """
    rto.ponyminthreads = U32(2)

  new create(env: Env) =>
    """
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
    """


    Gtk.init()

    var appmodel:      AppModel = AppModel
    var appcontroller: AppController = AppController(appmodel)

    Gtk.main()


class AppCallbacks
  """
  When a user performs an action like clicking a button, or hitting return in
  a text entry field, Gtk generates a signal on that widget.

  The AppController is responsible during its instantiation for registering all
  of the events that it is interested in responding to and providing a callback
  function to be called when executed.

  This class contains
  """

  fun @activate_uri(urientryref: GObjectREF, controllertag: AppController) => controllertag.activate_uri()


