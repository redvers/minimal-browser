with import <nixpkgs> {} ;
pkgs.mkShell {
  buildInputs = with pkgs; [
    ponyc
    pony-corral
    stdenv
    pkg-config
    gobject-introspection
    glib
    gtk3
    elixir
    erlang
    lldb_7
    gnome3.webkitgtk
    glade
    mkdocs
    libsoup
  ];

  shellHook = ''
    export GIO_MODULE_DIR=${glib-networking}/lib/gio/modules
  '';
}
