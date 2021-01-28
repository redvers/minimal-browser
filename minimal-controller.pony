
actor AppController
  var appmodel: AppModel
  var callbacka: @{(AppModel): I32}  = @{(appmodel: AppModel): I32 =>
    var uri: String = appmodel.urientry.get_text()
    appmodel.webkit.load_uri(uri)
    @gtk_false[I32]()
  }

  new create(appmodel': AppModel) => appmodel = appmodel'
    appmodel.urientry.signal_connect[AppController]("activate", AppCallbacks~activate_uri(), this)



  be activate_uri() =>
    var uri: String = appmodel.urientry.get_text()
    @g_main_context_invoke[None](U32(0), callbacka, appmodel)
