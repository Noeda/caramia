This is a library for real-time graphics for Haskell, using OpenGL 3.3.

Requirements:

  * GHC 7.8
  * OpenGL 3.3 (and GL_ARB_texture_storage) (on the system where programs are
    run)

You need to use `-threaded` flag in executables that use this library.

You can think this library as glorified OpenGL bindings. There were plans to
have several backends but for the moment there are no resources or good reasons
to do that.

While we do have API documentation, there are no good examples. The first
module you want to look at is `Caramia.Context` because you need to run
`giveContext` before you can use any other functionality.

Here are the most important features of this library:

  * Low-level, but convenient to use

  * Safe and automatic finalization of OpenGL resources

  * No implicit state (that is, no glBind* mess or equivalent)[1]

  * The only required extension beyond OpenGL 3.3 is GL_ARB_texture_storage. We
    use some other extensions if they are available.[3]

From technical perspective, you might find these features useful:

  * This library plays nice with other OpenGL libraries. It does not mess up
    the implicit OpenGL state.

  * This library does not create an OpenGL context. You can use whatever
    library you want to create an OpenGL context as long as it can get an
    OpenGL 3.3 context. You may be interested in the `caramia-sdl2` library if
    you just want to quickly get something running.

  * All operations are in the `IO` monad. No messing around with custom monads.

(At least) the following OpenGL concepts are present in this library:

  * Buffer objects (with pointer-level mapping)

  * Geometry, vertex and fragment shaders

  * Indexed and non-indexed rendering

  * Framebuffers

  * Textures (with many topologies, 1D, 2D, 3D, texture arrays, cube textures;
    we also have multisampling textures)

  * Vertex array objects

  * Blending, stencil, depth and cull tests

  * Instanced rendering

  * Synchronization objects

Some notable missing features:

  * Tesselation shaders. This is an OpenGL 4.x feature but we could add it.

  * Using shaders with transform feedback.

We target the most useful[2] features. The idea is to stay simple while still
being powerful. We don't have any of the deprecated <3.0 OpenGL era
functionality. Another example is that, in shaders, we do not have implicit
attribute locations (that is, we have no `glGetAttribLocation` equivalent).
All shaders must define the location of their attributes. We also do not have
framebuffers with render targets that are not textures.

That being said, if something useful. is missing, it is not very difficult to
add it.

[1]: There is a data structure that allows you to have localized implicit
state for the purposes of performance in case large amounts of drawing commands
have to be issued (See `Caramia.Render` module).

[2]: As perceived by us.

[3]: Later we might add OpenGL 4.x features that may not be always available.

