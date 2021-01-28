```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkIMContextSimple val"]
*/
use "../gobject"
class val GtkIMContextSimple is GtkWidget
"""
GtkIMContextSimple is a simple input method context supporting table-based
input methods. It has a built-in table of compose sequences that is derived
from the X11 Compose files.

GtkIMContextSimple reads additional compose sequences from the first of the
following files that is found: ~/.config/gtk-3.0/Compose, ~/.XCompose,
/usr/share/X11/locale/$locale/Compose (for locales that have a nontrivial
Compose file). The syntax of these files is described in the Compose(5)
manual page.

GtkIMContextSimple also supports numeric entry of Unicode characters
by typing Ctrl-Shift-u, followed by a hexadecimal Unicode codepoint.
For example, Ctrl-Shift-u 1 2 3 Enter yields U+0123 LATIN SMALL LETTER
G WITH CEDILLA, i.e. ģ.
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
    widget = @gtk_im_context_simple_new[GObjectREF]() //


/* add_compose_file unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "compose_file", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_table unavailable due to typing issues
 {:doh, %{argctype: "", argname: "data", argtype: "", paramtype: :param, txo: "none"}}
*/


```````