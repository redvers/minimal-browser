```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF", "F64"]
provides: ["GtkLevelBar val"]
*/
use "../gobject"
class val GtkLevelBar is GtkWidget
"""
The #GtkLevelBar is a bar widget that can be used
as a level indicator. Typical use cases are displaying the strength
of a password, or showing the charge level of a battery.

Use gtk_level_bar_set_value() to set the current value, and
gtk_level_bar_add_offset_value() to set the value offsets at which
the bar will be considered in a different state. GTK will add a few
offsets by default on the level bar: #GTK_LEVEL_BAR_OFFSET_LOW,
#GTK_LEVEL_BAR_OFFSET_HIGH and #GTK_LEVEL_BAR_OFFSET_FULL, with
values 0.25, 0.75 and 1.0 respectively.

Note that it is your responsibility to update preexisting offsets
when changing the minimum or maximum value. GTK+ will simply clamp
them to the new range.

## Adding a custom offset on the bar

|[<!-- language="C" -->

static GtkWidget *
create_level_bar (void)
{
  GtkWidget *widget;
  GtkLevelBar *bar;

  widget = gtk_level_bar_new ();
  bar = GTK_LEVEL_BAR (widget);

  // This changes the value of the default low offset

  gtk_level_bar_add_offset_value (bar,
                                  GTK_LEVEL_BAR_OFFSET_LOW,
                                  0.10);

  // This adds a new offset to the bar; the application will
  // be able to change its color CSS like this:
  //
  // levelbar block.my-offset {
  //   background-color: magenta;
  //   border-style: solid;
  //   border-color: black;
  //   border-style: 1px;
  // }

  gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);

  return widget;
}
]|

The default interval of values is between zero and one, but it’s possible to
modify the interval using gtk_level_bar_set_min_value() and
gtk_level_bar_set_max_value(). The value will be always drawn in proportion to
the admissible interval, i.e. a value of 15 with a specified interval between
10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
When #GTK_LEVEL_BAR_MODE_DISCRETE is used, the bar level is rendered
as a finite number of separated blocks instead of a single one. The number
of blocks that will be rendered is equal to the number of units specified by
the admissible interval.

For instance, to build a bar rendered with five blocks, it’s sufficient to
set the minimum value to 0 and the maximum value to 5 after changing the indicator
mode to discrete.

GtkLevelBar was introduced in GTK+ 3.6.

# GtkLevelBar as GtkBuildable

The GtkLevelBar implementation of the GtkBuildable interface supports a
custom <offsets> element, which can contain any number of <offset> elements,
each of which must have name and value attributes.

# CSS nodes

|[<!-- language="plain" -->
levelbar[.discrete]
╰── trough
    ├── block.filled.level-name
    ┊
    ├── block.empty
    ┊
]|

GtkLevelBar has a main CSS node with name levelbar and one of the style
classes .discrete or .continuous and a subnode with name trough. Below the
trough node are a number of nodes with name block and style class .filled
or .empty. In continuous mode, there is exactly one node of each, in discrete
mode, the number of filled and unfilled nodes corresponds to blocks that are
drawn. The block.filled nodes also get a style class .level-name corresponding
to the level for the current value.

In horizontal orientation, the nodes are always arranged from left to right,
regardless of text direction.
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
    widget = @gtk_level_bar_new[GObjectREF]() //

  new val new_for_interval(min_value_pony: F64, max_value_pony: F64) =>
    widget = @gtk_level_bar_new_for_interval[GObjectREF](min_value_pony, max_value_pony) //


/* add_offset_value unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun get_inverted(): Bool =>
"""
Return the value of the #GtkLevelBar:inverted property.
"""
  @gtk_level_bar_get_inverted[Bool](widget)

/* get_max_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_min_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_mode unavailable due to return typing issues
{:argctype, "GtkLevelBarMode"}
{:argname, "rv"}
{:argtype, "LevelBarMode"}
{:paramtype, :param}
{:txo, "none"} */

/* get_offset_value unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "value", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* remove_offset_value unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_inverted(inverted_pony: Bool): None =>
"""
Sets the value of the #GtkLevelBar:inverted property.
"""
  @gtk_level_bar_set_inverted[None](widget, inverted_pony)

/* set_max_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_min_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_mode unavailable due to typing issues
 {:doh, %{argctype: "GtkLevelBarMode", argname: "mode", argtype: "LevelBarMode", paramtype: :param, txo: "none"}}
*/

/* set_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```````