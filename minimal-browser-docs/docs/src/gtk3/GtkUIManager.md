```````pony-full-source
/*
   needs: ["None", "Bool", "U32", "GObjectREF"]
provides: ["GtkUIManager val"]
*/
use "../gobject"
class val GtkUIManager is GtkWidget
"""
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
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_ui_manager_new[GObjectREF]() //


/* add_ui unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "action", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkUIManagerItemType", argname: "gtype", argtype: "UIManagerItemType", paramtype: :param, txo: "none"}}
*/

/* add_ui_from_file unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "filename", paramtype: :param, txo: "none"}}
*/

/* add_ui_from_resource unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "resource_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_ui_from_string unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "buffer", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gssize", argname: "length", argtype: "gssize", paramtype: :param, txo: "none"}}
*/

fun ensure_update(): None =>
"""
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
"""
  @gtk_ui_manager_ensure_update[None](widget)

/* get_accel_group unavailable due to return typing issues
{:argctype, "GtkAccelGroup*"}
{:argname, "rv"}
{:argtype, "AccelGroup"}
{:paramtype, :param}
{:txo, "none"} */

/* get_action unavailable due to return typing issues
{:argctype, "GtkAction*"}
{:argname, "rv"}
{:argtype, "Action"}
{:paramtype, :param}
{:txo, "none"} */

/* get_action_groups unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "none"} */

fun get_add_tearoffs(): Bool =>
"""
Returns whether menus generated by this #GtkUIManager
will have tearoff menu items.
"""
  @gtk_ui_manager_get_add_tearoffs[Bool](widget)

/* get_toplevels unavailable due to return typing issues
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "container"} */

/* get_ui unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_widget unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_action_group unavailable due to typing issues
 {:doh, %{argctype: "GtkActionGroup*", argname: "action_group", argtype: "ActionGroup", paramtype: :param, txo: "none"}}
*/

fun new_merge_id(): U32 =>
"""
Returns an unused merge id, suitable for use with
gtk_ui_manager_add_ui().
"""
  @gtk_ui_manager_new_merge_id[U32](widget)

/* remove_action_group unavailable due to typing issues
 {:doh, %{argctype: "GtkActionGroup*", argname: "action_group", argtype: "ActionGroup", paramtype: :param, txo: "none"}}
*/

fun remove_ui(merge_id_pony: U32): None =>
"""
Unmerges the part of @manager's content identified by @merge_id.
"""
  @gtk_ui_manager_remove_ui[None](widget, merge_id_pony)

fun set_add_tearoffs(add_tearoffs_pony: Bool): None =>
"""
Sets the “add_tearoffs” property, which controls whether menus
generated by this #GtkUIManager will have tearoff menu items.

Note that this only affects regular menus. Generated popup
menus never have tearoff menu items.
"""
  @gtk_ui_manager_set_add_tearoffs[None](widget, add_tearoffs_pony)


```````