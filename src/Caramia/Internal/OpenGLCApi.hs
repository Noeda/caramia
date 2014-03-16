{-# LANGUAGE ForeignFunctionInterface #-}

module Caramia.Internal.OpenGLCApi
    ( module Graphics.Rendering.OpenGL.Raw.Types
      -- hand-picked exports
    , gl_STATIC_DRAW
    , gl_STATIC_READ
    , gl_STATIC_COPY
    , gl_STREAM_DRAW
    , gl_STREAM_READ
    , gl_STREAM_COPY
    , gl_DYNAMIC_DRAW
    , gl_DYNAMIC_READ
    , gl_DYNAMIC_COPY
    , gl_MAP_READ_BIT
    , gl_MAP_WRITE_BIT
    , gl_TRUE
    , gl_FALSE
      -- the actual exports
    , mglGenBuffer
    , mglDeleteBuffer
    , mglNamedBufferData
    , mglNamedBufferStorage
    , mglGetVersion
    , mglInitializeGLEW
    , mglMapNamedBufferRange
    , mglUnmapNamedBuffer
    , has_GL_ARB_buffer_storage
    )
    where

import Graphics.Rendering.OpenGL.Raw.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Foreign.C.Types
import Foreign.Ptr

foreign import ccall unsafe mglGenBuffer :: IO GLuint
foreign import ccall unsafe
    "has_GL_ARB_buffer_storage" c_has_GL_ARB_buffer_storage :: CInt

foreign import ccall unsafe mglDeleteBuffer :: GLuint -> IO ()
foreign import ccall unsafe mglNamedBufferData ::
    GLuint -> GLsizeiptr -> Ptr () -> GLenum -> IO ()
foreign import ccall unsafe mglNamedBufferStorage ::
    GLuint -> GLsizeiptr -> Ptr () -> GLbitfield -> IO ()
foreign import ccall unsafe mglGetVersion :: Ptr CInt -> Ptr CInt -> IO ()
foreign import ccall unsafe mglInitializeGLEW :: IO ()
foreign import ccall unsafe mglMapNamedBufferRange ::
    GLuint -> GLintptr -> GLsizeiptr -> GLenum -> IO (Ptr ())
foreign import ccall unsafe mglUnmapNamedBuffer ::
    GLuint -> IO GLboolean

has_GL_ARB_buffer_storage :: Bool
has_GL_ARB_buffer_storage = c_has_GL_ARB_buffer_storage == 1

