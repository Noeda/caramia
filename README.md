This is a library for real-time graphics for Haskell, using OpenGL 3.3.

Requirements:

  * GHC 7.6+
  * OpenGL 3.3 (and GL\_ARB\_texture\_storage) (on the system where programs are
    run)

You need to use `-threaded` flag in executables that use this library.

Here are the most important features of this library:

  * Low-level, but convenient to use

  * Safe and automatic finalization of OpenGL resources

  * No implicit state (that is, no glBind* mess or equivalent). There is a
    monad for mass-rendering that has implicit state but the state is localized
    to running of that monad. (see Caramia.Render).

  * The only required extension beyond vanilla OpenGL 3.3 is
    GL\_ARB\_texture\_storage. Some other extensions are used if they are
    available.

Here are some curious features that you might find useful.

  * This library plays nice with other OpenGL libraries. It does not mess up
    the implicit OpenGL state (except for aforementioned rendering monad).

  * This library does not create an OpenGL context. You can use whatever
    library you want to create an OpenGL context as long as it can get an
    OpenGL 3.3 context. You may be interested in the `caramia-sdl2` library if
    you just want to quickly get something running.

  * Operations are in the `IO` monad. No messing around with custom monads.

(At least) the following OpenGL concepts are present in this library:

  * Buffer objects (you can do low-level mapping and use raw pointers)

  * Geometry, vertex and fragment shaders

  * Indexed and non-indexed rendering

  * Framebuffers

  * Textures (with many topologies, 1D, 2D, 3D, texture arrays, cube textures;
    we also have buffer textures and multisampling textures)

  * Vertex array objects

  * Blending, stencil, depth and cull tests

  * Instanced rendering

  * Synchronization objects

Some notable missing features:

  * Tesselation shaders. This is an OpenGL 4.x feature but we could add it.

  * Using shaders with transform feedback.

  * Multi-threaded rendering.

This library tries to avoid including obsolete or redundant features of OpenGL.

One major flaw(?) of this library is that OpenGL resources cannot be easily
released promptly. This may or may not be a problem for you. OpenGL resources
may refer to each other behind the scenes so if we implement a mechanism to
release resources early, this mechanism needs to take care of resources
referring to each other.

Expect bugs. While this library has been tested in some of the author's toy
programs, the library currently lacks automatic tests.

