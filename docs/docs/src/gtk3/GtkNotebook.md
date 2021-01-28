```````pony-full-source
/*
   needs: ["I32", "GtkWidget val", "None", "Pointer[U8 val] ref", "String", "GObjectREF", "Bool"]
provides: ["GtkNotebook val"]
*/
use "../gobject"
class val GtkNotebook is GtkWidget
"""
The #GtkNotebook widget is a #GtkContainer whose children are pages that
can be switched between using tab labels along one edge.

There are many configuration options for GtkNotebook. Among other
things, you can choose on which edge the tabs appear
(see gtk_notebook_set_tab_pos()), whether, if there are too many
tabs to fit the notebook should be made bigger or scrolling
arrows added (see gtk_notebook_set_scrollable()), and whether there
will be a popup menu allowing the users to switch pages.
(see gtk_notebook_popup_enable(), gtk_notebook_popup_disable())

# GtkNotebook as GtkBuildable

The GtkNotebook implementation of the #GtkBuildable interface
supports placing children into tabs by specifying “tab” as the
“type” attribute of a <child> element. Note that the content
of the tab must be created before the tab can be filled.
A tab child can be specified without specifying a <child>
type attribute.

To add a child widget in the notebooks action area, specify
"action-start" or “action-end” as the “type” attribute of the
<child> element.

An example of a UI definition fragment with GtkNotebook:
|[
<object class="GtkNotebook">
  <child>
    <object class="GtkLabel" id="notebook-content">
      <property name="label">Content</property>
    </object>
  </child>
  <child type="tab">
    <object class="GtkLabel" id="notebook-tab">
      <property name="label">Tab</property>
    </object>
  </child>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
notebook
├── header.top
│   ├── [<action widget>]
│   ├── tabs
│   │   ├── [arrow]
│   │   ├── tab
│   │   │   ╰── <tab label>
┊   ┊   ┊
│   │   ├── tab[.reorderable-page]
│   │   │   ╰── <tab label>
│   │   ╰── [arrow]
│   ╰── [<action widget>]
│
╰── stack
    ├── <child>
    ┊
    ╰── <child>
]|

GtkNotebook has a main CSS node with name notebook, a subnode
with name header and below that a subnode with name tabs which
contains one subnode per tab with name tab.

If action widgets are present, their CSS nodes are placed next
to the tabs node. If the notebook is scrollable, CSS nodes with
name arrow are placed as first and last child of the tabs node.

The main node gets the .frame style class when the notebook
has a border (see gtk_notebook_set_show_border()).

The header node gets one of the style class .top, .bottom,
.left or .right, depending on where the tabs are placed. For
reorderable pages, the tab node gets the .reorderable-page class.

A tab node gets the .dnd style class while it is moved with drag-and-drop.

The nodes are always arranged from left-to-right, regarldess of text direction.
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
    widget = @gtk_notebook_new[GObjectREF]() //


fun append_page(child_pony: GtkWidget val, tab_label_pony: GtkWidget val): I32 =>
"""
Appends a page to @notebook.
"""
  @gtk_notebook_append_page[I32](widget, child_pony.gtkwidget(), tab_label_pony.gtkwidget())

fun append_page_menu(child_pony: GtkWidget val, tab_label_pony: GtkWidget val, menu_label_pony: GtkWidget val): I32 =>
"""
Appends a page to @notebook, specifying the widget to use as the
label in the popup menu.
"""
  @gtk_notebook_append_page_menu[I32](widget, child_pony.gtkwidget(), tab_label_pony.gtkwidget(), menu_label_pony.gtkwidget())

fun detach_tab(child_pony: GtkWidget val): None =>
"""
Removes the child from the notebook.

This function is very similar to gtk_container_remove(),
but additionally informs the notebook that the removal
is happening as part of a tab DND operation, which should
not be cancelled.
"""
  @gtk_notebook_detach_tab[None](widget, child_pony.gtkwidget())

/* get_action_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkPackType", argname: "pack_type", argtype: "PackType", paramtype: :param, txo: "none"}}
*/

fun get_current_page(): I32 =>
"""
Returns the page number of the current page.
"""
  @gtk_notebook_get_current_page[I32](widget)

fun get_group_name(): String =>
"""
Gets the current group name for @notebook.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_notebook_get_group_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* Needs conversion code 
  fun get_menu_label(child_pony: GtkWidget val): GtkWidget val =>
    @gtk_notebook_get_menu_label[GObjectREF](widget, child_pony.gtkwidget())
*/

fun get_menu_label_text(child_pony: GtkWidget val): String =>
"""
Retrieves the text of the menu label for the page containing
@child.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_notebook_get_menu_label_text[Pointer[U8 val] ref](widget, child_pony.gtkwidget())
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_n_pages(): I32 =>
"""
Gets the number of pages in a notebook.
"""
  @gtk_notebook_get_n_pages[I32](widget)

/* Needs conversion code 
  fun get_nth_page(page_num_pony: I32): GtkWidget val =>
    @gtk_notebook_get_nth_page[GObjectREF](widget, page_num_pony)
*/

fun get_scrollable(): Bool =>
"""
Returns whether the tab label area has arrows for scrolling.
See gtk_notebook_set_scrollable().
"""
  @gtk_notebook_get_scrollable[Bool](widget)

fun get_show_border(): Bool =>
"""
Returns whether a bevel will be drawn around the notebook pages.
See gtk_notebook_set_show_border().
"""
  @gtk_notebook_get_show_border[Bool](widget)

fun get_show_tabs(): Bool =>
"""
Returns whether the tabs of the notebook are shown.
See gtk_notebook_set_show_tabs().
"""
  @gtk_notebook_get_show_tabs[Bool](widget)

fun get_tab_detachable(child_pony: GtkWidget val): Bool =>
"""
Returns whether the tab contents can be detached from @notebook.
"""
  @gtk_notebook_get_tab_detachable[Bool](widget, child_pony.gtkwidget())

/* get_tab_hborder unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

/* Needs conversion code 
  fun get_tab_label(child_pony: GtkWidget val): GtkWidget val =>
    @gtk_notebook_get_tab_label[GObjectREF](widget, child_pony.gtkwidget())
*/

fun get_tab_label_text(child_pony: GtkWidget val): String =>
"""
Retrieves the text of the tab label for the page containing
@child.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_notebook_get_tab_label_text[Pointer[U8 val] ref](widget, child_pony.gtkwidget())
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_tab_pos unavailable due to return typing issues
{:argctype, "GtkPositionType"}
{:argname, "rv"}
{:argtype, "PositionType"}
{:paramtype, :param}
{:txo, "none"} */

fun get_tab_reorderable(child_pony: GtkWidget val): Bool =>
"""
Gets whether the tab can be reordered via drag and drop or not.
"""
  @gtk_notebook_get_tab_reorderable[Bool](widget, child_pony.gtkwidget())

/* get_tab_vborder unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

fun insert_page(child_pony: GtkWidget val, tab_label_pony: GtkWidget val, position_pony: I32): I32 =>
"""
Insert a page into @notebook at the given position.
"""
  @gtk_notebook_insert_page[I32](widget, child_pony.gtkwidget(), tab_label_pony.gtkwidget(), position_pony)

fun insert_page_menu(child_pony: GtkWidget val, tab_label_pony: GtkWidget val, menu_label_pony: GtkWidget val, position_pony: I32): I32 =>
"""
Insert a page into @notebook at the given position, specifying
the widget to use as the label in the popup menu.
"""
  @gtk_notebook_insert_page_menu[I32](widget, child_pony.gtkwidget(), tab_label_pony.gtkwidget(), menu_label_pony.gtkwidget(), position_pony)

fun next_page(): None =>
"""
Switches to the next page. Nothing happens if the current page is
the last page.
"""
  @gtk_notebook_next_page[None](widget)

fun page_num(child_pony: GtkWidget val): I32 =>
"""
Finds the index of the page which contains the given child
widget.
"""
  @gtk_notebook_page_num[I32](widget, child_pony.gtkwidget())

fun popup_disable(): None =>
"""
Disables the popup menu.
"""
  @gtk_notebook_popup_disable[None](widget)

fun popup_enable(): None =>
"""
Enables the popup menu: if the user clicks with the right
mouse button on the tab labels, a menu with all the pages
will be popped up.
"""
  @gtk_notebook_popup_enable[None](widget)

fun prepend_page(child_pony: GtkWidget val, tab_label_pony: GtkWidget val): I32 =>
"""
Prepends a page to @notebook.
"""
  @gtk_notebook_prepend_page[I32](widget, child_pony.gtkwidget(), tab_label_pony.gtkwidget())

fun prepend_page_menu(child_pony: GtkWidget val, tab_label_pony: GtkWidget val, menu_label_pony: GtkWidget val): I32 =>
"""
Prepends a page to @notebook, specifying the widget to use as the
label in the popup menu.
"""
  @gtk_notebook_prepend_page_menu[I32](widget, child_pony.gtkwidget(), tab_label_pony.gtkwidget(), menu_label_pony.gtkwidget())

fun prev_page(): None =>
"""
Switches to the previous page. Nothing happens if the current page
is the first page.
"""
  @gtk_notebook_prev_page[None](widget)

fun remove_page(page_num_pony: I32): None =>
"""
Removes a page from the notebook given its index
in the notebook.
"""
  @gtk_notebook_remove_page[None](widget, page_num_pony)

fun reorder_child(child_pony: GtkWidget val, position_pony: I32): None =>
"""
Reorders the page containing @child, so that it appears in position
@position. If @position is greater than or equal to the number of
children in the list or negative, @child will be moved to the end
of the list.
"""
  @gtk_notebook_reorder_child[None](widget, child_pony.gtkwidget(), position_pony)

/* set_action_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkPackType", argname: "pack_type", argtype: "PackType", paramtype: :param, txo: "none"}}
*/

fun set_current_page(page_num_pony: I32): None =>
"""
Switches to the page number @page_num.

Note that due to historical reasons, GtkNotebook refuses
to switch to a page unless the child widget is visible.
Therefore, it is recommended to show child widgets before
adding them to a notebook.
"""
  @gtk_notebook_set_current_page[None](widget, page_num_pony)

/* set_group_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "group_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_menu_label(child_pony: GtkWidget val, menu_label_pony: GtkWidget val): None =>
"""
Changes the menu label for the page containing @child.
"""
  @gtk_notebook_set_menu_label[None](widget, child_pony.gtkwidget(), menu_label_pony.gtkwidget())

/* set_menu_label_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "menu_text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_scrollable(scrollable_pony: Bool): None =>
"""
Sets whether the tab label area will have arrows for
scrolling if there are too many tabs to fit in the area.
"""
  @gtk_notebook_set_scrollable[None](widget, scrollable_pony)

fun set_show_border(show_border_pony: Bool): None =>
"""
Sets whether a bevel will be drawn around the notebook pages.
This only has a visual effect when the tabs are not shown.
See gtk_notebook_set_show_tabs().
"""
  @gtk_notebook_set_show_border[None](widget, show_border_pony)

fun set_show_tabs(show_tabs_pony: Bool): None =>
"""
Sets whether to show the tabs for the notebook or not.
"""
  @gtk_notebook_set_show_tabs[None](widget, show_tabs_pony)

fun set_tab_detachable(child_pony: GtkWidget val, detachable_pony: Bool): None =>
"""
Sets whether the tab can be detached from @notebook to another
notebook or widget.

Note that 2 notebooks must share a common group identificator
(see gtk_notebook_set_group_name()) to allow automatic tabs
interchange between them.

If you want a widget to interact with a notebook through DnD
(i.e.: accept dragged tabs from it) it must be set as a drop
destination and accept the target “GTK_NOTEBOOK_TAB”. The notebook
will fill the selection with a GtkWidget** pointing to the child
widget that corresponds to the dropped tab.

Note that you should use gtk_notebook_detach_tab() instead
of gtk_container_remove() if you want to remove the tab from
the source notebook as part of accepting a drop. Otherwise,
the source notebook will think that the dragged tab was
removed from underneath the ongoing drag operation, and
will initiate a drag cancel animation.

|[<!-- language="C" -->
 static void
 on_drag_data_received (GtkWidget        *widget,
                        GdkDragContext   *context,
                        gint              x,
                        gint              y,
                        GtkSelectionData *data,
                        guint             info,
                        guint             time,
                        gpointer          user_data)
 {
   GtkWidget *notebook;
   GtkWidget **child;

   notebook = gtk_drag_get_source_widget (context);
   child = (void*) gtk_selection_data_get_data (data);

   // process_widget (*child);

   gtk_notebook_detach_tab (GTK_NOTEBOOK (notebook), *child);
 }
]|

If you want a notebook to accept drags from other widgets,
you will have to set your own DnD code to do it.
"""
  @gtk_notebook_set_tab_detachable[None](widget, child_pony.gtkwidget(), detachable_pony)

fun set_tab_label(child_pony: GtkWidget val, tab_label_pony: GtkWidget val): None =>
"""
Changes the tab label for @child.
If %NULL is specified for @tab_label, then the page will
have the label “page N”.
"""
  @gtk_notebook_set_tab_label[None](widget, child_pony.gtkwidget(), tab_label_pony.gtkwidget())

/* set_tab_label_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "tab_text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_tab_pos unavailable due to typing issues
 {:doh, %{argctype: "GtkPositionType", argname: "pos", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

fun set_tab_reorderable(child_pony: GtkWidget val, reorderable_pony: Bool): None =>
"""
Sets whether the notebook tab can be reordered
via drag and drop or not.
"""
  @gtk_notebook_set_tab_reorderable[None](widget, child_pony.gtkwidget(), reorderable_pony)


```````