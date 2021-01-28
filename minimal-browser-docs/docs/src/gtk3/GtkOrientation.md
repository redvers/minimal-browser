```````pony-full-source
/*
   needs: []
provides: ["GtkOrientation"]
*/
    type GtkOrientation is ( GtkOrientationHorizontal | GtkOrientationVertical )

primitive GtkOrientationHorizontal fun apply(): U32 val => U32(0)
primitive GtkOrientationVertical fun apply(): U32 val => U32(1)



```````