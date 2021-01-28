# GtkNotebook
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L6)</span>

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


```pony
class val GtkNotebook is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L93)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkNotebook val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L96)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkNotebook val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L99)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkNotebook val^
```

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L103)</span>


```pony
new val create()
: GtkNotebook val^
```

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L89)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L91)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### append_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L107)</span>


Appends a page to @notebook.


```pony
fun box append_page(
  child_pony: GtkWidget val,
  tab_label_pony: GtkWidget val)
: I32 val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   tab_label_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### append_page_menu
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L113)</span>


Appends a page to @notebook, specifying the widget to use as the
label in the popup menu.


```pony
fun box append_page_menu(
  child_pony: GtkWidget val,
  tab_label_pony: GtkWidget val,
  menu_label_pony: GtkWidget val)
: I32 val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   tab_label_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   menu_label_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### detach_tab
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L120)</span>


Removes the child from the notebook.

This function is very similar to gtk_container_remove(),
but additionally informs the notebook that the removal
is happening as part of a tab DND operation, which should
not be cancelled.


```pony
fun box detach_tab(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### get_current_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L135)</span>


Returns the page number of the current page.


```pony
fun box get_current_page()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_group_name
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L141)</span>


Gets the current group name for @notebook.


```pony
fun box get_group_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_menu_label_text
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L154)</span>


Retrieves the text of the menu label for the page containing
@child.


```pony
fun box get_menu_label_text(
  child_pony: GtkWidget val)
: String val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [String](builtin-String.md) val

---

### get_n_pages
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L163)</span>


Gets the number of pages in a notebook.


```pony
fun box get_n_pages()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_scrollable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L174)</span>


Returns whether the tab label area has arrows for scrolling.
See gtk_notebook_set_scrollable().


```pony
fun box get_scrollable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_border
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L181)</span>


Returns whether a bevel will be drawn around the notebook pages.
See gtk_notebook_set_show_border().


```pony
fun box get_show_border()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_tabs
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L188)</span>


Returns whether the tabs of the notebook are shown.
See gtk_notebook_set_show_tabs().


```pony
fun box get_show_tabs()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_tab_detachable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L195)</span>


Returns whether the tab contents can be detached from @notebook.


```pony
fun box get_tab_detachable(
  child_pony: GtkWidget val)
: Bool val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_tab_label_text
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L213)</span>


Retrieves the text of the tab label for the page containing
@child.


```pony
fun box get_tab_label_text(
  child_pony: GtkWidget val)
: String val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [String](builtin-String.md) val

---

### get_tab_reorderable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L229)</span>


Gets whether the tab can be reordered via drag and drop or not.


```pony
fun box get_tab_reorderable(
  child_pony: GtkWidget val)
: Bool val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### insert_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L242)</span>


Insert a page into @notebook at the given position.


```pony
fun box insert_page(
  child_pony: GtkWidget val,
  tab_label_pony: GtkWidget val,
  position_pony: I32 val)
: I32 val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   tab_label_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### insert_page_menu
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L248)</span>


Insert a page into @notebook at the given position, specifying
the widget to use as the label in the popup menu.


```pony
fun box insert_page_menu(
  child_pony: GtkWidget val,
  tab_label_pony: GtkWidget val,
  menu_label_pony: GtkWidget val,
  position_pony: I32 val)
: I32 val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   tab_label_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   menu_label_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### next_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L255)</span>


Switches to the next page. Nothing happens if the current page is
the last page.


```pony
fun box next_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### page_num
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L262)</span>


Finds the index of the page which contains the given child
widget.


```pony
fun box page_num(
  child_pony: GtkWidget val)
: I32 val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### popup_disable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L269)</span>


Disables the popup menu.


```pony
fun box popup_disable()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### popup_enable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L275)</span>


Enables the popup menu: if the user clicks with the right
mouse button on the tab labels, a menu with all the pages
will be popped up.


```pony
fun box popup_enable()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### prepend_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L283)</span>


Prepends a page to @notebook.


```pony
fun box prepend_page(
  child_pony: GtkWidget val,
  tab_label_pony: GtkWidget val)
: I32 val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   tab_label_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### prepend_page_menu
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L289)</span>


Prepends a page to @notebook, specifying the widget to use as the
label in the popup menu.


```pony
fun box prepend_page_menu(
  child_pony: GtkWidget val,
  tab_label_pony: GtkWidget val,
  menu_label_pony: GtkWidget val)
: I32 val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   tab_label_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   menu_label_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### prev_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L296)</span>


Switches to the previous page. Nothing happens if the current page
is the first page.


```pony
fun box prev_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L303)</span>


Removes a page from the notebook given its index
in the notebook.


```pony
fun box remove_page(
  page_num_pony: I32 val)
: None val
```
#### Parameters

*   page_num_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### reorder_child
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L310)</span>


Reorders the page containing @child, so that it appears in position
@position. If @position is greater than or equal to the number of
children in the list or negative, @child will be moved to the end
of the list.


```pony
fun box reorder_child(
  child_pony: GtkWidget val,
  position_pony: I32 val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_current_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L323)</span>


Switches to the page number @page_num.

Note that due to historical reasons, GtkNotebook refuses
to switch to a page unless the child widget is visible.
Therefore, it is recommended to show child widgets before
adding them to a notebook.


```pony
fun box set_current_page(
  page_num_pony: I32 val)
: None val
```
#### Parameters

*   page_num_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_menu_label
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L338)</span>


Changes the menu label for the page containing @child.


```pony
fun box set_menu_label(
  child_pony: GtkWidget val,
  menu_label_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   menu_label_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_scrollable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L348)</span>


Sets whether the tab label area will have arrows for
scrolling if there are too many tabs to fit in the area.


```pony
fun box set_scrollable(
  scrollable_pony: Bool val)
: None val
```
#### Parameters

*   scrollable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_border
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L355)</span>


Sets whether a bevel will be drawn around the notebook pages.
This only has a visual effect when the tabs are not shown.
See gtk_notebook_set_show_tabs().


```pony
fun box set_show_border(
  show_border_pony: Bool val)
: None val
```
#### Parameters

*   show_border_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_tabs
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L363)</span>


Sets whether to show the tabs for the notebook or not.


```pony
fun box set_show_tabs(
  show_tabs_pony: Bool val)
: None val
```
#### Parameters

*   show_tabs_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_tab_detachable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L369)</span>


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


```pony
fun box set_tab_detachable(
  child_pony: GtkWidget val,
  detachable_pony: Bool val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   detachable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_tab_label
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L419)</span>


Changes the tab label for @child.
If %NULL is specified for @tab_label, then the page will
have the label “page N”.


```pony
fun box set_tab_label(
  child_pony: GtkWidget val,
  tab_label_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   tab_label_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_tab_reorderable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L435)</span>


Sets whether the notebook tab can be reordered
via drag and drop or not.


```pony
fun box set_tab_reorderable(
  child_pony: GtkWidget val,
  reorderable_pony: Bool val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   reorderable_pony: [Bool](builtin-Bool.md) val

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

