# GtkGLArea
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L6)</span>

#GtkGLArea is a widget that allows drawing with OpenGL.

#GtkGLArea sets up its own #GdkGLContext for the window it creates, and
creates a custom GL framebuffer that the widget will do GL rendering onto.
It also ensures that this framebuffer is the default GL rendering target
when rendering.

In order to draw, you have to connect to the #GtkGLArea::render signal,
or subclass #GtkGLArea and override the @GtkGLAreaClass.render() virtual
function.

The #GtkGLArea widget ensures that the #GdkGLContext is associated with
the widget's drawing area, and it is kept updated when the size and
position of the drawing area changes.

## Drawing with GtkGLArea ##

The simplest way to draw using OpenGL commands in a #GtkGLArea is to
create a widget instance and connect to the #GtkGLArea::render signal:

|[<!-- language="C" -->
  // create a GtkGLArea instance
  GtkWidget *gl_area = gtk_gl_area_new ();

  // connect to the "render" signal
  g_signal_connect (gl_area, "render", G_CALLBACK (render), NULL);
]|

The `render()` function will be called when the #GtkGLArea is ready
for you to draw its content:

|[<!-- language="C" -->
  static gboolean
  render (GtkGLArea *area, GdkGLContext *context)
  {
    // inside this function it's safe to use GL; the given
    // #GdkGLContext has been made current to the drawable
    // surface used by the #GtkGLArea and the viewport has
    // already been set to be the size of the allocation

    // we can start by clearing the buffer
    glClearColor (0, 0, 0, 0);
    glClear (GL_COLOR_BUFFER_BIT);

    // draw your object
    draw_an_object ();

    // we completed our drawing; the draw commands will be
    // flushed at the end of the signal emission chain, and
    // the buffers will be drawn on the window
    return TRUE;
  }
]|

If you need to initialize OpenGL state, e.g. buffer objects or
shaders, you should use the #GtkWidget::realize signal; you
can use the #GtkWidget::unrealize signal to clean up. Since the
#GdkGLContext creation and initialization may fail, you will
need to check for errors, using gtk_gl_area_get_error(). An example
of how to safely initialize the GL state is:

|[<!-- language="C" -->
  static void
  on_realize (GtkGLarea *area)
  {
    // We need to make the context current if we want to
    // call GL API
    gtk_gl_area_make_current (area);

    // If there were errors during the initialization or
    // when trying to make the context current, this
    // function will return a #GError for you to catch
    if (gtk_gl_area_get_error (area) != NULL)
      return;

    // You can also use gtk_gl_area_set_error() in order
    // to show eventual initialization errors on the
    // GtkGLArea widget itself
    GError *internal_error = NULL;
    init_buffer_objects (&error);
    if (error != NULL)
      {
        gtk_gl_area_set_error (area, error);
        g_error_free (error);
        return;
      }

    init_shaders (&error);
    if (error != NULL)
      {
        gtk_gl_area_set_error (area, error);
        g_error_free (error);
        return;
      }
  }
]|

If you need to change the options for creating the #GdkGLContext
you should use the #GtkGLArea::create-context signal.


```pony
class val GtkGLArea is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L112)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkGLArea val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L115)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGLArea val^
```
#### Parameters

*   widget': [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L118)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkGLArea val^
```

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L122)</span>


```pony
new val create()
: GtkGLArea val^
```

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) val^

---

## Public fields

### var widget: [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L108)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L110)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](minimal-browser-..-gobject-GObjectREF.md) val

---

### attach_buffers
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L126)</span>


Ensures that the @area framebuffer object is made the current draw
and read target, and that all the required buffers for the @area
are created and bound to the frambuffer.

This function is automatically called before emitting the
#GtkGLArea::render signal, and doesn't normally need to be called
by application code.


```pony
fun box attach_buffers()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_auto_render
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L138)</span>


Returns whether the area is in auto render mode or not.


