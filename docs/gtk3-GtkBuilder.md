# GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L6)</span>

A GtkBuilder is an auxiliary object that reads textual descriptions
of a user interface and instantiates the described objects. To create
a GtkBuilder from a user interface description, call
gtk_builder_new_from_file(), gtk_builder_new_from_resource() or
gtk_builder_new_from_string().

In the (unusual) case that you want to add user interface
descriptions from multiple sources to the same GtkBuilder you can
call gtk_builder_new() to get an empty builder and populate it by
(multiple) calls to gtk_builder_add_from_file(),
gtk_builder_add_from_resource() or gtk_builder_add_from_string().

A GtkBuilder holds a reference to all objects that it has constructed
and drops these references when it is finalized. This finalization can
cause the destruction of non-widget objects or widgets which are not
contained in a toplevel window. For toplevel windows constructed by a
builder, it is the responsibility of the user to call gtk_widget_destroy()
to get rid of them and all the widgets they contain.

The functions gtk_builder_get_object() and gtk_builder_get_objects()
can be used to access the widgets in the interface by the names assigned
to them inside the UI description. Toplevel windows returned by these
functions will stay around until the user explicitly destroys them
with gtk_widget_destroy(). Other widgets will either be part of a
larger hierarchy constructed by the builder (in which case you should
not have to worry about their lifecycle), or without a parent, in which
case they have to be added to some container to make use of them.
Non-widget objects need to be reffed with g_object_ref() to keep them
beyond the lifespan of the builder.

The function gtk_builder_connect_signals() and variants thereof can be
used to connect handlers to the named signals in the description.

# GtkBuilder UI Definitions # {#BUILDER-UI}

GtkBuilder parses textual descriptions of user interfaces which are
specified in an XML format which can be roughly described by the
RELAX NG schema below. We refer to these descriptions as “GtkBuilder
UI definitions” or just “UI definitions” if the context is clear.
Do not confuse GtkBuilder UI Definitions with
[GtkUIManager UI Definitions][XML-UI], which are more limited in scope.
It is common to use `.ui` as the filename extension for files containing
GtkBuilder UI definitions.

[RELAX NG Compact Syntax](https://gitlab.gnome.org/GNOME/gtk/-/blob/gtk-3-24/gtk/gtkbuilder.rnc)

The toplevel element is <interface>. It optionally takes a “domain”
attribute, which will make the builder look for translated strings
using dgettext() in the domain specified. This can also be done by
calling gtk_builder_set_translation_domain() on the builder.
Objects are described by <object> elements, which can contain
<property> elements to set properties, <signal> elements which
connect signals to handlers, and <child> elements, which describe
child objects (most often widgets inside a container, but also e.g.
actions in an action group, or columns in a tree model). A <child>
element contains an <object> element which describes the child object.
The target toolkit version(s) are described by <requires> elements,
the “lib” attribute specifies the widget library in question (currently
the only supported value is “gtk+”) and the “version” attribute specifies
the target version in the form “<major>.<minor>”. The builder will error
out if the version requirements are not met.

Typically, the specific kind of object represented by an <object>
element is specified by the “class” attribute. If the type has not
been loaded yet, GTK+ tries to find the get_type() function from the
class name by applying heuristics. This works in most cases, but if
necessary, it is possible to specify the name of the get_type() function
explictly with the "type-func" attribute. As a special case, GtkBuilder
allows to use an object that has been constructed by a #GtkUIManager in
another part of the UI definition by specifying the id of the #GtkUIManager
in the “constructor” attribute and the name of the object in the “id”
attribute.

Objects may be given a name with the “id” attribute, which allows the
application to retrieve them from the builder with gtk_builder_get_object().
An id is also necessary to use the object as property value in other
parts of the UI definition. GTK+ reserves ids starting and ending
with ___ (3 underscores) for its own purposes.

Setting properties of objects is pretty straightforward with the
<property> element: the “name” attribute specifies the name of the
property, and the content of the element specifies the value.
If the “translatable” attribute is set to a true value, GTK+ uses
gettext() (or dgettext() if the builder has a translation domain set)
to find a translation for the value. This happens before the value
is parsed, so it can be used for properties of any type, but it is
probably most useful for string properties. It is also possible to
specify a context to disambiguate short strings, and comments which
may help the translators.

GtkBuilder can parse textual representations for the most common
property types: characters, strings, integers, floating-point numbers,
booleans (strings like “TRUE”, “t”, “yes”, “y”, “1” are interpreted
as %TRUE, strings like “FALSE”, “f”, “no”, “n”, “0” are interpreted
as %FALSE), enumerations (can be specified by their name, nick or
integer value), flags (can be specified by their name, nick, integer
value, optionally combined with “|”, e.g. “GTK_VISIBLE|GTK_REALIZED”)
and colors (in a format understood by gdk_rgba_parse()).

GVariants can be specified in the format understood by g_variant_parse(),
and pixbufs can be specified as a filename of an image file to load.

Objects can be referred to by their name and by default refer to
objects declared in the local xml fragment and objects exposed via
gtk_builder_expose_object(). In general, GtkBuilder allows forward
references to objects — declared in the local xml; an object doesn’t
have to be constructed before it can be referred to. The exception
to this rule is that an object has to be constructed before it can
be used as the value of a construct-only property.

It is also possible to bind a property value to another object's
property value using the attributes
"bind-source" to specify the source object of the binding,
"bind-property" to specify the source property and optionally
"bind-flags" to specify the binding flags.
Internally builder implements this using GBinding objects.
For more information see g_object_bind_property()

Signal handlers are set up with the <signal> element. The “name”
attribute specifies the name of the signal, and the “handler” attribute
specifies the function to connect to the signal. By default, GTK+ tries
to find the handler using g_module_symbol(), but this can be changed by
passing a custom #GtkBuilderConnectFunc to
gtk_builder_connect_signals_full(). The remaining attributes, “after”,
“swapped” and “object”, have the same meaning as the corresponding
parameters of the g_signal_connect_object() or
g_signal_connect_data() functions. A “last_modification_time”
attribute is also allowed, but it does not have a meaning to the
builder.

Sometimes it is necessary to refer to widgets which have implicitly
been constructed by GTK+ as part of a composite widget, to set
properties on them or to add further children (e.g. the @vbox of
a #GtkDialog). This can be achieved by setting the “internal-child”
property of the <child> element to a true value. Note that GtkBuilder
still requires an <object> element for the internal child, even if it
has already been constructed.

A number of widgets have different places where a child can be added
(e.g. tabs vs. page content in notebooks). This can be reflected in
a UI definition by specifying the “type” attribute on a <child>
The possible values for the “type” attribute are described in the
sections describing the widget-specific portions of UI definitions.

# A GtkBuilder UI Definition

|[
<interface>
  <object class="GtkDialog" id="dialog1">
    <child internal-child="vbox">
      <object class="GtkBox" id="vbox1">
        <property name="border-width">10</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="hbuttonbox1">
            <property name="border-width">20</property>
            <child>
              <object class="GtkButton" id="ok_button">
                <property name="label">gtk-ok</property>
                <property name="use-stock">TRUE</property>
                <signal name="clicked" handler="ok_button_clicked"/>
              </object>
            </child>
          </object>
        </child>
      </object>
    </child>
  </object>
</interface>
]|

Beyond this general structure, several object classes define their
own XML DTD fragments for filling in the ANY placeholders in the DTD
above. Note that a custom element in a <child> element gets parsed by
the custom tag handler of the parent object, while a custom element in
an <object> element gets parsed by the custom tag handler of the object.

These XML fragments are explained in the documentation of the
respective objects.

Additionally, since 3.10 a special <template> tag has been added
to the format allowing one to define a widget class’s components.
See the [GtkWidget documentation][composite-templates] for details.


```pony
class val GtkBuilder is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L195)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkBuilder val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L198)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkBuilder val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L201)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkBuilder val^
```

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L205)</span>


```pony
new val create()
: GtkBuilder val^
```

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) val^

