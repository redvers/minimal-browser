```````pony-full-source
/*
   needs: ["None", "I32", "Pointer[U8 val] ref", "String", "GObjectREF", "GtkWidget val", "Bool", "GtkCellArea val"]
provides: ["GtkEntryCompletion val"]
*/
use "../gobject"
class val GtkEntryCompletion is GtkWidget
"""
#GtkEntryCompletion is an auxiliary object to be used in conjunction with
#GtkEntry to provide the completion functionality. It implements the
#GtkCellLayout interface, to allow the user to add extra cells to the
#GtkTreeView with completion matches.

“Completion functionality” means that when the user modifies the text
in the entry, #GtkEntryCompletion checks which rows in the model match
the current content of the entry, and displays a list of matches.
By default, the matching is done by comparing the entry text
case-insensitively against the text column of the model (see
gtk_entry_completion_set_text_column()), but this can be overridden
with a custom match function (see gtk_entry_completion_set_match_func()).

When the user selects a completion, the content of the entry is
updated. By default, the content of the entry is replaced by the
text column of the model, but this can be overridden by connecting
to the #GtkEntryCompletion::match-selected signal and updating the
entry in the signal handler. Note that you should return %TRUE from
the signal handler to suppress the default behaviour.

To add completion functionality to an entry, use gtk_entry_set_completion().

In addition to regular completion matches, which will be inserted into the
entry when they are selected, #GtkEntryCompletion also allows to display
“actions” in the popup window. Their appearance is similar to menuitems,
to differentiate them clearly from completion strings. When an action is
selected, the #GtkEntryCompletion::action-activated signal is emitted.

GtkEntryCompletion uses a #GtkTreeModelFilter model to represent the
subset of the entire model that is currently matching. While the
GtkEntryCompletion signals #GtkEntryCompletion::match-selected and
#GtkEntryCompletion::cursor-on-match take the original model and an
iter pointing to that model as arguments, other callbacks and signals
(such as #GtkCellLayoutDataFuncs or #GtkCellArea::apply-attributes)
will generally take the filter model as argument. As long as you are
only calling gtk_tree_model_get(), this will make no difference to
you. If for some reason, you need the original model, use
gtk_tree_model_filter_get_model(). Don’t forget to use
gtk_tree_model_filter_convert_iter_to_child_iter() to obtain a
matching iter.
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
    widget = @gtk_entry_completion_new[GObjectREF]() //

  new val new_with_area(area_pony: GtkCellArea val) =>
    widget = @gtk_entry_completion_new_with_area[GObjectREF](area_pony.gtkwidget()) //


fun complete(): None =>
"""
Requests a completion operation, or in other words a refiltering of the
current list with completions, using the current key. The completion list
view will be updated accordingly.
"""
  @gtk_entry_completion_complete[None](widget)

/* compute_prefix unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

fun delete_action(index__pony: I32): None =>
"""
Deletes the action at @index_ from @completion’s action list.

Note that @index_ is a relative position and the position of an
action may have changed since it was inserted.
"""
  @gtk_entry_completion_delete_action[None](widget, index__pony)

fun get_completion_prefix(): String =>
"""
Get the original text entered by the user that triggered
the completion or %NULL if there’s no completion ongoing.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_completion_get_completion_prefix[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* Needs conversion code 
  fun get_entry(): GtkWidget val =>
    @gtk_entry_completion_get_entry[GObjectREF](widget)
*/

fun get_inline_completion(): Bool =>
"""
Returns whether the common prefix of the possible completions should
be automatically inserted in the entry.
"""
  @gtk_entry_completion_get_inline_completion[Bool](widget)

fun get_inline_selection(): Bool =>
"""
Returns %TRUE if inline-selection mode is turned on.
"""
  @gtk_entry_completion_get_inline_selection[Bool](widget)

fun get_minimum_key_length(): I32 =>
"""
Returns the minimum key length as set for @completion.
"""
  @gtk_entry_completion_get_minimum_key_length[I32](widget)

/* get_model unavailable due to return typing issues
{:argctype, "GtkTreeModel*"}
{:argname, "rv"}
{:argtype, "TreeModel"}
{:paramtype, :param}
{:txo, "none"} */

fun get_popup_completion(): Bool =>
"""
Returns whether the completions should be presented in a popup window.
"""
  @gtk_entry_completion_get_popup_completion[Bool](widget)

fun get_popup_set_width(): Bool =>
"""
Returns whether the  completion popup window will be resized to the
width of the entry.
"""
  @gtk_entry_completion_get_popup_set_width[Bool](widget)

fun get_popup_single_match(): Bool =>
"""
Returns whether the completion popup window will appear even if there is
only a single match.
"""
  @gtk_entry_completion_get_popup_single_match[Bool](widget)

fun get_text_column(): I32 =>
"""
Returns the column in the model of @completion to get strings from.
"""
  @gtk_entry_completion_get_text_column[I32](widget)

/* insert_action_markup unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_action_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun insert_prefix(): None =>
"""
Requests a prefix insertion.
"""
  @gtk_entry_completion_insert_prefix[None](widget)

fun set_inline_completion(inline_completion_pony: Bool): None =>
"""
Sets whether the common prefix of the possible completions should
be automatically inserted in the entry.
"""
  @gtk_entry_completion_set_inline_completion[None](widget, inline_completion_pony)

fun set_inline_selection(inline_selection_pony: Bool): None =>
"""
Sets whether it is possible to cycle through the possible completions
inside the entry.
"""
  @gtk_entry_completion_set_inline_selection[None](widget, inline_selection_pony)

/* set_match_func unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryCompletionMatchFunc", argname: "func", argtype: "EntryCompletionMatchFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "func_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "func_notify", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_minimum_key_length(length_pony: I32): None =>
"""
Requires the length of the search key for @completion to be at least
@length. This is useful for long lists, where completing using a small
key takes a lot of time and will come up with meaningless results anyway
(ie, a too large dataset).
"""
  @gtk_entry_completion_set_minimum_key_length[None](widget, length_pony)

/* set_model unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModel*", argname: "model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
*/

fun set_popup_completion(popup_completion_pony: Bool): None =>
"""
Sets whether the completions should be presented in a popup window.
"""
  @gtk_entry_completion_set_popup_completion[None](widget, popup_completion_pony)

fun set_popup_set_width(popup_set_width_pony: Bool): None =>
"""
Sets whether the completion popup window will be resized to be the same
width as the entry.
"""
  @gtk_entry_completion_set_popup_set_width[None](widget, popup_set_width_pony)

fun set_popup_single_match(popup_single_match_pony: Bool): None =>
"""
Sets whether the completion popup window will appear even if there is
only a single match. You may want to set this to %FALSE if you
are using [inline completion][GtkEntryCompletion--inline-completion].
"""
  @gtk_entry_completion_set_popup_single_match[None](widget, popup_single_match_pony)

fun set_text_column(column_pony: I32): None =>
"""
Convenience function for setting up the most used case of this code: a
completion list with just strings. This function will set up @completion
to have a list displaying all (and just) strings in the completion list,
and to get those strings from @column in the model of @completion.

This functions creates and adds a #GtkCellRendererText for the selected
column. If you need to set the text column, but don't want the cell
renderer, use g_object_set() to set the #GtkEntryCompletion:text-column
property directly.
"""
  @gtk_entry_completion_set_text_column[None](widget, column_pony)


```````