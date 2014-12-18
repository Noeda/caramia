-- | Module for using the raw OpenGL API.
--
-- This is a mixture from the OpenGLRaw package and some of our own stuff.
--
-- TODO: Some of this stuff should probably be in OpenGLRaw so we could add
-- stuff there instead.
--

{-# LANGUAGE ForeignFunctionInterface, NoImplicitPrelude #-}

module Graphics.Caramia.Internal.OpenGLCApi
    ( module Ex

    , gi
    , gf

    , withBoundVAO
    , withBoundBuffer
    , withBoundElementBuffer
    , withBoundPixelUnpackBuffer
    , withBoundProgram
    , withBoundDrawFramebuffer

    , setBoundProgram
    , setBoundElementBuffer

    -- Functions that I made up that I wish were in OpenGL.
    , mglDeleteBuffer
    , mglGenBuffer
    , mglDeleteVertexArray
    , mglGenVertexArray
    , mglDeleteFramebuffer
    , mglGenFramebuffer
    , mglDeleteQuery
    , mglGenQuery
    , mglNamedBufferData
    , mglNamedBufferStorage
    , mglVertexArrayVertexAttribOffsetAndEnable
    , mglVertexArrayVertexAttribIOffsetAndEnable
    , mglVertexArrayVertexAttribDivisor
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

import Graphics.Caramia.Prelude

import Graphics.Caramia.Internal.FlextGL as Ex
import Foreign.Ptr
import Foreign.C.Types
import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Marshal.Utils
import Control.Monad.IO.Class
import Control.Monad.Catch

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

whenExt :: IO Bool -> IO a -> IO a -> IO a
whenExt test action other_action = do
    x <- test
    if x then action else other_action
{-# INLINE whenExt #-}

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

mglGenQuery :: IO GLuint
mglGenQuery = alloca $ \x_ptr -> glGenQueries 1 x_ptr *> peek x_ptr

mglDeleteQuery :: GLuint -> IO ()
mglDeleteQuery x = with x $ \x_ptr -> glDeleteQueries 1 x_ptr

withBoundDrawFramebuffer :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundDrawFramebuffer x action = do
    old <- gi gl_DRAW_FRAMEBUFFER_BINDING
    finally (glBindFramebuffer gl_DRAW_FRAMEBUFFER x >> action)
            (glBindFramebuffer gl_DRAW_FRAMEBUFFER old)

withBoundProgram :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundProgram program action = do
    old <-
        liftIO $ alloca $ \x_ptr -> glGetIntegerv gl_CURRENT_PROGRAM x_ptr >> peek x_ptr
    finally (glUseProgram program >> action)
            (glUseProgram $ fromIntegral old)

setBoundProgram :: MonadIO m => GLuint -> m ()
setBoundProgram = glUseProgram

withBoundBuffer :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundBuffer buf action = do
    old <-
        liftIO $ alloca $ \x_ptr -> glGetIntegerv gl_ARRAY_BUFFER_BINDING x_ptr >>
                                    peek x_ptr
    finally (glBindBuffer gl_ARRAY_BUFFER buf >> action)
            (glBindBuffer gl_ARRAY_BUFFER $ fromIntegral old)

setBoundElementBuffer :: GLuint -> IO ()
setBoundElementBuffer =
    glBindBuffer gl_ELEMENT_ARRAY_BUFFER

withBoundElementBuffer :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundElementBuffer buf action = do
    old <-
        liftIO $ alloca $ \x_ptr -> glGetIntegerv gl_ELEMENT_ARRAY_BUFFER_BINDING x_ptr >>
                                    peek x_ptr
    finally (glBindBuffer gl_ELEMENT_ARRAY_BUFFER buf >> action)
            (glBindBuffer gl_ELEMENT_ARRAY_BUFFER $ fromIntegral old)

withBoundPixelUnpackBuffer :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundPixelUnpackBuffer buf action = do
    old <-
        liftIO $ alloca $ \x_ptr -> glGetIntegerv gl_PIXEL_UNPACK_BUFFER_BINDING x_ptr >>
                                    peek x_ptr
    finally (glBindBuffer gl_PIXEL_UNPACK_BUFFER buf >> action)
            (glBindBuffer gl_PIXEL_UNPACK_BUFFER $ fromIntegral old)

withBoundVAO :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundVAO vao action = do
    old <-
        liftIO $ alloca $ \x_ptr -> glGetIntegerv gl_VERTEX_ARRAY_BINDING x_ptr >>
                                    peek x_ptr
    finally (glBindVertexArray vao >> action)
            (glBindVertexArray $ fromIntegral old)

mglVertexArrayVertexAttribDivisor ::
    GLuint -> GLuint -> GLuint -> IO ()
mglVertexArrayVertexAttribDivisor vaobj index divisor = mask_ $
    withBoundVAO vaobj $
        glVertexAttribDivisor index divisor

mglVertexArrayVertexAttribOffsetAndEnable ::
        GLuint -> GLuint -> GLuint -> GLint -> GLenum
     -> GLboolean -> GLsizei -> CPtrdiff -> IO ()
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

mglNamedBufferStorage :: GLuint
                      -> GLsizeiptr
                      -> Ptr ()
                      -> GLbitfield
                      -> IO ()
mglNamedBufferStorage buf size ptr flags =
    whenExt has_GL_EXT_direct_state_access
        (glNamedBufferStorageEXT buf size ptr flags)
        (withBoundBuffer buf $
         glBufferStorage gl_ARRAY_BUFFER size ptr flags)

mglNamedBufferData :: GLuint
                   -> GLsizeiptr
                   -> Ptr ()
                   -> GLenum
                   -> IO ()
mglNamedBufferData buf size ptr usage =
    whenExt has_GL_EXT_direct_state_access
        (glNamedBufferDataEXT buf size ptr usage)
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

-- | Shortcut to `glGetIntegerv` when you query only one integer.
gi :: MonadIO m => GLenum -> m GLuint
gi x = liftIO $ alloca $ \get_ptr -> glGetIntegerv x (castPtr get_ptr) *>
                            peek get_ptr

gf :: MonadIO m => GLenum -> m GLfloat
gf x = liftIO $ alloca $ \get_ptr -> glGetFloatv x (castPtr get_ptr) *> peek get_ptr

