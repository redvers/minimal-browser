use "lib:webkit2gtk-4.0"
use "gtk3"
use "gobject"

primitive GMainContext

class val WebKitWebView is GtkWidget
  var widget: GObjectREF val

  new val create() =>
    widget = @webkit_web_view_new[GObjectREF val]()

  fun gtkwidget(): GObjectREF val =>
    widget

  fun val load_uri(uri: String): None =>
    @webkit_web_view_load_uri[None](widget, uri.cstring())

  fun val can_go_back(): Bool =>
		@webkit_web_view_can_go_back[Bool](widget)

  fun val can_go_forward(): Bool =>
		@webkit_web_view_can_go_forward[Bool](widget)


//webkit_web_view_go_forward
//webkit_web_view_go_back

//Signals
//load-changed
//“load-failed”



//webkit_web_view_get_back_forward_list, webkit_web_view_get_back_forward_list ()
//webkit_web_view_get_title
//webkit_web_view_get_page_id
//webkit_web_view_reloadwebkit_web_view_reload_bypass_cache
//webkit_web_view_reload_bypass_cache
//webkit_web_view_stop_loading
//webkit_web_view_is_loading
//Gets the value of the “is-loading” property. You can monitor when a WebKitWebView is loading a page by connecting to notify::is-loading signal of web_view .
//webkit_web_view_get_estimated_load_progress
//webkit_web_view_go_to_back_forward_list_item
//webkit_web_view_get_uri
//webkit_web_view_set_settings
//webkit_web_view_get_settings
//webkit_web_view_get_window_properties


