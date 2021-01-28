# GtkUIManager
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L6)</span>

> GtkUIManager is deprecated since GTK+ 3.10. To construct user interfaces
> from XML definitions, you should use #GtkBuilder, #GMenuModel, et al. To
> work with actions, use #GAction, #GtkActionable et al. These newer classes
> support richer functionality and integration with various desktop shells.
> It should be possible to migrate most/all functionality from GtkUIManager.

A #GtkUIManager constructs a user interface (menus and toolbars) from
one or more UI definitions, which reference actions from one or more
action groups.

# UI Definitions # {#XML-UI}

The UI definitions are specified in an XML format which can be
roughly described by the following DTD.

> Do not confuse the GtkUIManager UI Definitions described here with
> the similarly named [GtkBuilder UI Definitions][BUILDER-UI].

|[
<!ELEMENT ui          (menubar|toolbar|popup|accelerator)* >
<!ELEMENT menubar     (menuitem|separator|placeholder|menu)* >
<!ELEMENT menu        (menuitem|separator|placeholder|menu)* >
<!ELEMENT popup       (menuitem|separator|placeholder|menu)* >
<!ELEMENT toolbar     (toolitem|separator|placeholder)* >
<!ELEMENT placeholder (menuitem|toolitem|separator|placeholder|menu)* >
<!ELEMENT menuitem     EMPTY >
<!ELEMENT toolitem     (menu?) >
<!ELEMENT separator    EMPTY >
<!ELEMENT accelerator  EMPTY >
<!ATTLIST menubar      name                      #IMPLIED
                       action                    #IMPLIED >
<!ATTLIST toolbar      name                      #IMPLIED
                       action                    #IMPLIED >
<!ATTLIST popup        name                      #IMPLIED
                       action                    #IMPLIED
                       accelerators (true|false) #IMPLIED >
<!ATTLIST placeholder  name                      #IMPLIED
                       action                    #IMPLIED >
<!ATTLIST separator    name                      #IMPLIED
                       action                    #IMPLIED
                       expand       (true|false) #IMPLIED >
<!ATTLIST menu         name                      #IMPLIED
                       action                    #REQUIRED
                       position     (top|bot)    #IMPLIED >
<!ATTLIST menuitem     name                      #IMPLIED
                       action                    #REQUIRED
                       position     (top|bot)    #IMPLIED
                       always-show-image (true|false) #IMPLIED >
<!ATTLIST toolitem     name                      #IMPLIED
                       action                    #REQUIRED
                       position     (top|bot)    #IMPLIED >
<!ATTLIST accelerator  name                      #IMPLIED
                       action                    #REQUIRED >
]|

There are some additional restrictions beyond those specified in the
DTD, e.g. every toolitem must have a toolbar in its anchestry and
every menuitem must have a menubar or popup in its anchestry. Since
a #GMarkupParser is used to parse the UI description, it must not only
be valid XML, but valid markup.

If a name is not specified, it defaults to the action. If an action is
not specified either, the element name is used. The name and action
attributes must not contain “/” characters after parsing (since that
would mess up path lookup) and must be usable as XML attributes when
enclosed in doublequotes, thus they must not “"” characters or references
to the &quot; entity.

# A UI definition #

|[
<ui>
  <menubar>
    <menu name="FileMenu" action="FileMenuAction">
      <menuitem name="New" action="New2Action" />
      <placeholder name="FileMenuAdditions" />
    </menu>
    <menu name="JustifyMenu" action="JustifyMenuAction">
      <menuitem name="Left" action="justify-left"/>
      <menuitem name="Centre" action="justify-center"/>
      <menuitem name="Right" action="justify-right"/>
      <menuitem name="Fill" action="justify-fill"/>
    </menu>
  </menubar>
  <toolbar action="toolbar1">
    <placeholder name="JustifyToolItems">
      <separator/>
      <toolitem name="Left" action="justify-left"/>
      <toolitem name="Centre" action="justify-center"/>
      <toolitem name="Right" action="justify-right"/>
      <toolitem name="Fill" action="justify-fill"/>
      <separator/>
    </placeholder>
  </toolbar>
</ui>
]|

The constructed widget hierarchy is very similar to the element tree
of the XML, with the exception that placeholders are merged into their
parents. The correspondence of XML elements to widgets should be
almost obvious:

- menubar

   a #GtkMenuBar

- toolbar

   a #GtkToolbar

- popup

   a toplevel #GtkMenu

- menu

   a #GtkMenu attached to a menuitem

- menuitem

   a #GtkMenuItem subclass, the exact type depends on the action

- toolitem

   a #GtkToolItem subclass, the exact type depends on the
   action. Note that toolitem elements may contain a menu element,
   but only if their associated action specifies a
   #GtkMenuToolButton as proxy.

- separator

   a #GtkSeparatorMenuItem or #GtkSeparatorToolItem

- accelerator

   a keyboard accelerator

The “position” attribute determines where a constructed widget is positioned
wrt. to its siblings in the partially constructed tree. If it is
“top”, the widget is prepended, otherwise it is appended.

