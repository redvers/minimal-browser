```````pony-full-source
/*
   needs: []
provides: ["GtkIconSize"]
*/
    type GtkIconSize is ( GtkIconSizeInvalid | GtkIconSizeMenu | GtkIconSizeSmallToolbar | GtkIconSizeLargeToolbar | GtkIconSizeButton | GtkIconSizeDnd | GtkIconSizeDialog )

primitive GtkIconSizeInvalid fun apply(): U32 val => U32(0)
primitive GtkIconSizeMenu fun apply(): U32 val => U32(1)
primitive GtkIconSizeSmallToolbar fun apply(): U32 val => U32(2)
primitive GtkIconSizeLargeToolbar fun apply(): U32 val => U32(3)
primitive GtkIconSizeButton fun apply(): U32 val => U32(4)
primitive GtkIconSizeDnd fun apply(): U32 val => U32(5)
primitive GtkIconSizeDialog fun apply(): U32 val => U32(6)



```````