/*
webkit_web_view_can_execute_editing_command, webkit_web_view_can_execute_editing_command ()
webkit_web_view_can_execute_editing_command_finish, webkit_web_view_can_execute_editing_command_finish ()
webkit_web_view_can_show_mime_type, webkit_web_view_can_show_mime_type ()
webkit_web_view_download_uri, webkit_web_view_download_uri ()
webkit_web_view_execute_editing_command, webkit_web_view_execute_editing_command ()
webkit_web_view_execute_editing_command_with_argument, webkit_web_view_execute_editing_command_with_argument ()
webkit_web_view_get_automation_presentation_type, webkit_web_view_get_automation_presentation_type ()
webkit_web_view_get_background_color, webkit_web_view_get_background_color ()
webkit_web_view_get_context, webkit_web_view_get_context ()
webkit_web_view_get_custom_charset, webkit_web_view_get_custom_charset ()
webkit_web_view_get_editor_state, webkit_web_view_get_editor_state ()
webkit_web_view_get_estimated_load_progress, webkit_web_view_get_estimated_load_progress ()
webkit_web_view_get_favicon, webkit_web_view_get_favicon ()
webkit_web_view_get_find_controller, webkit_web_view_get_find_controller ()
webkit_web_view_get_input_method_context, webkit_web_view_get_input_method_context ()
webkit_web_view_get_inspector, webkit_web_view_get_inspector ()
webkit_web_view_get_is_muted, webkit_web_view_get_is_muted ()
webkit_web_view_get_javascript_global_context, webkit_web_view_get_javascript_global_context ()
webkit_web_view_get_main_resource, webkit_web_view_get_main_resource ()
webkit_web_view_get_page_id, webkit_web_view_get_page_id ()
webkit_web_view_get_session_state, webkit_web_view_get_session_state ()
webkit_web_view_get_settings, webkit_web_view_get_settings ()
webkit_web_view_get_snapshot, webkit_web_view_get_snapshot ()
webkit_web_view_get_snapshot_finish, webkit_web_view_get_snapshot_finish ()
webkit_web_view_get_title, webkit_web_view_get_title ()
webkit_web_view_get_tls_info, webkit_web_view_get_tls_info ()
webkit_web_view_get_uri, webkit_web_view_get_uri ()
webkit_web_view_get_user_content_manager, webkit_web_view_get_user_content_manager ()
webkit_web_view_get_website_data_manager, webkit_web_view_get_website_data_manager ()
webkit_web_view_get_website_policies, webkit_web_view_get_website_policies ()
webkit_web_view_get_window_properties, webkit_web_view_get_window_properties ()
webkit_web_view_get_zoom_level, webkit_web_view_get_zoom_level ()
webkit_web_view_go_back, webkit_web_view_go_back ()
webkit_web_view_go_forward, webkit_web_view_go_forward ()
webkit_web_view_go_to_back_forward_list_item, webkit_web_view_go_to_back_forward_list_item ()
webkit_web_view_is_controlled_by_automation, webkit_web_view_is_controlled_by_automation ()
webkit_web_view_is_editable, webkit_web_view_is_editable ()
webkit_web_view_is_ephemeral, webkit_web_view_is_ephemeral ()
webkit_web_view_is_loading, webkit_web_view_is_loading ()
webkit_web_view_is_playing_audio, webkit_web_view_is_playing_audio ()
webkit_web_view_load_alternate_html, webkit_web_view_load_alternate_html ()
webkit_web_view_load_bytes, webkit_web_view_load_bytes ()
webkit_web_view_load_html, webkit_web_view_load_html ()
webkit_web_view_load_plain_text, webkit_web_view_load_plain_text ()
webkit_web_view_load_request, webkit_web_view_load_request ()
webkit_web_view_load_uri, webkit_web_view_load_uri ()
webkit_web_view_new, webkit_web_view_new ()
webkit_web_view_new_with_context, webkit_web_view_new_with_context ()
webkit_web_view_new_with_related_view, webkit_web_view_new_with_related_view ()
webkit_web_view_new_with_settings, webkit_web_view_new_with_settings ()
webkit_web_view_new_with_user_content_manager, webkit_web_view_new_with_user_content_manager ()
webkit_web_view_reload, webkit_web_view_reload ()
webkit_web_view_reload_bypass_cache, webkit_web_view_reload_bypass_cache ()
webkit_web_view_restore_session_state, webkit_web_view_restore_session_state ()
webkit_web_view_run_javascript, webkit_web_view_run_javascript ()
webkit_web_view_run_javascript_finish, webkit_web_view_run_javascript_finish ()
webkit_web_view_run_javascript_from_gresource, webkit_web_view_run_javascript_from_gresource ()
webkit_web_view_run_javascript_from_gresource_finish, webkit_web_view_run_javascript_from_gresource_finish ()
webkit_web_view_run_javascript_in_world, webkit_web_view_run_javascript_in_world ()
webkit_web_view_run_javascript_in_world_finish, webkit_web_view_run_javascript_in_world_finish ()
webkit_web_view_save, webkit_web_view_save ()
webkit_web_view_save_finish, webkit_web_view_save_finish ()
webkit_web_view_save_to_file, webkit_web_view_save_to_file ()
webkit_web_view_save_to_file_finish, webkit_web_view_save_to_file_finish ()
webkit_web_view_send_message_to_page, webkit_web_view_send_message_to_page ()
webkit_web_view_send_message_to_page_finish, webkit_web_view_send_message_to_page_finish ()
webkit_web_view_session_state_new, webkit_web_view_session_state_new ()
webkit_web_view_session_state_ref, webkit_web_view_session_state_ref ()
webkit_web_view_session_state_serialize, webkit_web_view_session_state_serialize ()
webkit_web_view_session_state_unref, webkit_web_view_session_state_unref ()
webkit_web_view_set_background_color, webkit_web_view_set_background_color ()
webkit_web_view_set_custom_charset, webkit_web_view_set_custom_charset ()
webkit_web_view_set_editable, webkit_web_view_set_editable ()
webkit_web_view_set_input_method_context, webkit_web_view_set_input_method_context ()
webkit_web_view_set_is_muted, webkit_web_view_set_is_muted ()
webkit_web_view_set_settings, webkit_web_view_set_settings ()
webkit_web_view_set_zoom_level, webkit_web_view_set_zoom_level ()
webkit_web_view_stop_loading, webkit_web_view_stop_loading ()
webkit_web_view_try_close, webkit_web_view_try_close ()
*/

