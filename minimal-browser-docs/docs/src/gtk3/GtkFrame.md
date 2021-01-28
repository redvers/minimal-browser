```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "GObjectREF", "GtkWidget val", "None"]
provides: ["GtkFrame val"]
*/
use "../gobject"
class val GtkFrame is GtkWidget
"""
The frame widget is a bin that surrounds its child with a decorative
frame and an optional label. If present, the label is drawn in a gap
in the top side of the frame. The position of the label can be
controlled with gtk_frame_set_label_align().

# GtkFrame as GtkBuildable

The GtkFrame implementation of the GtkBuildable interface supports
placing a child in the label position by specifying “label” as the
“type” attribute of a <child> element. A normal content child can
be specified without specifying a <child> type attribute.

An example of a UI definition fragment with GtkFrame:
|[
<object class="GtkFrame">
  <child type="label">
    <object class="GtkLabel" id="frame-label"/>
  </child>
  <child>
    <object class="GtkEntry" id="frame-content"/>
  </child>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
frame
├── border[.flat]
├── <label widget>
╰── <child>
]|

GtkFrame has a main CSS node named “frame” and a subnode named “border”. The
“border” node is used to draw the visible border. You can set the appearance
of the border using CSS properties like “border-style” on the “border” node.

The border node can be given the style class “.flat”, which is used by themes
to disable drawing of the border. To do this from code, call
gtk_frame_set_shadow_type() with %GTK_SHADOW_NONE to add the “.flat” class or
any other shadow type to remove it.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(label_pony: String) =>
    widget = @gtk_frame_new[GObjectREF](label_pony.cstring()) //


fun get_label(): String =>
"""
If the frame’s label widget is a #GtkLabel, returns the
text in the label widget. (The frame will have a #GtkLabel
for the label widget if a non-%NULL argument was passed
to gtk_frame_new().)
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_frame_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_label_align unavailable due to typing issues
 {:doh, %{argctype: "gfloat*", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gfloat*", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
*/

/* Needs conversion code 
  fun get_label_widget(): GtkWidget val =>
    @gtk_frame_get_label_widget[GObjectREF](widget)
*/

/* get_shadow_type unavailable due to return typing issues
{:argctype, "GtkShadowType"}
{:argname, "rv"}
{:argtype, "ShadowType"}
{:paramtype, :param}
{:txo, "none"} */

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_label_align unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/

fun set_label_widget(label_widget_pony: GtkWidget val): None =>
"""
Sets the #GtkFrame:label-widget for the frame. This is the widget that
will appear embedded in the top edge of the frame as a title.
"""
  @gtk_frame_set_label_widget[None](widget, label_widget_pony.gtkwidget())

/* set_shadow_type unavailable due to typing issues
 {:doh, %{argctype: "GtkShadowType", argname: "gtype", argtype: "ShadowType", paramtype: :param, txo: "none"}}
*/


```````