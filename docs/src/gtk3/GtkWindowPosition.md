```````pony-full-source
/*
   needs: []
provides: ["GtkWindowPosition"]
*/
    type GtkWindowPosition is ( GtkWinPosNone | GtkWinPosCenter | GtkWinPosMouse | GtkWinPosCenterAlways | GtkWinPosCenterOnParent )

primitive GtkWinPosNone fun apply(): U32 val => U32(0)
primitive GtkWinPosCenter fun apply(): U32 val => U32(1)
primitive GtkWinPosMouse fun apply(): U32 val => U32(2)
primitive GtkWinPosCenterAlways fun apply(): U32 val => U32(3)
primitive GtkWinPosCenterOnParent fun apply(): U32 val => U32(4)



```````