{-# LANGUAGE ForeignFunctionInterface #-}

module Caramia.Internal.OpenGLCApi
    ( module Ex

    , gi

    , gl_TEXTURE_FREE_MEMORY
    , gl_GPU_MEMORY_INFO_DEDICATED_VIDMEM
    , gl_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM

    , withBoundVAO
    , withBoundBuffer
    , withBoundElementBuffer
    , withBoundPixelUnpackBuffer
    , withBoundProgram
    , withBoundDrawFramebuffer

    , setBoundProgram
    , setBoundElementBuffer

    -- These are not yet in OpenGLRaw
    , glTexStorage1D
    , glTexStorage2D
    , glTexStorage3D
    , glInvalidateBufferData

    -- Functions that I made up that I wish were in OpenGL.
    , mglDeleteBuffer
    , mglGenBuffer
    , mglDeleteVertexArray
    , mglGenVertexArray
    , mglDeleteFramebuffer
    , mglGenFramebuffer
    , mglNamedBufferData
    , mglVertexArrayVertexAttribOffsetAndEnable
    , mglVertexArrayVertexAttribIOffsetAndEnable
    -- GL_ARB_separate_shader_objects...but I want them even if that extension
    -- is not available.
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
    , mglProgramUniformMatrix4fv
    , mglProgramUniformMatrix3fv
    , mglMapNamedBufferRange
    , mglUnmapNamedBuffer
    , mglNamedCopyBufferSubData
    )
    where

import Caramia.Prelude

import Graphics.Rendering.OpenGL.Raw.Types as Ex
import Graphics.Rendering.OpenGL.Raw.Core32 as Ex
import Graphics.Rendering.OpenGL.Raw.ARB.SeparateShaderObjects
import Graphics.Rendering.OpenGL.Raw.ARB.InstancedArrays as Ex
import Graphics.Rendering.OpenGL.Raw.EXT.DirectStateAccess
import Graphics.Rendering.OpenGL.Raw.EXT.TextureCompressionS3TC as Ex
import Graphics.Rendering.OpenGL.Raw.EXT.TextureSRGB as Ex
import Graphics.Rendering.OpenGL.Raw.EXT.TextureFilterAnisotropic as Ex
import Graphics.Rendering.OpenGL.Raw.GetProcAddress
import Foreign
import Foreign.C.Types
import Control.Exception
import System.IO.Unsafe

import Caramia.Internal.OpenGLExtensions

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

mglDeleteBuffer :: GLuint -> IO ()
mglDeleteBuffer x = with x $ \x_ptr -> glDeleteBuffers 1 x_ptr

mglDeleteVertexArray :: GLuint -> IO ()
mglDeleteVertexArray x = with x $ \x_ptr -> glDeleteVertexArrays 1 x_ptr

mglGenBuffer :: IO GLuint
mglGenBuffer = alloca $ \x_ptr -> glGenBuffers 1 x_ptr *> peek x_ptr

mglGenVertexArray :: IO GLuint
mglGenVertexArray = alloca $ \x_ptr -> glGenVertexArrays 1 x_ptr *> peek x_ptr

mglGenFramebuffer :: IO GLuint
mglGenFramebuffer = alloca $ \x_ptr -> glGenFramebuffers 1 x_ptr *> peek x_ptr

mglDeleteFramebuffer :: GLuint -> IO ()
mglDeleteFramebuffer x = with x $ \x_ptr -> glDeleteFramebuffers 1 x_ptr

withBoundDrawFramebuffer :: GLuint -> IO a -> IO a
withBoundDrawFramebuffer x action = do
    old <- gi gl_DRAW_FRAMEBUFFER_BINDING
    finally (glBindFramebuffer gl_DRAW_FRAMEBUFFER x *> action)
            (glBindFramebuffer gl_DRAW_FRAMEBUFFER old)

withBoundProgram :: GLuint -> IO a -> IO a
withBoundProgram program action = do
    old <-
        alloca $ \x_ptr -> glGetIntegerv gl_CURRENT_PROGRAM x_ptr *> peek x_ptr
    finally (glUseProgram program *> action)
            (glUseProgram $ fromIntegral old)

setBoundProgram :: GLuint -> IO ()
setBoundProgram = glUseProgram

withBoundBuffer :: GLuint -> IO a -> IO a
withBoundBuffer buf action = do
    old <-
        alloca $ \x_ptr -> glGetIntegerv gl_ARRAY_BUFFER_BINDING x_ptr *>
                           peek x_ptr
    finally (glBindBuffer gl_ARRAY_BUFFER buf *> action)
            (glBindBuffer gl_ARRAY_BUFFER $ fromIntegral old)

setBoundElementBuffer :: GLuint -> IO ()
setBoundElementBuffer =
    glBindBuffer gl_ELEMENT_ARRAY_BUFFER

withBoundElementBuffer :: GLuint -> IO a -> IO a
withBoundElementBuffer buf action = do
    old <-
        alloca $ \x_ptr -> glGetIntegerv gl_ELEMENT_ARRAY_BUFFER_BINDING x_ptr *>
                           peek x_ptr
    finally (glBindBuffer gl_ELEMENT_ARRAY_BUFFER buf *> action)
            (glBindBuffer gl_ELEMENT_ARRAY_BUFFER $ fromIntegral old)

withBoundPixelUnpackBuffer :: GLuint -> IO a -> IO a
withBoundPixelUnpackBuffer buf action = do
    old <-
        alloca $ \x_ptr -> glGetIntegerv gl_PIXEL_UNPACK_BUFFER_BINDING x_ptr *>
                           peek x_ptr
    finally (glBindBuffer gl_PIXEL_UNPACK_BUFFER buf *> action)
            (glBindBuffer gl_PIXEL_UNPACK_BUFFER $ fromIntegral old)

withBoundVAO :: GLuint -> IO a -> IO a
withBoundVAO vao action = do
    old <-
        alloca $ \x_ptr -> glGetIntegerv gl_VERTEX_ARRAY_BINDING x_ptr *>
                           peek x_ptr
    finally (glBindVertexArray vao *> action)
            (glBindVertexArray $ fromIntegral old)

mglVertexArrayVertexAttribOffsetAndEnable ::
        GLuint -> GLuint -> GLuint -> GLint -> GLenum
     -> GLboolean -> GLsizei -> GLintptr -> IO ()
mglVertexArrayVertexAttribOffsetAndEnable
    vaobj buffer index size dtype normalized stride (CPtrdiff offset) = mask_ $

    withBoundVAO vaobj $
        withBoundBuffer buffer $ do
            glEnableVertexAttribArray index
            glVertexAttribPointer index size dtype normalized stride
                                  (intPtrToPtr $ fromIntegral offset)

mglVertexArrayVertexAttribIOffsetAndEnable ::
        GLuint -> GLuint -> GLuint -> GLint -> GLenum
     -> GLsizei -> GLintptr -> IO ()
mglVertexArrayVertexAttribIOffsetAndEnable
    vaobj buffer index size dtype stride offset = mask_ $

    withBoundVAO vaobj $
        withBoundBuffer buffer $ do
            glEnableVertexAttribArray index
            glVertexAttribIPointer index size dtype stride
                                   (intPtrToPtr $ fromIntegral offset)

mglNamedBufferData :: GLuint
                   -> GLsizeiptr
                   -> Ptr ()
                   -> GLenum
                   -> IO ()
mglNamedBufferData buf size ptr usage =
    whenExt has_GL_EXT_direct_state_access
        (glNamedBufferData buf size ptr usage)
        (withBoundBuffer buf $ glBufferData gl_ARRAY_BUFFER size ptr usage)

mglProgramUniform1ui :: GLuint -> GLint -> GLuint -> IO ()
mglProgramUniform1ui program loc v1 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniform1ui program loc v1)
          (withBoundProgram program $ glUniform1ui loc v1)

