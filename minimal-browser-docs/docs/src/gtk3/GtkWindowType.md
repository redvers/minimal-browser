```````pony-full-source
/*
   needs: []
provides: ["GtkWindowType"]
*/
    type GtkWindowType is ( GtkWindowToplevel | GtkWindowPopup )

primitive GtkWindowToplevel fun apply(): U32 val => U32(0)
primitive GtkWindowPopup fun apply(): U32 val => U32(1)



```````