# UI Merging # {#UI-Merging}

The most remarkable feature of #GtkUIManager is that it can overlay a set
of menuitems and toolitems over another one, and demerge them later.

Merging is done based on the names of the XML elements. Each element is
identified by a path which consists of the names of its anchestors, separated
by slashes. For example, the menuitem named “Left” in the example above
has the path `/ui/menubar/JustifyMenu/Left` and the
toolitem with the same name has path
`/ui/toolbar1/JustifyToolItems/Left`.

# Accelerators #

Every action has an accelerator path. Accelerators are installed together
with menuitem proxies, but they can also be explicitly added with
<accelerator> elements in the UI definition. This makes it possible to
have accelerators for actions even if they have no visible proxies.

# Smart Separators # {#Smart-Separators}

The separators created by #GtkUIManager are “smart”, i.e. they do not show up
in the UI unless they end up between two visible menu or tool items. Separators
which are located at the very beginning or end of the menu or toolbar
containing them, or multiple separators next to each other, are hidden. This
is a useful feature, since the merging of UI elements from multiple sources
can make it hard or impossible to determine in advance whether a separator
will end up in such an unfortunate position.

For separators in toolbars, you can set `expand="true"` to
turn them from a small, visible separator to an expanding, invisible one.
Toolitems following an expanding separator are effectively right-aligned.

# Empty Menus

Submenus pose similar problems to separators inconnection with merging. It is
impossible to know in advance whether they will end up empty after merging.
#GtkUIManager offers two ways to treat empty submenus:

- make them disappear by hiding the menu item they’re attached to

- add an insensitive “Empty” item

The behaviour is chosen based on the “hide_if_empty” property of the action
to which the submenu is associated.

# GtkUIManager as GtkBuildable # {#GtkUIManager-BUILDER-UI}

The GtkUIManager implementation of the GtkBuildable interface accepts
GtkActionGroup objects as <child> elements in UI definitions.

A GtkUIManager UI definition as described above can be embedded in
an GtkUIManager <object> element in a GtkBuilder UI definition.

The widgets that are constructed by a GtkUIManager can be embedded in
other parts of the constructed user interface with the help of the
“constructor” attribute. See the example below.

## An embedded GtkUIManager UI definition

|[
<object class="GtkUIManager" id="uiman">
  <child>
    <object class="GtkActionGroup" id="actiongroup">
      <child>
        <object class="GtkAction" id="file">
          <property name="label">_File</property>
        </object>
      </child>
    </object>
  </child>
  <ui>
    <menubar name="menubar1">
      <menu action="file">
      </menu>
    </menubar>
  </ui>
</object>
<object class="GtkWindow" id="main-window">
  <child>
    <object class="GtkMenuBar" id="menubar1" constructor="uiman"/>
  </child>
</object>
]|


```pony
class val GtkUIManager is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L238)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkUIManager val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkUIManager](gtk3-GtkUIManager.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L241)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkUIManager val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkUIManager](gtk3-GtkUIManager.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L244)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkUIManager val^
```

#### Returns

* [GtkUIManager](gtk3-GtkUIManager.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L248)</span>


```pony
new val create()
: GtkUIManager val^
```

#### Returns

* [GtkUIManager](gtk3-GtkUIManager.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L234)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L236)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### ensure_update
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L272)</span>


Makes sure that all pending updates to the UI have been completed.

This may occasionally be necessary, since #GtkUIManager updates the
UI in an idle function. A typical example where this function is
useful is to enforce that the menubar and toolbar have been added to
the main window before showing it:
|[<!-- language="C" -->
gtk_container_add (GTK_CONTAINER (window), vbox);
g_signal_connect (merge, "add-widget",
                  G_CALLBACK (add_widget), vbox);
gtk_ui_manager_add_ui_from_file (merge, "my-menus");
gtk_ui_manager_add_ui_from_file (merge, "my-toolbars");
gtk_ui_manager_ensure_update (merge);
gtk_widget_show (window);
]|


```pony
fun box ensure_update()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_add_tearoffs
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L313)</span>


Returns whether menus generated by this #GtkUIManager
will have tearoff menu items.


```pony
fun box get_add_tearoffs()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### new_merge_id
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L342)</span>


Returns an unused merge id, suitable for use with
gtk_ui_manager_add_ui().


```pony
fun box new_merge_id()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### remove_ui
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L353)</span>


Unmerges the part of @manager's content identified by @merge_id.


```pony
fun box remove_ui(
  merge_id_pony: U32 val)
: None val
```
#### Parameters

*   merge_id_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_add_tearoffs
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L359)</span>


Sets the “add_tearoffs” property, which controls whether menus
generated by this #GtkUIManager will have tearoff menu items.

Note that this only affects regular menus. Generated popup
menus never have tearoff menu items.


```pony
fun box set_add_tearoffs(
  add_tearoffs_pony: Bool val)
: None val
```
#### Parameters

*   add_tearoffs_pony: [Bool](builtin-Bool.md) val

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