mglProgramUniform2ui :: GLuint -> GLint -> GLuint -> GLuint -> IO ()
mglProgramUniform2ui program loc v1 v2 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniform2ui program loc v1 v2)
          (withBoundProgram program $ glUniform2ui loc v1 v2)

mglProgramUniform3ui :: GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ()
mglProgramUniform3ui program loc v1 v2 v3 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniform3ui program loc v1 v2 v3)
          (withBoundProgram program $ glUniform3ui loc v1 v2 v3)

mglProgramUniform4ui :: GLuint -> GLint -> GLuint -> GLuint -> GLuint
                     -> GLuint -> IO ()
mglProgramUniform4ui program loc v1 v2 v3 v4 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniform4ui program loc v1 v2 v3 v4)
          (withBoundProgram program $ glUniform4ui loc v1 v2 v3 v4)

mglProgramUniform1i :: GLuint -> GLint -> GLint -> IO ()
mglProgramUniform1i program loc v1 =
    whenExt has_GL_ARB_separate_shader_objects (glProgramUniform1i program loc v1)
          (withBoundProgram program $ glUniform1i loc v1)

mglProgramUniform2i :: GLuint -> GLint -> GLint -> GLint -> IO ()
mglProgramUniform2i program loc v1 v2 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniform2i program loc v1 v2)
          (withBoundProgram program $ glUniform2i loc v1 v2)

mglProgramUniform3i :: GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
mglProgramUniform3i program loc v1 v2 v3 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniform3i program loc v1 v2 v3)
          (withBoundProgram program $ glUniform3i loc v1 v2 v3)

mglProgramUniform4i :: GLuint -> GLint -> GLint -> GLint -> GLint
                     -> GLint -> IO ()
mglProgramUniform4i program loc v1 v2 v3 v4 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniform4i program loc v1 v2 v3 v4)
          (withBoundProgram program $ glUniform4i loc v1 v2 v3 v4)

mglProgramUniform1f :: GLuint -> GLint -> GLfloat -> IO ()
mglProgramUniform1f program loc v1 =
    whenExt has_GL_ARB_separate_shader_objects
        (glProgramUniform1f program loc v1)
        (withBoundProgram program $ glUniform1f loc v1)

