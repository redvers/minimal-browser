```````pony-full-source
/*
   needs: ["None", "Bool", "I32", "Pointer[U8 val] ref", "String", "GObjectREF"]
provides: ["GtkPrintOperation val"]
*/
use "../gobject"
class val GtkPrintOperation is GtkWidget
"""
GtkPrintOperation is the high-level, portable printing API.
It looks a bit different than other GTK+ dialogs such as the
#GtkFileChooser, since some platforms don’t expose enough
infrastructure to implement a good print dialog. On such
platforms, GtkPrintOperation uses the native print dialog.
On platforms which do not provide a native print dialog, GTK+
uses its own, see #GtkPrintUnixDialog.

The typical way to use the high-level printing API is to create
a GtkPrintOperation object with gtk_print_operation_new() when
the user selects to print. Then you set some properties on it,
e.g. the page size, any #GtkPrintSettings from previous print
operations, the number of pages, the current page, etc.

Then you start the print operation by calling gtk_print_operation_run().
It will then show a dialog, let the user select a printer and
options. When the user finished the dialog various signals will
be emitted on the #GtkPrintOperation, the main one being
#GtkPrintOperation::draw-page, which you are supposed to catch
and render the page on the provided #GtkPrintContext using Cairo.

# The high-level printing API

|[<!-- language="C" -->
static GtkPrintSettings *settings = NULL;

static void
do_print (void)
{
  GtkPrintOperation *print;
  GtkPrintOperationResult res;

  print = gtk_print_operation_new ();

  if (settings != NULL)
    gtk_print_operation_set_print_settings (print, settings);

  g_signal_connect (print, "begin_print", G_CALLBACK (begin_print), NULL);
  g_signal_connect (print, "draw_page", G_CALLBACK (draw_page), NULL);

  res = gtk_print_operation_run (print, GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
                                 GTK_WINDOW (main_window), NULL);

  if (res == GTK_PRINT_OPERATION_RESULT_APPLY)
    {
      if (settings != NULL)
        g_object_unref (settings);
      settings = g_object_ref (gtk_print_operation_get_print_settings (print));
    }

  g_object_unref (print);
}
]|

By default GtkPrintOperation uses an external application to do
print preview. To implement a custom print preview, an application
must connect to the preview signal. The functions
gtk_print_operation_preview_render_page(),
gtk_print_operation_preview_end_preview() and
gtk_print_operation_preview_is_selected()
are useful when implementing a print preview.
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
    widget = @gtk_print_operation_new[GObjectREF]() //


fun cancel(): None =>
"""
Cancels a running print operation. This function may
be called from a #GtkPrintOperation::begin-print,
#GtkPrintOperation::paginate or #GtkPrintOperation::draw-page
signal handler to stop the currently running print
operation.
"""
  @gtk_print_operation_cancel[None](widget)

fun draw_page_finish(): None =>
"""
Signalize that drawing of particular page is complete.

It is called after completion of page drawing (e.g. drawing in another
thread).
If gtk_print_operation_set_defer_drawing() was called before, then this function
has to be called by application. In another case it is called by the library
itself.
"""
  @gtk_print_operation_draw_page_finish[None](widget)

/* get_default_page_setup unavailable due to return typing issues
{:argctype, "GtkPageSetup*"}
{:argname, "rv"}
{:argtype, "PageSetup"}
{:paramtype, :param}
{:txo, "none"} */

fun get_embed_page_setup(): Bool =>
"""
Gets the value of #GtkPrintOperation:embed-page-setup property.
"""
  @gtk_print_operation_get_embed_page_setup[Bool](widget)

fun get_error(): None =>
"""
Call this when the result of a print operation is
%GTK_PRINT_OPERATION_RESULT_ERROR, either as returned by
gtk_print_operation_run(), or in the #GtkPrintOperation::done signal
handler. The returned #GError will contain more details on what went wrong.
"""
  @gtk_print_operation_get_error[None](widget)

fun get_has_selection(): Bool =>
"""
Gets the value of #GtkPrintOperation:has-selection property.
"""
  @gtk_print_operation_get_has_selection[Bool](widget)

fun get_n_pages_to_print(): I32 =>
"""
Returns the number of pages that will be printed.

Note that this value is set during print preparation phase
(%GTK_PRINT_STATUS_PREPARING), so this function should never be
called before the data generation phase (%GTK_PRINT_STATUS_GENERATING_DATA).
You can connect to the #GtkPrintOperation::status-changed signal
and call gtk_print_operation_get_n_pages_to_print() when
print status is %GTK_PRINT_STATUS_GENERATING_DATA.
This is typically used to track the progress of print operation.
"""
  @gtk_print_operation_get_n_pages_to_print[I32](widget)

/* get_print_settings unavailable due to return typing issues
{:argctype, "GtkPrintSettings*"}
{:argname, "rv"}
{:argtype, "PrintSettings"}
{:paramtype, :param}
{:txo, "none"} */

/* get_status unavailable due to return typing issues
{:argctype, "GtkPrintStatus"}
{:argname, "rv"}
{:argtype, "PrintStatus"}
{:paramtype, :param}
{:txo, "none"} */

fun get_status_string(): String =>
"""
Returns a string representation of the status of the
print operation. The string is translated and suitable
for displaying the print status e.g. in a #GtkStatusbar.

Use gtk_print_operation_get_status() to obtain a status
value that is suitable for programmatic use.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_print_operation_get_status_string[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_support_selection(): Bool =>
"""
Gets the value of #GtkPrintOperation:support-selection property.
"""
  @gtk_print_operation_get_support_selection[Bool](widget)

fun is_finished(): Bool =>
"""
A convenience function to find out if the print operation
is finished, either successfully (%GTK_PRINT_STATUS_FINISHED)
or unsuccessfully (%GTK_PRINT_STATUS_FINISHED_ABORTED).

Note: when you enable print status tracking the print operation
can be in a non-finished state even after done has been called, as
the operation status then tracks the print job status on the printer.
"""
  @gtk_print_operation_is_finished[Bool](widget)

/* run unavailable due to return typing issues
{:argctype, "GtkPrintOperationResult"}
{:argname, "rv"}
{:argtype, "PrintOperationResult"}
{:paramtype, :param}
{:txo, "none"} */

fun set_allow_async(allow_async_pony: Bool): None =>
"""
Sets whether the gtk_print_operation_run() may return
before the print operation is completed. Note that
some platforms may not allow asynchronous operation.
"""
  @gtk_print_operation_set_allow_async[None](widget, allow_async_pony)

fun set_current_page(current_page_pony: I32): None =>
"""
Sets the current page.

If this is called before gtk_print_operation_run(),
the user will be able to select to print only the current page.

Note that this only makes sense for pre-paginated documents.
"""
  @gtk_print_operation_set_current_page[None](widget, current_page_pony)

/* set_custom_tab_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_default_page_setup unavailable due to typing issues
 {:doh, %{argctype: "GtkPageSetup*", argname: "default_page_setup", argtype: "PageSetup", paramtype: :param, txo: "none"}}
*/

fun set_defer_drawing(): None =>
"""
Sets up the #GtkPrintOperation to wait for calling of
gtk_print_operation_draw_page_finish() from application. It can
be used for drawing page in another thread.

This function must be called in the callback of “draw-page” signal.
"""
  @gtk_print_operation_set_defer_drawing[None](widget)

fun set_embed_page_setup(embed_pony: Bool): None =>
"""
Embed page size combo box and orientation combo box into page setup page.
Selected page setup is stored as default page setup in #GtkPrintOperation.
"""
  @gtk_print_operation_set_embed_page_setup[None](widget, embed_pony)

/* set_export_filename unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "filename", paramtype: :param, txo: "none"}}
*/

fun set_has_selection(has_selection_pony: Bool): None =>
"""
Sets whether there is a selection to print.

Application has to set number of pages to which the selection
will draw by gtk_print_operation_set_n_pages() in a callback of
#GtkPrintOperation::begin-print.
"""
  @gtk_print_operation_set_has_selection[None](widget, has_selection_pony)

/* set_job_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "job_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_n_pages(n_pages_pony: I32): None =>
"""
Sets the number of pages in the document.

This must be set to a positive number
before the rendering starts. It may be set in a
#GtkPrintOperation::begin-print signal hander.

Note that the page numbers passed to the
#GtkPrintOperation::request-page-setup
and #GtkPrintOperation::draw-page signals are 0-based, i.e. if
the user chooses to print all pages, the last ::draw-page signal
will be for page @n_pages - 1.
"""
  @gtk_print_operation_set_n_pages[None](widget, n_pages_pony)

/* set_print_settings unavailable due to typing issues
 {:doh, %{argctype: "GtkPrintSettings*", argname: "print_settings", argtype: "PrintSettings", paramtype: :param, txo: "none"}}
*/

fun set_show_progress(show_progress_pony: Bool): None =>
"""
If @show_progress is %TRUE, the print operation will show a
progress dialog during the print operation.
"""
  @gtk_print_operation_set_show_progress[None](widget, show_progress_pony)

fun set_support_selection(support_selection_pony: Bool): None =>
"""
Sets whether selection is supported by #GtkPrintOperation.
"""
  @gtk_print_operation_set_support_selection[None](widget, support_selection_pony)

fun set_track_print_status(track_status_pony: Bool): None =>
"""
If track_status is %TRUE, the print operation will try to continue report
on the status of the print job in the printer queues and printer. This
can allow your application to show things like “out of paper” issues,
and when the print job actually reaches the printer.

This function is often implemented using some form of polling, so it should
not be enabled unless needed.
"""
  @gtk_print_operation_set_track_print_status[None](widget, track_status_pony)

/* set_unit unavailable due to typing issues
 {:doh, %{argctype: "GtkUnit", argname: "unit", argtype: "Unit", paramtype: :param, txo: "none"}}
*/

fun set_use_full_page(full_page_pony: Bool): None =>
"""
If @full_page is %TRUE, the transformation for the cairo context
obtained from #GtkPrintContext puts the origin at the top left
corner of the page (which may not be the top left corner of the
sheet, depending on page orientation and the number of pages per
sheet). Otherwise, the origin is at the top left corner of the
imageable area (i.e. inside the margins).
"""
  @gtk_print_operation_set_use_full_page[None](widget, full_page_pony)


```````