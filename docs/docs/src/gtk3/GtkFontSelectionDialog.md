```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val", "Pointer[U8 val] ref", "String"]
provides: ["GtkFontSelectionDialog val"]
*/
use "../gobject"
class val GtkFontSelectionDialog is GtkWidget
"""
No documentation provided
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(title_pony: String) =>
    widget = @gtk_font_selection_dialog_new[GObjectREF](title_pony.cstring()) //


/* Needs conversion code 
  fun get_cancel_button(): GtkWidget val =>
    @gtk_font_selection_dialog_get_cancel_button[GObjectREF](widget)
*/

/* get_font_name unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* Needs conversion code 
  fun get_font_selection(): GtkWidget val =>
    @gtk_font_selection_dialog_get_font_selection[GObjectREF](widget)
*/

/* Needs conversion code 
  fun get_ok_button(): GtkWidget val =>
    @gtk_font_selection_dialog_get_ok_button[GObjectREF](widget)
*/

fun get_preview_text(): String =>
"""
Gets the text displayed in the preview area.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_font_selection_dialog_get_preview_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* set_font_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "fontname", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_preview_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````