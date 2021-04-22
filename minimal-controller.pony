use "debug"

actor AppController
  var appmodel: AppModel
  var callbacka: @{(AppModel): I32}  = @{(appmodel: AppModel): I32 =>
    var uri: String = appmodel.urientry.get_text()
    appmodel.webkit.load_uri(uri)
    @gtk_false[I32]()
  }

  new create(appmodel': AppModel) => appmodel = appmodel'
    appmodel.urientry.signal_connect[AppController]("activate", AppCallbacks~activate_uri(), this)
//    appmodel.mainwin.signal_connect_destroy()
//    appmodel.webkit.signal_connect[AppController]("resource-load-started", AppCallbacks~resource_load_started(), this)
    @g_signal_connect_data[U64](appmodel.webkit.gtkwidget(), "resource-load-started".cstring(), AppCallbacks~resource_load_started(), this)


  be activate_uri() =>
    var uri: String = appmodel.urientry.get_text()
    @g_main_context_invoke[None](U32(0), callbacka, appmodel)

  be resource_load_started(rls: CallbackResourceLoadStarted) =>
    var cwebkit: Array[U8 val] ref = @g_type_name_from_instance[Array[U8 val] ref](rls.webkit)
    var cresource: Array[U8 val] ref = @g_type_name_from_instance[Array[U8 val] ref](rls.webresource)
    var curirequest: Array[U8 val] ref = @g_type_name_from_instance[Array[U8 val] ref](rls.weburirequest)

//    @printf[I32]("cwebkit:     %s\n".cstring(), cwebkit)
//    @printf[I32]("cresource:   %s\n".cstring(), cresource)
//    @printf[I32]("curirequest: %s\n".cstring(), curirequest)
    var curi = @webkit_web_resource_get_uri[Array[U8 val] ref](rls.webresource)
    @printf[I32]("URI: %s\n".cstring(), curi)

//    var cstr: Pointer[U8 val] ref = @webkit_uri_request_get_uri[Pointer[U8 val] ref](rls.weburirequest)
//    var str: String ref = String.from_cstring(cstr)
//    Debug.out(str)



primitive GType
