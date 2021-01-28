```````pony-full-source
use "lib:gobject-2.0"
primitive GObjectREF

primitive GObject
 fun signal_connect[V: Any #share](instance: GObjectREF, detailed_signal: String, c_handler: @{(GObjectREF, V)}, data: V): U64 =>
     @g_signal_connect_data[U64](instance, detailed_signal.cstring(), c_handler, data)

```````