---

### new_from_file
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L208)</span>


```pony
new val new_from_file(
  filename_pony: String val)
: GtkBuilder val^
```
#### Parameters

*   filename_pony: [String](builtin-String.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) val^

---

### new_from_resource
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L211)</span>


```pony
new val new_from_resource(
  resource_path_pony: String val)
: GtkBuilder val^
```
#### Parameters

*   resource_path_pony: [String](builtin-String.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) val^

---

### new_from_string
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L214)</span>


```pony
new val new_from_string(
  string_pony: String val,
  length_pony: I64 val)
: GtkBuilder val^
```
#### Parameters

*   string_pony: [String](builtin-String.md) val
*   length_pony: [I64](builtin-I64.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L191)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L193)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### add_callback_symbol
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L218)</span>


Adds the @callback_symbol to the scope of @builder under the given @callback_name.

Using this function overrides the behavior of gtk_builder_connect_signals()
for any callback symbols that are added. Using this method allows for better
encapsulation as it does not require that callback symbols be declared in
the global namespace.


```pony
fun box add_callback_symbol(
  callback_name: String val,
  callback_symbol: @{(GObjectREF)} val)
: None val
```
#### Parameters

*   callback_name: [String](builtin-String.md) val
*   callback_symbol: @{(GObjectREF)} val

#### Returns

* [None](builtin-None.md) val

---

### connect_signals
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L264)</span>


This method is a simpler variation of gtk_builder_connect_signals_full().
It uses symbols explicitly added to @builder with prior calls to
gtk_builder_add_callback_symbol(). In the case that symbols are not
explicitly added; it uses #GModule’s introspective features (by opening the module %NULL)
to look at the application’s symbol table. From here it tries to match
the signal handler names given in the interface description with
symbols in the application and connects the signals. Note that this
function can only be called once, subsequent calls will do nothing.

Note that unless gtk_builder_add_callback_symbol() is called for
all signal callbacks which are referenced by the loaded XML, this
function will require that #GModule be supported on the platform.

If you rely on #GModule support to lookup callbacks in the symbol table,
the following details should be noted:

When compiling applications for Windows, you must declare signal callbacks
with #G_MODULE_EXPORT, or they will not be put in the symbol table.
On Linux and Unices, this is not necessary; applications should instead
be compiled with the -Wl,--export-dynamic CFLAGS, and linked against
gmodule-export-2.0.


```pony
fun box connect_signals()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_translation_domain
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L327)</span>


Gets the translation domain of @builder.


```pony
fun box get_translation_domain()
: String val
```

#### Returns

* [String](builtin-String.md) val

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