```pony
fun box get_auto_render()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_alpha
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L158)</span>


Returns whether the area has an alpha component.


```pony
fun box get_has_alpha()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_depth_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L164)</span>


Returns whether the area has a depth buffer.


```pony
fun box get_has_depth_buffer()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_stencil_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L170)</span>


Returns whether the area has a stencil buffer.


```pony
fun box get_has_stencil_buffer()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_es
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L181)</span>


Retrieves the value set by gtk_gl_area_set_use_es().


```pony
fun box get_use_es()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### make_current
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L187)</span>


Ensures that the #GdkGLContext used by @area is associated with
the #GtkGLArea.

This function is automatically called before emitting the
#GtkGLArea::render signal, and doesn't normally need to be called
by application code.


```pony
fun box make_current()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### queue_render
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L198)</span>


Marks the currently rendered data (if any) as invalid, and queues
a redraw of the widget, ensuring that the #GtkGLArea::render signal
is emitted during the draw.

This is only needed when the gtk_gl_area_set_auto_render() has
been called with a %FALSE value. The default behaviour is to
emit #GtkGLArea::render on each draw.


```pony
fun box queue_render()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_auto_render
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L210)</span>


If @auto_render is %TRUE the #GtkGLArea::render signal will be
emitted every time the widget draws. This is the default and is
useful if drawing the widget is faster.

If @auto_render is %FALSE the data from previous rendering is kept
around and will be used for drawing the widget the next time,
unless the window is resized. In order to force a rendering
gtk_gl_area_queue_render() must be called. This mode is useful when
the scene changes seldomly, but takes a long time to redraw.


```pony
fun box set_auto_render(
  auto_render_pony: Bool val)
: None val
```
#### Parameters

*   auto_render_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_alpha
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L228)</span>


If @has_alpha is %TRUE the buffer allocated by the widget will have
an alpha channel component, and when rendering to the window the
result will be composited over whatever is below the widget.

If @has_alpha is %FALSE there will be no alpha channel, and the
buffer will fully replace anything below the widget.


```pony
fun box set_has_alpha(
  has_alpha_pony: Bool val)
: None val
```
#### Parameters

*   has_alpha_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_depth_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L239)</span>


If @has_depth_buffer is %TRUE the widget will allocate and
enable a depth buffer for the target framebuffer. Otherwise
there will be none.


```pony
fun box set_has_depth_buffer(
  has_depth_buffer_pony: Bool val)
: None val
```
#### Parameters

*   has_depth_buffer_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_stencil_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L247)</span>


If @has_stencil_buffer is %TRUE the widget will allocate and
enable a stencil buffer for the target framebuffer. Otherwise
there will be none.


```pony
fun box set_has_stencil_buffer(
  has_stencil_buffer_pony: Bool val)
: None val
```
#### Parameters

*   has_stencil_buffer_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_required_version
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L255)</span>


Sets the required version of OpenGL to be used when creating the context
for the widget.

This function must be called before the area has been realized.


```pony
fun box set_required_version(
  major_pony: I32 val,
  minor_pony: I32 val)
: None val
```
#### Parameters

*   major_pony: [I32](builtin-I32.md) val
*   minor_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_es
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L264)</span>


Sets whether the @area should create an OpenGL or an OpenGL ES context.

You should check the capabilities of the #GdkGLContext before drawing
with either API.


```pony
fun box set_use_es(
  use_es_pony: Bool val)
: None val
```
#### Parameters

*   use_es_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### show_all
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L4)</span>


```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L7)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


```pony
fun box signal_connect[V: Any #share](
  detailed_signal: String val,
  c_handler: @{(GObjectREF, V)}[V] val,
  data: V)
: U64 val
```
#### Parameters

*   detailed_signal: [String](builtin-String.md) val
*   c_handler: @{(GObjectREF, V)}[V] val
*   data: V

#### Returns

* [U64](builtin-U64.md) val

---

