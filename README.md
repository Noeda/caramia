[![Hackage](https://img.shields.io/hackage/v/caramia.svg)](https://hackage.haskell.org/package/caramia)
[![Build Status](https://travis-ci.org/Noeda/caramia.svg?branch=master)](https://travis-ci.org/Noeda/caramia)

This is a highish-level OpenGL bindings library for real-time graphics for
Haskell, with minimum OpenGL version being 2.1.

Requirements:

  * GHC 7.8+
  * OpenGL 2.1 (with some extensions)

If the target system has OpenGL 3.3, then all features in this library should
be available unless stated otherwise. OpenGL contexts with 3.x or later
versions can be a core profile; this library does not care.

You need to use `-threaded` flag in executables that use this library.

Here are the most important features of this library:

  * Safe and automatic finalization of OpenGL resources

  * No implicit state (that is, no glBind* mess or equivalent). There is a
    monad for mass-rendering that has implicit state but the state is localized
    to running of that monad. (see Caramia.Render).

Here are some curious features that you might find useful.

  * This library plays nice with other OpenGL libraries. It does not mess up
    the implicit OpenGL state (except for aforementioned rendering monad).

  * This library does not create an OpenGL context. You can use whatever
    library you want to create an OpenGL context as long as it can get an
    OpenGL 2.1 (or any later version) context. You may be interested at looking
    at the tests in this package to see how to use this with the `sdl2`
    package.

  * Operations are generalized over `MonadIO`. Works on top of pure `IO` and
    also in your custom monad stacks, if they have `MonadIO` at bottom.

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

  * Query objects

This library tries to avoid including obsolete or redundant features of OpenGL.

Note that the library is in flux and API-breaking changes tend to happen
often.