mglProgramUniform2f :: GLuint -> GLint -> GLfloat -> GLfloat -> IO ()
mglProgramUniform2f program loc v1 v2 =
    whenExt has_GL_ARB_separate_shader_objects
        (glProgramUniform2f program loc v1 v2)
        (withBoundProgram program $ glUniform2f loc v1 v2)

mglProgramUniform3f :: GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()
mglProgramUniform3f program loc v1 v2 v3 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniform3f program loc v1 v2 v3)
          (withBoundProgram program $ glUniform3f loc v1 v2 v3)

mglProgramUniform4f :: GLuint -> GLint
                    -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
mglProgramUniform4f program loc v1 v2 v3 v4 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniform4f program loc v1 v2 v3 v4)
          (withBoundProgram program $ glUniform4f loc v1 v2 v3 v4)

mglProgramUniformMatrix4fv :: GLuint -> GLint
                           -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
mglProgramUniformMatrix4fv program loc count transpose m44 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniformMatrix4fv program loc count transpose m44)
          (withBoundProgram program $
              glUniformMatrix4fv loc count transpose m44)

mglProgramUniformMatrix3fv :: GLuint -> GLint
                           -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
mglProgramUniformMatrix3fv program loc count transpose m33 =
    whenExt has_GL_ARB_separate_shader_objects
          (glProgramUniformMatrix3fv program loc count transpose m33)
          (withBoundProgram program $
              glUniformMatrix3fv loc count transpose m33)

mglMapNamedBufferRange :: GLuint -> GLintptr
                       -> GLsizeiptr -> GLbitfield -> IO (Ptr ())
mglMapNamedBufferRange buffer offset length access =
    withBoundBuffer buffer $
        glMapBufferRange gl_ARRAY_BUFFER offset length access

mglUnmapNamedBuffer :: GLuint -> IO GLboolean
mglUnmapNamedBuffer buffer =
    withBoundBuffer buffer $ glUnmapBuffer gl_ARRAY_BUFFER

mglNamedCopyBufferSubData :: GLuint -> GLuint
                          -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()
mglNamedCopyBufferSubData src dst src_offset dst_offset num_bytes =
    withBoundElementBuffer src $
        withBoundBuffer dst $
            glCopyBufferSubData gl_ELEMENT_ARRAY_BUFFER
                                gl_ARRAY_BUFFER
                                src_offset
                                dst_offset
                                num_bytes

type TexStorage1DF = GLenum -> GLsizei -> GLenum -> GLsizei -> IO ()
type TexStorage2DF = GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
type TexStorage3DF = GLenum -> GLsizei -> GLenum
                  -> GLsizei -> GLsizei -> GLsizei -> IO ()
type InvalidateBufferDataF = GLuint -> IO ()

foreign import ccall unsafe "dynamic"
    glTexStorage1D_funptr :: FunPtr TexStorage1DF -> TexStorage1DF
foreign import ccall unsafe "dynamic"
    glTexStorage2D_funptr :: FunPtr TexStorage2DF -> TexStorage2DF
foreign import ccall unsafe "dynamic"
    glTexStorage3D_funptr :: FunPtr TexStorage3DF -> TexStorage3DF
foreign import ccall unsafe "dynamic"
    glInvalidateBufferData_funptr :: FunPtr InvalidateBufferDataF
                                  -> InvalidateBufferDataF

glTexStorage1D :: TexStorage1DF
glTexStorage1D = unsafePerformIO $
    glTexStorage1D_funptr <$> getProcAddress "glTexStorage1D"
{-# NOINLINE glTexStorage1D #-}

glTexStorage2D :: TexStorage2DF
glTexStorage2D = unsafePerformIO $
    glTexStorage2D_funptr <$> getProcAddress "glTexStorage2D"
{-# NOINLINE glTexStorage2D #-}

glTexStorage3D :: TexStorage3DF
glTexStorage3D = unsafePerformIO $
    glTexStorage3D_funptr <$> getProcAddress "glTexStorage3D"
{-# NOINLINE glTexStorage3D #-}

glInvalidateBufferData :: InvalidateBufferDataF
glInvalidateBufferData = unsafePerformIO $
    glInvalidateBufferData_funptr <$> getProcAddress "glInvalidateBufferData"
{-# NOINLINE glInvalidateBufferData_funptr #-}

-- GL_NVX_gpu_memory_info
gl_GPU_MEMORY_INFO_DEDICATED_VIDMEM :: GLenum
gl_GPU_MEMORY_INFO_DEDICATED_VIDMEM = 0x9047

gl_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM :: GLenum
gl_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM = 0x9049

-- GL_ATI_meminfo
gl_TEXTURE_FREE_MEMORY :: GLenum
gl_TEXTURE_FREE_MEMORY = 0x87FC

-- | Shortcut to `glGetIntegerv` when you query only one integer.
gi :: GLenum -> IO GLuint
gi x = alloca $ \get_ptr -> glGetIntegerv x (castPtr get_ptr) *>
                            peek get_ptr

