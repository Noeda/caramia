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
    , gl_UNSIGNED_BYTE
    , gl_BYTE
    , gl_UNSIGNED_SHORT
    , gl_SHORT
    , gl_UNSIGNED_INT
    , gl_INT
    , gl_HALF_FLOAT
    , gl_FLOAT
    , gl_DOUBLE
    , gl_LINK_STATUS
    , gl_COMPILE_STATUS
    , gl_INFO_LOG_LENGTH
    , gl_VERTEX_SHADER
    , gl_FRAGMENT_SHADER
    , gl_GEOMETRY_SHADER
      -- the actual exports
    , mglGenBuffer
    , mglDeleteBuffer
    , mglNamedBufferData
    , mglNamedBufferStorage
    , mglGetVersion
    , mglInitializeGLEW
    , mglMapNamedBufferRange
    , mglUnmapNamedBuffer
    , mglNamedCopyBufferSubData
    , mglGenVertexArray
    , mglDeleteVertexArray
    , mglDeleteProgram
    , mglCreateProgram
    , mglGetProgramiv
    , mglGetProgramInfoLog
    , mglAttachShader
    , mglLinkProgram
    , mglCreateShader
    , mglDeleteShader
    , mglShaderSource
    , mglGetShaderiv
    , mglGetShaderInfoLog
    , mglVertexArrayVertexAttribOffset
    , mglVertexArrayVertexAttribIOffset
    , mglCompileShader

    , mglProgramUniform1ui
    , mglProgramUniform2ui
    , mglProgramUniform3ui
    , mglProgramUniform4ui
    , mglProgramUniform1i
    , mglProgramUniform2i
    , mglProgramUniform3i
    , mglProgramUniform4i
    , mglProgramUniform1f
    , mglProgramUniform2f
    , mglProgramUniform3f
    , mglProgramUniform4f
    , mglProgramUniformMatrix3fv
    , mglProgramUniformMatrix4fv

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
foreign import ccall unsafe mglNamedCopyBufferSubData ::
    GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()
foreign import ccall unsafe mglGenVertexArray :: IO GLuint
foreign import ccall unsafe mglDeleteVertexArray :: GLuint -> IO ()

foreign import ccall unsafe mglVertexArrayVertexAttribIOffset ::
    GLuint -> GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr
    -> IO ()
foreign import ccall unsafe mglVertexArrayVertexAttribOffset ::
    GLuint -> GLuint -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei
    -> GLintptr -> IO ()

foreign import ccall unsafe mglDeleteProgram :: GLuint -> IO ()
foreign import ccall unsafe mglCreateProgram :: IO GLuint
foreign import ccall unsafe mglGetProgramiv ::
    GLuint -> GLenum -> Ptr GLint -> IO ()
foreign import ccall unsafe mglGetProgramInfoLog ::
    GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
foreign import ccall unsafe mglAttachShader ::
    GLuint -> GLuint -> IO ()
foreign import ccall unsafe mglLinkProgram ::
    GLuint -> IO ()
foreign import ccall unsafe mglCreateShader ::
    GLenum -> IO GLuint
foreign import ccall unsafe mglDeleteShader ::
    GLuint -> IO ()
foreign import ccall unsafe mglShaderSource ::
    GLuint -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO ()
foreign import ccall unsafe mglCompileShader ::
    GLuint -> IO ()
foreign import ccall unsafe mglGetShaderiv ::
    GLuint -> GLenum -> Ptr GLint -> IO ()
foreign import ccall unsafe mglGetShaderInfoLog ::
    GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()

foreign import ccall unsafe mglProgramUniform1ui ::
    GLuint -> GLint -> GLuint -> IO ()
foreign import ccall unsafe mglProgramUniform2ui ::
    GLuint -> GLint -> GLuint -> GLuint -> IO ()
foreign import ccall unsafe mglProgramUniform3ui ::
    GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ()
foreign import ccall unsafe mglProgramUniform4ui ::
    GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
foreign import ccall unsafe mglProgramUniform1i ::
    GLuint -> GLint -> GLint -> IO ()
foreign import ccall unsafe mglProgramUniform2i ::
    GLuint -> GLint -> GLint -> GLint -> IO ()
foreign import ccall unsafe mglProgramUniform3i ::
    GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
foreign import ccall unsafe mglProgramUniform4i ::
    GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ()
foreign import ccall unsafe mglProgramUniform1f ::
    GLuint -> GLint -> GLfloat -> IO ()
foreign import ccall unsafe mglProgramUniform2f ::
    GLuint -> GLint -> GLfloat -> GLfloat -> IO ()
foreign import ccall unsafe mglProgramUniform3f ::
    GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()
foreign import ccall unsafe mglProgramUniform4f ::
    GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
foreign import ccall unsafe mglProgramUniformMatrix3fv ::
    GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
foreign import ccall unsafe mglProgramUniformMatrix4fv ::
    GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()

has_GL_ARB_buffer_storage :: Bool
has_GL_ARB_buffer_storage = c_has_GL_ARB_buffer_storage == 1

